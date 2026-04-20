CREATE TABLE [dbo].[aptrx_mst]
(
    [site_ref] SiteType NOT NULL,
    [vend_num] VendNumType NOT NULL,
    [voucher] VoucherType NOT NULL,
    [type] AptrxTypeType NULL,
    [dist_date] DateType NOT NULL,
    [po_num] PoNumType NULL,
    [inv_num] VendInvNumType NULL,
    [inv_date] DateType NOT NULL,
    [inv_amt] AmountType NULL,
    [non_disc_amt] AmountType NULL,
    [due_days] DueDaysType NULL,
    [due_date] DateType NULL,
    [disc_days] DiscDaysType NOT NULL,
    [disc_date] DateType NULL,
    [disc_pct] ApDiscType NOT NULL,
    [disc_amt] AmountType NULL,
    [ap_acct] AcctType NULL,
    [ref] ReferenceType NULL,
    [post_from_po] ListYesNoType NULL,
    [txt] DescriptionType NULL,
    [prox_day] ProxDayType NULL,
    [exch_rate] ExchRateType NULL,
    [includes_tax] ListYesNoType NULL,
    [purch_amt] AmountType NULL,
    [misc_charges] AmountType NULL,
    [sales_tax] AmountType NULL,
    [sales_tax_2] AmountType NULL,
    [freight] AmountType NULL,
    [duty_amt] AmountType NULL,
    [brokerage_amt] AmountType NULL,
    [tax_code1] TaxCodeType NULL,
    [tax_code2] TaxCodeType NULL,
    [ap_acct_unit1] UnitCode1Type NULL,
    [ap_acct_unit2] UnitCode2Type NULL,
    [ap_acct_unit3] UnitCode3Type NULL,
    [ap_acct_unit4] UnitCode4Type NULL,
    [auth_status] AuthStatusType NULL,
    [fixed_rate] ListYesNoType NULL,
    [prox_code] ProxCodeType NULL,
    [grn_num] GrnNumType NULL,
    [NoteExistsFlag] FlagNyType NOT NULL,
    [RecordDate] CurrentDateType NOT NULL,
    [RowPointer] RowPointerType NOT NULL,
    [pre_register] PreRegisterType NULL,
    [authorizer] UsernameType NULL,
    [CreatedBy] UsernameType NOT NULL,
    [UpdatedBy] UsernameType NOT NULL,
    [CreateDate] CurrentDateType NOT NULL,
    [InWorkflow] FlagNyType NOT NULL,
    [insurance_amt] AmountType NULL,
    [loc_frt_amt] AmountType NULL,
    [include_tax_in_cost] ListYesNoType NULL,
    [tax_date] DateType NULL,
    [builder_po_orig_site] SiteType NULL,
    [builder_po_num] BuilderPoNumType NULL,
    [builder_voucher_orig_site] SiteType NULL,
    [builder_voucher] BuilderVoucherType NULL,
    [auto_vouchered] ListYesNoType NOT NULL,
    [cancellation] ListYesNoType NOT NULL,
    [fiscal_rpt_system_type] FiscalReportingSystemTypeType NULL,
    [curr_code] CurrCodeType NOT NULL,
    [bg_posting_stat] BGPostingStatType NOT NULL,
    [PL_vendor_category] CategoryType NULL,
    [PL_sad_voucher] VoucherType NULL,
    [PL_manual_vat_voucher] VoucherType NULL,
    [PL_long_inv_num] LongVendInvNumType NULL,
    [PL_vendor_inv_receipt_date] DateType NULL,
    [PL_multicurrency_invoice] ListYesNoType NOT NULL,
    [PL_related_document] VoucherType NULL,
    [PL_international_bank_account] InternationalBankAccountType NULL,
    [FR_item_tax_code1] TaxCodeType NULL,
    [FR_item_tax_code2] TaxCodeType NULL,
    [ZITbooktype] ZITvattypetype NOT NULL,
    [ZITcor_per] ListYesNoType NULL,
    [ZITenas_amt] AmountType NULL,
    [ZITenas_dom] AmountType NOT NULL,
    [ZITenas_override] ListYesNoType NOT NULL,
    [ZITenas_pct] ZITPctExtType NULL,
    [ZITenas_period] ZITVatPeriodType NOT NULL,
    [ZITenas_year] ZITYearType NOT NULL,
    [ZITLoIDate] DateType NULL,
    [ZITLoINumber] ZITProgrType NULL,
    [ZITmonth_pla] ZITsmallint NULL,
    [ZITope_coll] ZITDescr80Type NULL,
    [ZITpa_contxml] ZITProgrType NULL,
    [ZITpa_ftelet] ZITEInvoiceTypeType NOT NULL,
    [ZITpay_hold] ListYesNoType NOT NULL,
    [ZITpay_hold_date] DateType NULL,
    [ZITpay_hold_reason] ReasonCodeType NULL,
    [ZITpay_hold_user] UserCodeType NULL,
    [ZITpr_amt] AmountType NULL,
    [ZITpr_tax] AmountType NULL,
    [ZITreg_date] DateType NULL,
    [ZITreg_num] ZITregnumtype NULL,
    [ZITSDI_DataOperaz] DateType NULL,
    [ZITSDI_docTypeRC] ZITSDIdocTypeCodeType NULL,
    [ZITSDI_NaturaRC] ZITTrascoType NULL,
    [ZITSettlDeadlnReached] ListYesNoType NOT NULL,
    [ZITsub_ledger_date] DateType NULL,
    [ZITsub_ledger_nr] ZITSubsidiaryLedgerNrType NULL,
    [ZITvat_only] ListYesNoType NOT NULL,
    [ZITvat_only_amt] AmountType NULL,
    [ZITvat_period] ZITVatPeriodType NULL,
    [ZITvat_printed] ListYesNoType NOT NULL,
    [ZITvat_suf] ZITvatsufftype NULL,
    [ZITvat_year] ZITYearType NULL,
    [ZITVIMNumber] ZITVIMNumberType NULL,
    [ZITvouch_seq] VouchSeqType NULL,
    [ZITwhh_basis_amt] AmountType NULL,
    [ZITwhh_basis_dom] AmountType NOT NULL,
    [ZITwhh_comm_nt_amt] AmountType NULL,
    [ZITwhh_comm_nt_dom] AmountType NOT NULL,
    [ZITwhh_expenses_amt] AmountType NULL,
    [ZITwhh_expenses_dom] AmountType NOT NULL,
    [ZITwhh_not_taxable_amt] AmountType NULL,
    [ZITwhh_not_taxable_dom] AmountType NOT NULL,
    [ZITwhh_override] ListYesNoType NULL,
    [ZITwhh_pct] ZITPctType NULL,
    [ZITwhh_taxable] ZITPctType NULL,
    [ZITwhh_unconv_amt] AmountType NULL,
    [ZITwhh_unconv_dom] AmountType NOT NULL,
    [ZITwithhold_amt] AmountType NULL,
    [ZITwithhold_dom] AmountType NULL,
    [ZITyear_pla] FiscalYearType NULL,
    [PL_ksef_indicator] PLKSeFIndicatorType NULL,
    [PL_ksef_id] PLKSeFIdType NULL,
    CONSTRAINT [IX_aptrx_mst_RowPointer] UNIQUE NONCLUSTERED ([RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme],
    CONSTRAINT [PK_aptrx_mst] PRIMARY KEY CLUSTERED ([vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme]
) ON [SitePScheme]
GO

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_site_ref] DEFAULT (rtrim(CONVERT([nvarchar](8),context_info(),(0)))) FOR [site_ref];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_voucher] DEFAULT ((0)) FOR [voucher];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_type] DEFAULT (N'V') FOR [type];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_inv_amt] DEFAULT ((0)) FOR [inv_amt];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_non_disc_amt] DEFAULT ((0)) FOR [non_disc_amt];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_due_days] DEFAULT ((0)) FOR [due_days];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_disc_days] DEFAULT ((0)) FOR [disc_days];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_disc_pct] DEFAULT ((0)) FOR [disc_pct];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_disc_amt] DEFAULT ((0)) FOR [disc_amt];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_post_from_po] DEFAULT ((0)) FOR [post_from_po];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_prox_day] DEFAULT ((0)) FOR [prox_day];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_exch_rate] DEFAULT ((1.0)) FOR [exch_rate];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_includes_tax] DEFAULT ((0)) FOR [includes_tax];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_purch_amt] DEFAULT ((0)) FOR [purch_amt];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_misc_charges] DEFAULT ((0)) FOR [misc_charges];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_sales_tax] DEFAULT ((0)) FOR [sales_tax];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_sales_tax_2] DEFAULT ((0)) FOR [sales_tax_2];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_freight] DEFAULT ((0)) FOR [freight];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_duty_amt] DEFAULT ((0)) FOR [duty_amt];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_brokerage_amt] DEFAULT ((0)) FOR [brokerage_amt];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_auth_status] DEFAULT (N'M') FOR [auth_status];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_fixed_rate] DEFAULT ((0)) FOR [fixed_rate];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_prox_code] DEFAULT ((99)) FOR [prox_code];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_NoteExistsFlag] DEFAULT ((0)) FOR [NoteExistsFlag];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_RecordDate] DEFAULT (getdate()) FOR [RecordDate];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_RowPointer] DEFAULT (newid()) FOR [RowPointer];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_CreatedBy] DEFAULT (suser_sname()) FOR [CreatedBy];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_UpdatedBy] DEFAULT (suser_sname()) FOR [UpdatedBy];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_CreateDate] DEFAULT (getdate()) FOR [CreateDate];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_InWorkflow] DEFAULT ((0)) FOR [InWorkflow];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_insurance_amt] DEFAULT ((0)) FOR [insurance_amt];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_loc_frt_amt] DEFAULT ((0)) FOR [loc_frt_amt];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_include_tax_in_cost] DEFAULT ((0)) FOR [include_tax_in_cost];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_auto_vouchered] DEFAULT ((0)) FOR [auto_vouchered];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_cancellation] DEFAULT ((0)) FOR [cancellation];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_bg_posting_stat] DEFAULT (N'A') FOR [bg_posting_stat];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_PL_multicurrency_invoice] DEFAULT ((0)) FOR [PL_multicurrency_invoice];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_ZITbooktype] DEFAULT ((2)) FOR [ZITbooktype];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_ZITenas_dom] DEFAULT ((0)) FOR [ZITenas_dom];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_ZITenas_override] DEFAULT ((0)) FOR [ZITenas_override];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_ZITenas_period] DEFAULT ((0)) FOR [ZITenas_period];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_ZITenas_year] DEFAULT ((0)) FOR [ZITenas_year];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_ZITpa_ftelet] DEFAULT ((0)) FOR [ZITpa_ftelet];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_ZITpay_hold] DEFAULT ((0)) FOR [ZITpay_hold];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_ZITSettlDeadlnReached] DEFAULT ((0)) FOR [ZITSettlDeadlnReached];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_ZITvat_only] DEFAULT ((0)) FOR [ZITvat_only];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_ZITvat_printed] DEFAULT ((0)) FOR [ZITvat_printed];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_ZITwhh_basis_dom] DEFAULT ((0)) FOR [ZITwhh_basis_dom];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_ZITwhh_comm_nt_dom] DEFAULT ((0)) FOR [ZITwhh_comm_nt_dom];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_ZITwhh_expenses_dom] DEFAULT ((0)) FOR [ZITwhh_expenses_dom];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_ZITwhh_not_taxable_amt] DEFAULT ((0)) FOR [ZITwhh_not_taxable_amt];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_ZITwhh_not_taxable_dom] DEFAULT ((0)) FOR [ZITwhh_not_taxable_dom];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_ZITwhh_unconv_dom] DEFAULT ((0)) FOR [ZITwhh_unconv_dom];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [DF_aptrx_mst_ZITwithhold_dom] DEFAULT ((0)) FOR [ZITwithhold_dom];

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_auth_status] CHECK ([auth_status]=N'F' OR ([auth_status]=N'A' OR [auth_status]=N'M'));

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_auto_vouchered] CHECK ([auto_vouchered]=(1) OR [auto_vouchered]=(0));

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_bg_posting_stat] CHECK ([bg_posting_stat]=N'E' OR [bg_posting_stat]=N'H' OR [bg_posting_stat]=N'A');

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_cancellation] CHECK ([cancellation]=(1) OR [cancellation]=(0));

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_exch_rate] CHECK ([exch_rate]>(0));

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_fixed_rate] CHECK ([fixed_rate]=(0) OR [fixed_rate]=(1));

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_include_tax_in_cost] CHECK ([include_tax_in_cost]=(0) OR [include_tax_in_cost]=(1));

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_includes_tax] CHECK ([includes_tax]=(0) OR [includes_tax]=(1));

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_PL_ksef_indicator] CHECK ([PL_ksef_indicator]=N'DI' OR [PL_ksef_indicator]=N'BFK' OR [PL_ksef_indicator]=N'KSeF' OR [PL_ksef_indicator]=N'OFF');

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_PL_multicurrency_invoice] CHECK ([PL_multicurrency_invoice]=(0) OR [PL_multicurrency_invoice]=(1));

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_post_from_po] CHECK ([post_from_po]=(0) OR [post_from_po]=(1));

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_type] CHECK ([type]=N'V' OR [type]=N'A');

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_ZITbooktype] CHECK ([ZITbooktype]=(2));

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_ZITenas_override] CHECK ([ZITenas_override]=(0) OR [ZITenas_override]=(1));

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_ZITenas_period] CHECK ([ZITenas_period]>=(0) AND [ZITenas_period]<=(12));

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_ZITenas_year] CHECK ([ZITenas_year]>=(0));

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_ZITSettlDeadlnReached] CHECK ([ZITSettlDeadlnReached]=(0) OR [ZITSettlDeadlnReached]=(1));

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_ZITvat_only] CHECK ([ZITvat_only]=(0) OR [ZITvat_only]=(1));

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_ZITvat_period] CHECK ([ZITvat_period]>=(0) AND [ZITvat_period]<=(12));

ALTER TABLE [dbo].[aptrx_mst] ADD CONSTRAINT [CK_aptrx_mst_ZITvat_printed] CHECK ([ZITvat_printed]=(0) OR [ZITvat_printed]=(1));

CREATE NONCLUSTERED INDEX [IX_aptrx_mst_authorizer] ON [dbo].[aptrx_mst] ([authorizer] ASC, [authorizer] ASC, [authorizer] ASC, [authorizer] ASC, [authorizer] ASC, [authorizer] ASC, [authorizer] ASC, [authorizer] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme];

CREATE NONCLUSTERED INDEX [IX_aptrx_mst_po_num] ON [dbo].[aptrx_mst] ([po_num] ASC, [po_num] ASC, [po_num] ASC, [po_num] ASC, [po_num] ASC, [po_num] ASC, [po_num] ASC, [po_num] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme];