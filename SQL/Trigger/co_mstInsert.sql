CREATE OR ALTER TRIGGER [co_mstInsert]
ON [co_mst]
INSTEAD OF INSERT
AS
   DECLARE @TRIGGER_ROW_COUNT int
   SET @TRIGGER_ROW_COUNT = @@ROWCOUNT
   IF @TRIGGER_ROW_COUNT = 0 RETURN
   
   SET NOCOUNT ON

   DECLARE @SkipBase ListYesNoType
   SET @SkipBase = dbo.SkipBaseTrigger()

   DECLARE @Today DateType
   IF @SkipBase = 0
      SET @Today = dbo.GetCurrentSiteDate()

   DECLARE @UserName LongListType
   IF @SkipBase = 0
      SET @UserName = dbo.UserNameSp()

   DECLARE @Severity INT = 0
   DECLARE @Infobar InfobarType
   DECLARE @SavedState LongListType
   
   DECLARE
      @co_num CoNumType
      , @type [CoTypeType]

   DECLARE
      @RowPointer RowPointerType
      , @DefaultPrefix CoNumType, @DefaultPrefix2 CoNumType
      , @Prefix CoNumType
      , @KeyLength INT
   
   DECLARE @NewKeys TABLE (
      -- Use unique names to simplify INSERT statement:
      New_RowPointer uniqueidentifier,
      New_co_num [nvarchar](10),
      PRIMARY KEY (New_RowPointer)
      )
   
   SELECT @DefaultPrefix = co_prefix, @DefaultPrefix2 = est_prefix
   FROM coparms WITH (READUNCOMMITTED)
   
   SET @KeyLength = TYPEPROPERTY(N'CoNumType', N'Precision')
   
   IF @TRIGGER_ROW_COUNT > 1
   BEGIN
      DECLARE AlphaKey CURSOR LOCAL STATIC READ_ONLY FOR
      SELECT co_num, RowPointer
         , type
      FROM inserted bt WITH (READUNCOMMITTED)
   
      OPEN AlphaKey
   END
   
   WHILE @Severity = 0
   BEGIN
      IF @TRIGGER_ROW_COUNT > 1
      BEGIN
         FETCH AlphaKey INTO @co_num, @RowPointer
            , @type
   
         IF @@FETCH_STATUS = -1
            BREAK
      END
      ELSE
      SELECT @co_num = co_num, @RowPointer = RowPointer
         , @type = type
      FROM inserted bt WITH (READUNCOMMITTED)
   
      -- If co_num is To Be Determined, or is a <Prefix> followed by question-mark,
      IF @co_num = N'TBD' OR @co_num LIKE N'%?'
      -- Or is all zeroes:
      OR dbo.IsInteger(@co_num) = 1 AND REPLACE(REPLACE(@co_num, ' ', ''), '0', '') = '' 
      BEGIN
         -- Generate (& register, if appropriate) a new key:
         SET @Prefix = ISNULL(dbo.StripPrefix(@co_num), CASE WHEN (@type = N'E') THEN @DefaultPrefix2 ELSE @Defaultprefix END)
      
         IF @type = N'E'
            EXEC @Severity = dbo.NextEstSp
               @Context = NULL
               , @Prefix = @Prefix
               , @KeyLength = @KeyLength
               , @Key = @co_num OUTPUT
               , @Infobar = @Infobar OUTPUT
         ELSE
            EXEC @Severity = dbo.NextCoSp
               @Context = NULL
               , @Prefix = @Prefix
               , @KeyLength = @KeyLength
               , @Key = @co_num OUTPUT
               , @Infobar = @Infobar OUTPUT
         IF @Severity <> 0
            BREAK
      
         -- Remember it for insertion into the appropriate row below:
         INSERT INTO @NewKeys VALUES (@RowPointer, @co_num)
      
         IF @TRIGGER_ROW_COUNT = 1 BREAK
      
         CONTINUE
      END
      
      -- Register a new key:
      EXEC @Severity = dbo.InsertNewKeySp
           @TableName  = N'co'
         , @ColumnName = N'co_num'
         , @Key        = @co_num
         , @Infobar    = @Infobar OUTPUT
         
      IF @Severity <> 0 OR @TRIGGER_ROW_COUNT = 1
         BREAK
   END
   
   IF @TRIGGER_ROW_COUNT > 1
   BEGIN
      CLOSE AlphaKey
      DEALLOCATE AlphaKey
   END
   
   IF @Severity <> 0
   BEGIN
      EXEC dbo.RaiseErrorSp @Infobar, @Severity, 1
   
      EXEC @Severity = dbo.RollbackTransactionSp @Severity
   
      IF @Severity <> 0
      BEGIN
         ROLLBACK TRANSACTION
         RETURN
      END
   END
   
   INSERT [co_mst] (
      [site_ref]
      , [type]
      , [co_num]
      , [est_num]
      , [cust_num]
      , [cust_seq]
      , [contact]
      , [phone]
      , [cust_po]
      , [order_date]
      , [taken_by]
      , [terms_code]
      , [ship_code]
      , [price]
      , [weight]
      , [qty_packages]
      , [freight]
      , [misc_charges]
      , [prepaid_amt]
      , [sales_tax]
      , [stat]
      , [cost]
      , [close_date]
      , [freight_t]
      , [m_charges_t]
      , [prepaid_t]
      , [sales_tax_t]
      , [slsman]
      , [eff_date]
      , [exp_date]
      , [whse]
      , [sales_tax_2]
      , [sales_tax_t2]
      , [edi_order]
      , [trans_nat]
      , [process_ind]
      , [delterm]
      , [use_exch_rate]
      , [tax_code1]
      , [tax_code2]
      , [frt_tax_code1]
      , [frt_tax_code2]
      , [msc_tax_code1]
      , [msc_tax_code2]
      , [discount_type]
      , [disc_amount]
      , [disc]
      , [pricecode]
      , [ship_partial]
      , [ship_early]
      , [matl_cost_t]
      , [lbr_cost_t]
      , [fovhd_cost_t]
      , [vovhd_cost_t]
      , [out_cost_t]
      , [end_user_type]
      , [exch_rate]
      , [fixed_rate]
      , [orig_site]
      , [lcr_num]
      , [edi_type]
      , [invoiced]
      , [credit_hold]
      , [credit_hold_date]
      , [credit_hold_reason]
      , [credit_hold_user]
      , [sync_reqd]
      , [projected_date]
      , [order_source]
      , [convert_type]
      , [aps_pull_up]
      , [consolidate]
      , [inv_freq]
      , [summarize]
      , [NoteExistsFlag]
      , [RecordDate]
      , [RowPointer]
      , [einvoice]
      , [charfld1]
      , [charfld2]
      , [charfld3]
      , [datefld]
      , [decifld1]
      , [decifld2]
      , [decifld3]
      , [logifld]
      , [ack_stat]
      , [config_id]
      , [CreatedBy]
      , [UpdatedBy]
      , [CreateDate]
      , [InWorkflow]
      , [include_tax_in_price]
      , [trans_nat_2]
      , [apply_to_inv_num]
      , [export_type]
      , [external_confirmation_ref]
      , [is_external]
      , [prospect_id]
      , [opp_id]
      , [lead_id]
      , [days_shipped_before_due_date_tolerance]
      , [days_shipped_after_due_date_tolerance]
      , [shipped_over_ordered_qty_tolerance]
      , [shipped_under_ordered_qty_tolerance]
      , [consignment]
      , [priority]
      , [demanding_site]
      , [demanding_site_po_num]
      , [shipment_approval_required]
      , [portal_order]
      , [ship_hold]
      , [payment_method]
      , [ship_method]
      , [surcharge]
      , [surcharge_t]
      , [config_doc_id]
      , [curr_code]
      , [external_whse_line_changed]
      , [order_bal]
      , [withholding_tax_amount]
      , [withholding_tax_amount_t]
      , [external_freight]
      , [carrier_service_type]
      , [bill_to_name]
      , [bill_to_city]
      , [bill_to_state]
      , [bill_to_zip]
      , [bill_to_county]
      , [bill_to_country]
      , [bill_to_addr##1]
      , [bill_to_addr##2]
      , [bill_to_addr##3]
      , [bill_to_addr##4]
      , [ship_to_name]
      , [ship_to_city]
      , [ship_to_state]
      , [ship_to_zip]
      , [ship_to_county]
      , [ship_to_country]
      , [ship_to_addr##1]
      , [ship_to_addr##2]
      , [ship_to_addr##3]
      , [ship_to_addr##4]
      , [PL_document_type]
      , [MX_electronic_inv_usage]
      , [MX_payment_type]
      , [opp_stage]
      , [opp_won_reason]
      , [opp_lost_reason]
      , [ZIT_co_ext]
      , [ZITCIG]
      , [ZITCollectionID]
      , [ZITCommPercent]
      , [ZITCUP]
      , [ZITcust_num_ext]
      , [ZITcust_seq_ext]
      , [ZITdest_loc]
      , [ZITdest_site]
      , [ZITdest_whse]
      , [ZITest_num_ext]
      , [ZITfob_code]
      , [ZITinv_cust_seq]
      , [ZITInvoicingAddress]
      , [ZITordcat]
      , [VDG_SM_NewColumn]
      )
   SELECT
      bt.[site_ref]
      , bt.[type]
      , ISNULL(New_co_num, bt.co_num)
      , bt.[est_num]
      , bt.[cust_num]
      , bt.[cust_seq]
      , bt.[contact]
      , bt.[phone]
      , bt.[cust_po]
      , bt.[order_date]
      , bt.[taken_by]
      , bt.[terms_code]
      , bt.[ship_code]
      , bt.[price]
      , bt.[weight]
      , bt.[qty_packages]
      , bt.[freight]
      , bt.[misc_charges]
      , bt.[prepaid_amt]
      , bt.[sales_tax]
      , bt.[stat]
      , bt.[cost]
      , bt.[close_date]
      , bt.[freight_t]
      , bt.[m_charges_t]
      , bt.[prepaid_t]
      , bt.[sales_tax_t]
      , bt.[slsman]
      , bt.[eff_date]
      , bt.[exp_date]
      , bt.[whse]
      , bt.[sales_tax_2]
      , bt.[sales_tax_t2]
      , bt.[edi_order]
      , bt.[trans_nat]
      , bt.[process_ind]
      , bt.[delterm]
      , bt.[use_exch_rate]
      , bt.[tax_code1]
      , bt.[tax_code2]
      , bt.[frt_tax_code1]
      , bt.[frt_tax_code2]
      , bt.[msc_tax_code1]
      , bt.[msc_tax_code2]
      , bt.[discount_type]
      , bt.[disc_amount]
      , bt.[disc]
      , bt.[pricecode]
      , bt.[ship_partial]
      , bt.[ship_early]
      , bt.[matl_cost_t]
      , bt.[lbr_cost_t]
      , bt.[fovhd_cost_t]
      , bt.[vovhd_cost_t]
      , bt.[out_cost_t]
      , bt.[end_user_type]
      , bt.[exch_rate]
      , bt.[fixed_rate]
      , bt.[orig_site]
      , bt.[lcr_num]
      , bt.[edi_type]
      , bt.[invoiced]
      , bt.[credit_hold]
      , bt.[credit_hold_date]
      , bt.[credit_hold_reason]
      , bt.[credit_hold_user]
      , bt.[sync_reqd]
      , bt.[projected_date]
      , bt.[order_source]
      , bt.[convert_type]
      , bt.[aps_pull_up]
      , bt.[consolidate]
      , bt.[inv_freq]
      , bt.[summarize]
      , bt.[NoteExistsFlag]
      , CASE WHEN @SkipBase = 1 THEN bt.RecordDate ELSE @Today END
      , bt.[RowPointer]
      , bt.[einvoice]
      , bt.[charfld1]
      , bt.[charfld2]
      , bt.[charfld3]
      , bt.[datefld]
      , bt.[decifld1]
      , bt.[decifld2]
      , bt.[decifld3]
      , bt.[logifld]
      , bt.[ack_stat]
      , bt.[config_id]
      , CASE WHEN @SkipBase = 1 THEN bt.CreatedBy ELSE @Username END
      , CASE WHEN @SkipBase = 1 THEN bt.UpdatedBy ELSE @Username END
      , CASE WHEN @SkipBase = 1 THEN bt.CreateDate ELSE @Today END
      , bt.[InWorkflow]
      , bt.[include_tax_in_price]
      , bt.[trans_nat_2]
      , bt.[apply_to_inv_num]
      , bt.[export_type]
      , bt.[external_confirmation_ref]
      , bt.[is_external]
      , bt.[prospect_id]
      , bt.[opp_id]
      , bt.[lead_id]
      , bt.[days_shipped_before_due_date_tolerance]
      , bt.[days_shipped_after_due_date_tolerance]
      , bt.[shipped_over_ordered_qty_tolerance]
      , bt.[shipped_under_ordered_qty_tolerance]
      , bt.[consignment]
      , bt.[priority]
      , bt.[demanding_site]
      , bt.[demanding_site_po_num]
      , bt.[shipment_approval_required]
      , bt.[portal_order]
      , bt.[ship_hold]
      , bt.[payment_method]
      , bt.[ship_method]
      , bt.[surcharge]
      , bt.[surcharge_t]
      , bt.[config_doc_id]
      , bt.[curr_code]
      , bt.[external_whse_line_changed]
      , bt.[order_bal]
      , bt.[withholding_tax_amount]
      , bt.[withholding_tax_amount_t]
      , bt.[external_freight]
      , bt.[carrier_service_type]
      , bt.[bill_to_name]
      , bt.[bill_to_city]
      , bt.[bill_to_state]
      , bt.[bill_to_zip]
      , bt.[bill_to_county]
      , bt.[bill_to_country]
      , bt.[bill_to_addr##1]
      , bt.[bill_to_addr##2]
      , bt.[bill_to_addr##3]
      , bt.[bill_to_addr##4]
      , bt.[ship_to_name]
      , bt.[ship_to_city]
      , bt.[ship_to_state]
      , bt.[ship_to_zip]
      , bt.[ship_to_county]
      , bt.[ship_to_country]
      , bt.[ship_to_addr##1]
      , bt.[ship_to_addr##2]
      , bt.[ship_to_addr##3]
      , bt.[ship_to_addr##4]
      , bt.[PL_document_type]
      , bt.[MX_electronic_inv_usage]
      , bt.[MX_payment_type]
      , bt.[opp_stage]
      , bt.[opp_won_reason]
      , bt.[opp_lost_reason]
      , bt.[ZIT_co_ext]
      , bt.[ZITCIG]
      , bt.[ZITCollectionID]
      , bt.[ZITCommPercent]
      , bt.[ZITCUP]
      , bt.[ZITcust_num_ext]
      , bt.[ZITcust_seq_ext]
      , bt.[ZITdest_loc]
      , bt.[ZITdest_site]
      , bt.[ZITdest_whse]
      , bt.[ZITest_num_ext]
      , bt.[ZITfob_code]
      , bt.[ZITinv_cust_seq]
      , bt.[ZITInvoicingAddress]
      , bt.[ZITordcat]
      , bt.[VDG_SM_NewColumn]
   FROM inserted bt WITH (READUNCOMMITTED)
   LEFT OUTER JOIN @NewKeys nk
      ON nk.New_RowPointer = bt.RowPointer

   -- The AFTER INSERT Triggers fire now, in the following order:
   --   co_mstIup First (if exists; manually maintained)
   --   co_mstInsAudit and/or any custom triggers (if exist; generated by AuditLoggingGenCodeSp and/or manually maintained)
   --   co_mstIupReplicate Last (if exists; generated by ReplicationTriggerIupCode2Sp)

   RETURN