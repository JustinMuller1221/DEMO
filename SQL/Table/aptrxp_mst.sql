CREATE TABLE [dbo].[aptrxp_mst]
(
    [site_ref] SiteType NOT NULL,
    [vend_num] VendNumType NOT NULL,
    [voucher] VoucherType NOT NULL,
    [active] ListYesNoType NULL,
    [type] AptrxpTypeType NULL,
    [dist_date] DateType NULL,
    [po_num] PoNumType NULL,
    [inv_num] VendInvNumType NULL,
    [inv_date] DateType NULL,
    [inv_amt] AmountType NULL,
    [non_disc_amt] AmountType NULL,
    [due_days] DueDaysType NULL,
    [due_date] DateType NULL,
    [disc_days] DiscDaysType NULL,
    [disc_date] DateType NULL,
    [disc_pct] ApDiscType NULL,
    [disc_amt] AmountType NULL,
    [ap_acct] AcctType NULL,
    [amt_paid] AmountType NULL,
    [amt_disc] AmountType NULL,
    [hold_flag] ListYesNoType NULL,
    [check_num] ApCheckNumType NULL,
    [vouch_seq] VouchSeqType NOT NULL,
    [exch_rate] ExchRateType NULL,
    [purch_amt] AmountType NULL,
    [misc_charges] AmountType NULL,
    [sales_tax] AmountType NULL,
    [sales_tax_2] AmountType NULL,
    [freight] AmountType NULL,
    [prox_day] ProxDayType NOT NULL,
    [duty_amt] AmountType NULL,
    [brokerage_amt] AmountType NULL,
    [tax_code1] TaxCodeType NULL,
    [tax_code2] TaxCodeType NULL,
    [ap_acct_unit1] UnitCode1Type NULL,
    [ap_acct_unit2] UnitCode2Type NULL,
    [ap_acct_unit3] UnitCode3Type NULL,
    [ap_acct_unit4] UnitCode4Type NULL,
    [fixed_rate] ListYesNoType NULL,
    [ref] ReferenceType NULL,
    [txt] DescriptionType NULL,
    [grn_num] GrnNumType NULL,
    [NoteExistsFlag] FlagNyType NOT NULL,
    [RecordDate] CurrentDateType NOT NULL,
    [RowPointer] RowPointerType NOT NULL,
    [CreatedBy] UsernameType NOT NULL,
    [UpdatedBy] UsernameType NOT NULL,
    [CreateDate] CurrentDateType NOT NULL,
    [InWorkflow] FlagNyType NOT NULL,
    [insurance_amt] AmountType NULL,
    [loc_frt_amt] AmountType NULL,
    [tax_date] DateType NULL,
    [builder_po_orig_site] SiteType NULL,
    [builder_po_num] BuilderPoNumType NULL,
    [builder_voucher_orig_site] SiteType NULL,
    [builder_voucher] BuilderVoucherType NULL,
    [misc1099_reportable] ListYesNoType NOT NULL,
    [check_date] DateType NULL,
    [factor] ListYesNoType NOT NULL,
    [TH_check_date] DateType NULL,
    [TH_dom_check_amt] AmountType NULL,
    [TH_bank_code] BankCodeType NULL,
    [TH_pay_type] AppmtPayTypeType NULL,
    [TH_check_seq] ApCheckSeqType NULL,
    [TH_for_check_amt] AmountType NULL,
    [TH_due_date] DateType NULL,
    [TH_message] InfobarType NULL,
    [TH_dom_amt_paid] AmountType NULL,
    [TH_apply_vend_num] VendNumType NULL,
    [TH_dom_amt_disc] AmountType NULL,
    [TH_disc_acct] AcctType NULL,
    [TH_disc_acct_unit1] UnitCode1Type NULL,
    [TH_disc_acct_unit2] UnitCode2Type NULL,
    [TH_disc_acct_unit3] UnitCode3Type NULL,
    [TH_disc_acct_unit4] UnitCode4Type NULL,
    [TH_for_amt_paid] AmountType NULL,
    [TH_for_amt_disc] AmountType NULL,
    [TH_vend_inv_num] VendInvNumType NULL,
    [TH_vend_inv_date] DateType NULL,
    [TH_txt] TH_TextType NULL,
    [TH_vendor_name1] NameType NULL,
    [TH_vendor_name2] LongNameType NULL,
    [TH_tax_reg_num1] TaxRegNumType NULL,
    [TH_addr##1] AddressType NULL,
    [TH_addr##2] AddressType NULL,
    [TH_addr##3] AddressType NULL,
    [TH_wht_sequence] TH_WHTSequenceType NULL,
    [TH_wht_type] TH_WHTTypeType NULL,
    [TH_wht_cancel] ListYesNoType NOT NULL,
    [cancellation] ListYesNoType NOT NULL,
    [fiscal_rpt_system_type] FiscalReportingSystemTypeType NULL,
    [curr_code] CurrCodeType NOT NULL,
    [TH_addr##4] AddressType NULL,
    [TH_zip_code] PostalCodeType NULL,
    [TH_wht_report_printed] ListYesNoType NOT NULL,
    [TH_payer_type] TH_PayerTypeType NULL,
    [TH_payer_type_other] TH_PayerTypeOtherType NULL,
    [TH_petty_cash_number] PettyCashNumberType NULL,
    [TH_issue_date] DateType NULL,
    [TH_payment_number] PaymentNumberType NULL,
    [remit_to_vendor_name] NameType NULL,
    [TH_wht_cert_no] TH_WHTCertNoType NULL,
    [TH_wht_condition] TH_WHTConditionType NULL,
    [PL_txt2] LongDescType NULL,
    [PL_vendor_category] CategoryType NULL,
    [PL_sad_voucher] VoucherType NULL,
    [PL_manual_vat_voucher] VoucherType NULL,
    [PL_long_inv_num] LongVendInvNumType NULL,
    [PL_vendor_inv_receipt_date] DateType NULL,
    [PL_multicurrency_invoice] ListYesNoType NOT NULL,
    [PL_related_document] VoucherType NULL,
    [PL_document_list] LongDescType NULL,
    [ZITauth_status] AuthStatusType NULL,
    [ZITauthorizer] NameType NULL,
    [ZITbooktype] ZITvattypetype NOT NULL,
    [ZITcor_per] ListYesNoType NULL,
    [ZITenas_amt] AmountType NULL,
    [ZITenas_dom] AmountType NOT NULL,
    [ZITenas_override] ListYesNoType NOT NULL,
    [ZITenas_pct] ZITPctExtType NULL,
    [ZITenas_period] ZITVatPeriodType NOT NULL,
    [ZITenas_year] ZITYearType NOT NULL,
    [ZITinclude_tax_in_cost] ListYesNoType NOT NULL,
    [ZITincludes_tax] ListYesNoType NULL,
    [ZITLoIDate] DateType NULL,
    [ZITLoINumber] ZITProgrType NULL,
    [ZITMigration] ListYesNoType NOT NULL,
    [ZITmonth_pla] ZITsmallint NULL,
    [ZITope_coll] ZITDescr80Type NULL,
    [ZITpa_contxml] ZITProgrType NULL,
    [ZITpa_ftelet] ZITEInvoiceTypeType NOT NULL,
    [ZITpay_hold] ListYesNoType NOT NULL,
    [ZITpay_hold_date] DateType NULL,
    [ZITpay_hold_reason] ReasonCodeType NULL,
    [ZITpay_hold_user] UserCodeType NULL,
    [ZITpost_from_po] ListYesNoType NULL,
    [ZITpre_register] PreRegisterType NULL,
    [ZITprox_code] ProxCodeType NULL,
    [ZITreg_date] DateType NULL,
    [ZITreg_num] ZITregnumtype NULL,
    [ZITSDI_DataOperaz] DateType NULL,
    [ZITSDI_docTypeRC] ZITSDIdocTypeCodeType NULL,
    [ZITSDI_NaturaRC] ZITTrascoType NULL,
    [ZITSettlDeadlnReached] ListYesNoType NOT NULL,
    [ZITsub_ledger_date] DateType NULL,
    [ZITsub_ledger_nr] ZITSubsidiaryLedgerNrType NULL,
    [ZITvat_period] ZITVatPeriodType NULL,
    [ZITvat_printed] ListYesNoType NOT NULL,
    [ZITvat_suf] ZITvatsufftype NULL,
    [ZITvat_year] ZITYearType NULL,
    [ZITVIMNumber] ZITVIMNumberType NULL,
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
    [gold1099_reportable] ListYesNoType NOT NULL,
    [PL_ksef_indicator] PLKSeFIndicatorType NULL,
    [PL_ksef_id] PLKSeFIdType NULL,
    [VDG_SM_AnotherTest] FlagNyType NOT NULL,
    CONSTRAINT [IX_aptrxp_mst] UNIQUE CLUSTERED ([vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [vouch_seq] ASC, [vouch_seq] ASC, [vouch_seq] ASC, [vouch_seq] ASC, [vouch_seq] ASC, [vouch_seq] ASC, [vouch_seq] ASC, [vouch_seq] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme],
    CONSTRAINT [IX_aptrxp_mst_active] UNIQUE NONCLUSTERED ([active] ASC, [active] ASC, [active] ASC, [active] ASC, [active] ASC, [active] ASC, [active] ASC, [active] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [vouch_seq] ASC, [vouch_seq] ASC, [vouch_seq] ASC, [vouch_seq] ASC, [vouch_seq] ASC, [vouch_seq] ASC, [vouch_seq] ASC, [vouch_seq] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme],
    CONSTRAINT [PK_aptrxp_mst] PRIMARY KEY NONCLUSTERED ([RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme]
) ON [SitePScheme]
GO

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_site_ref] DEFAULT (rtrim(CONVERT([nvarchar](8),context_info(),(0)))) FOR [site_ref];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_voucher] DEFAULT ((0)) FOR [voucher];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_active] DEFAULT ((1)) FOR [active];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_inv_amt] DEFAULT ((0)) FOR [inv_amt];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_non_disc_amt] DEFAULT ((0)) FOR [non_disc_amt];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_due_days] DEFAULT ((0)) FOR [due_days];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_disc_days] DEFAULT ((0)) FOR [disc_days];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_disc_pct] DEFAULT ((0)) FOR [disc_pct];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_disc_amt] DEFAULT ((0)) FOR [disc_amt];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_amt_paid] DEFAULT ((0)) FOR [amt_paid];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_amt_disc] DEFAULT ((0)) FOR [amt_disc];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_hold_flag] DEFAULT ((0)) FOR [hold_flag];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_check_num] DEFAULT ((0)) FOR [check_num];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_vouch_seq] DEFAULT ((0)) FOR [vouch_seq];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_exch_rate] DEFAULT ((1.0)) FOR [exch_rate];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_purch_amt] DEFAULT ((0)) FOR [purch_amt];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_misc_charges] DEFAULT ((0)) FOR [misc_charges];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_sales_tax] DEFAULT ((0)) FOR [sales_tax];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_sales_tax_2] DEFAULT ((0)) FOR [sales_tax_2];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_freight] DEFAULT ((0)) FOR [freight];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_prox_day] DEFAULT ((0)) FOR [prox_day];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_duty_amt] DEFAULT ((0)) FOR [duty_amt];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_brokerage_amt] DEFAULT ((0)) FOR [brokerage_amt];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_fixed_rate] DEFAULT ((0)) FOR [fixed_rate];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_NoteExistsFlag] DEFAULT ((0)) FOR [NoteExistsFlag];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_RecordDate] DEFAULT (getdate()) FOR [RecordDate];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_RowPointer] DEFAULT (newid()) FOR [RowPointer];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_CreatedBy] DEFAULT (suser_sname()) FOR [CreatedBy];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_UpdatedBy] DEFAULT (suser_sname()) FOR [UpdatedBy];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_CreateDate] DEFAULT (getdate()) FOR [CreateDate];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_InWorkflow] DEFAULT ((0)) FOR [InWorkflow];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_insurance_amt] DEFAULT ((0)) FOR [insurance_amt];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_loc_frt_amt] DEFAULT ((0)) FOR [loc_frt_amt];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_misc1099_reportable] DEFAULT ((0)) FOR [misc1099_reportable];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_factor] DEFAULT ((0)) FOR [factor];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_TH_wht_cancel] DEFAULT ((0)) FOR [TH_wht_cancel];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_cancellation] DEFAULT ((0)) FOR [cancellation];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_TH_wht_report_printed] DEFAULT ((0)) FOR [TH_wht_report_printed];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_PL_multicurrency_invoice] DEFAULT ((0)) FOR [PL_multicurrency_invoice];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITauth_status] DEFAULT (N'M') FOR [ZITauth_status];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITbooktype] DEFAULT ((2)) FOR [ZITbooktype];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITenas_amt] DEFAULT ((0)) FOR [ZITenas_amt];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITenas_dom] DEFAULT ((0)) FOR [ZITenas_dom];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITenas_override] DEFAULT ((0)) FOR [ZITenas_override];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITenas_pct] DEFAULT ((0)) FOR [ZITenas_pct];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITenas_period] DEFAULT ((0)) FOR [ZITenas_period];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITenas_year] DEFAULT ((0)) FOR [ZITenas_year];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITinclude_tax_in_cost] DEFAULT ((0)) FOR [ZITinclude_tax_in_cost];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITincludes_tax] DEFAULT ((0)) FOR [ZITincludes_tax];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITMigration] DEFAULT ((0)) FOR [ZITMigration];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITpa_ftelet] DEFAULT ((0)) FOR [ZITpa_ftelet];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITpay_hold] DEFAULT ((0)) FOR [ZITpay_hold];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITpost_from_po] DEFAULT ((0)) FOR [ZITpost_from_po];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITprox_code] DEFAULT ((99)) FOR [ZITprox_code];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITSettlDeadlnReached] DEFAULT ((0)) FOR [ZITSettlDeadlnReached];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITvat_period] DEFAULT ((0)) FOR [ZITvat_period];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITvat_printed] DEFAULT ((0)) FOR [ZITvat_printed];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITvat_year] DEFAULT ((0)) FOR [ZITvat_year];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITwhh_basis_amt] DEFAULT ((0)) FOR [ZITwhh_basis_amt];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITwhh_basis_dom] DEFAULT ((0)) FOR [ZITwhh_basis_dom];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITwhh_comm_nt_amt] DEFAULT ((0)) FOR [ZITwhh_comm_nt_amt];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITwhh_comm_nt_dom] DEFAULT ((0)) FOR [ZITwhh_comm_nt_dom];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITwhh_expenses_amt] DEFAULT ((0)) FOR [ZITwhh_expenses_amt];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITwhh_expenses_dom] DEFAULT ((0)) FOR [ZITwhh_expenses_dom];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITwhh_not_taxable_amt] DEFAULT ((0)) FOR [ZITwhh_not_taxable_amt];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITwhh_not_taxable_dom] DEFAULT ((0)) FOR [ZITwhh_not_taxable_dom];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITwhh_override] DEFAULT ((0)) FOR [ZITwhh_override];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITwhh_pct] DEFAULT ((0)) FOR [ZITwhh_pct];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITwhh_taxable] DEFAULT ((0)) FOR [ZITwhh_taxable];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITwhh_unconv_amt] DEFAULT ((0)) FOR [ZITwhh_unconv_amt];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITwhh_unconv_dom] DEFAULT ((0)) FOR [ZITwhh_unconv_dom];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITwithhold_amt] DEFAULT ((0)) FOR [ZITwithhold_amt];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_ZITwithhold_dom] DEFAULT ((0)) FOR [ZITwithhold_dom];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_gold1099_reportable] DEFAULT ((0)) FOR [gold1099_reportable];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [DF_aptrxp_mst_VDG_SM_AnotherTest] DEFAULT ((0)) FOR [VDG_SM_AnotherTest];

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_active] CHECK ([active]=(0) OR [active]=(1));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_cancellation] CHECK ([cancellation]=(1) OR [cancellation]=(0));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_exch_rate] CHECK ([exch_rate]>(0));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_factor] CHECK ([factor]=(0) OR [factor]=(1));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_fixed_rate] CHECK ([fixed_rate]=(0) OR [fixed_rate]=(1));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_gold1099_reportable] CHECK ([gold1099_reportable]=(1) OR [gold1099_reportable]=(0));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_hold_flag] CHECK ([hold_flag]=(0) OR [hold_flag]=(1));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_misc1099_reportable] CHECK ([misc1099_reportable]=(1) OR [misc1099_reportable]=(0));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_PL_ksef_indicator] CHECK ([PL_ksef_indicator]=N'DI' OR [PL_ksef_indicator]=N'BFK' OR [PL_ksef_indicator]=N'KSeF' OR [PL_ksef_indicator]=N'OFF');

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_PL_multicurrency_invoice] CHECK ([PL_multicurrency_invoice]=(0) OR [PL_multicurrency_invoice]=(1));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_TH_payer_type] CHECK ([TH_payer_type]=(1) OR [TH_payer_type]=(2) OR [TH_payer_type]=(3) OR [TH_payer_type]=(4));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_TH_wht_cancel] CHECK ([TH_wht_cancel]=(1) OR [TH_wht_cancel]=(0));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_TH_wht_report_printed] CHECK ([TH_wht_report_printed]=(0) OR [TH_wht_report_printed]=(1));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_type] CHECK ([type]=N'V' OR ([type]=N'P' OR ([type]=N'O' OR ([type]=N'N' OR [type]=N'A'))));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_ZITbooktype] CHECK ([ZITbooktype]=(2));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_ZITenas_override] CHECK ([ZITenas_override]=(0) OR [ZITenas_override]=(1));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_ZITenas_period] CHECK ([ZITenas_period]>=(0) AND [ZITenas_period]<=(12));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_ZITenas_year] CHECK ([ZITenas_year]>=(0));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_ZITincludes_tax] CHECK ([ZITincludes_tax]=(0) OR [ZITincludes_tax]=(1));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_ZITpost_from_po] CHECK ([ZITpost_from_po]=(0) OR [ZITpost_from_po]=(1));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_ZITSettlDeadlnReached] CHECK ([ZITSettlDeadlnReached]=(0) OR [ZITSettlDeadlnReached]=(1));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_ZITvat_period] CHECK ([ZITvat_period]>=(0) AND [ZITvat_period]<=(12));

ALTER TABLE [dbo].[aptrxp_mst] ADD CONSTRAINT [CK_aptrxp_mst_ZITvat_printed] CHECK ([ZITvat_printed]=(0) OR [ZITvat_printed]=(1));

CREATE NONCLUSTERED INDEX [IX_aptrxp_mst_active_due] ON [dbo].[aptrxp_mst] ([active] ASC, [active] ASC, [active] ASC, [active] ASC, [active] ASC, [active] ASC, [active] ASC, [active] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [due_date] ASC, [due_date] ASC, [due_date] ASC, [due_date] ASC, [due_date] ASC, [due_date] ASC, [due_date] ASC, [due_date] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme];

CREATE NONCLUSTERED INDEX [IX_aptrxp_mst_check_num] ON [dbo].[aptrxp_mst] ([check_num] ASC, [check_num] ASC, [check_num] ASC, [check_num] ASC, [check_num] ASC, [check_num] ASC, [check_num] ASC, [check_num] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme];

CREATE NONCLUSTERED INDEX [IX_aptrxp_mst_grn_num] ON [dbo].[aptrxp_mst] ([grn_num] ASC, [grn_num] ASC, [grn_num] ASC, [grn_num] ASC, [grn_num] ASC, [grn_num] ASC, [grn_num] ASC, [grn_num] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme];

CREATE NONCLUSTERED INDEX [IX_aptrxp_mst_po_num] ON [dbo].[aptrxp_mst] ([po_num] ASC, [po_num] ASC, [po_num] ASC, [po_num] ASC, [po_num] ASC, [po_num] ASC, [po_num] ASC, [po_num] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme];

CREATE NONCLUSTERED INDEX [IX_aptrxp_mst_vend_due] ON [dbo].[aptrxp_mst] ([vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [due_date] ASC, [due_date] ASC, [due_date] ASC, [due_date] ASC, [due_date] ASC, [due_date] ASC, [due_date] ASC, [due_date] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme];

CREATE NONCLUSTERED INDEX [IX_aptrxp_mst_voucher] ON [dbo].[aptrxp_mst] ([voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme];
GO

/* $Header: /ApplicationDB/Triggers/aptrxp_mstDel.trg 20    12/06/12 9:40p Jmtao $ */

/*

***************************************************************
*                                                             *
*                           NOTICE                            *
*                                                             *
*   THIS SOFTWARE IS THE PROPERTY OF AND CONTAINS             *
*   CONFIDENTIAL INFORMATION OF INFOR AND/OR ITS AFFILIATES   *
*   OR SUBSIDIARIES AND SHALL NOT BE DISCLOSED WITHOUT PRIOR  *
*   WRITTEN PERMISSION. LICENSED CUSTOMERS MAY COPY AND       *
*   ADAPT THIS SOFTWARE FOR THEIR OWN USE IN ACCORDANCE WITH  *
*   THE TERMS OF THEIR SOFTWARE LICENSE AGREEMENT.            *
*   ALL OTHER RIGHTS RESERVED.                                *
*                                                             *
*   (c) COPYRIGHT 2010 INFOR.  ALL RIGHTS RESERVED.           *
*   THE WORD AND DESIGN MARKS SET FORTH HEREIN ARE            *
*   TRADEMARKS AND/OR REGISTERED TRADEMARKS OF INFOR          *
*   AND/OR ITS AFFILIATES AND SUBSIDIARIES. ALL RIGHTS        *
*   RESERVED.  ALL OTHER TRADEMARKS LISTED HEREIN ARE         *
*   THE PROPERTY OF THEIR RESPECTIVE OWNERS.                  *
*                                                             *
***************************************************************

*/

/* $Archive: /ApplicationDB/Triggers/aptrxp_mstDel.trg $
 *
 * SL8.04 20 RS4615 Jmtao Thu Dec 06 21:40:24 2012
 * RS4615(Multi - Add Site within a Site Functionality).
 *
 * SL8.03 19 139739 djohnson Mon Jul 11 16:14:14 2011
 * Issue #139739 - add a delete of DocumentObjectReference above the delete of ObjectNotes.
 *
 * SL8.03 18 133673 bbopp Fri Nov 19 10:12:09 2010
 * Update Status on PayableTransaction BOD
 * Issue 133673
 * Correct call to BOD to pass in action code.  Move setting of status to view.
 *
 * SL8.03 17 128485 flagatta Tue Sep 21 16:03:44 2010
 * Unapplied Cash needs changed to Prepaid
 * Changed UnappliedCash setting for PayableTransaction BOD to be Prepaid.  128485
 *
 * SL8.02 16 rs4588 Dahn Tue Mar 09 08:42:11 2010
 * rs4588 copyright header changes.
 *
 * SL8.01 15 rs3953 Dahn Tue Aug 26 09:42:37 2008
 * chaning copyright header(rs3953)
 *
 * SL8.01 14 rs3953 Dahn Mon Aug 18 14:07:50 2008
 * changing copyright information(RS3953)
 *
 * SL8.01 13 109321 hpurayil Thu Jun 05 12:31:06 2008
 * Payable Transaction issues
 * 109321-PayableTransaction - Removed TAB keys and BOD will generate only when Open Payments get deleted
 *
 * $NoKeywords: $
 */
CREATE TRIGGER dbo.aptrxp_mstDel
on aptrxp_mst
FOR DELETE
AS

IF @@ROWCOUNT = 0 RETURN

-- Skip trigger operations as required.
DECLARE @Site SiteType
SELECT @Site = prm.site
FROM parms AS prm
WHERE prm.parm_key = 0

IF dbo.SkipBaseTrigger() = 1
  IF dbo.SkipAllUpdate() = 1
    RETURN
  ELSE
    GOTO DELETE_ALL

DECLARE
  @Severity INT
, @Infobar InfobarType

SET @Severity = 0



/*============ PROCESSING SECTION ===========*/

/*
** Delete any notes attached to the deleted row(s).
** This code was not done in the cursor for performance reasons.
*/
if @Severity = 0
BEGIN
   -- Delete any document references
   DELETE DocumentObjectReference
   FROM deleted dd
   INNER JOIN DocumentObjectReference dor ON
     dor.TableRowPointer = dd.RowPointer
   WHERE dor.TableName = 'aptrxp'


   DELETE ObjectNotes
   FROM deleted dd
      , ObjectNotes obn
   WHERE obn.RefRowPointer = dd.RowPointer

   DELETE UserDefinedFields
   FROM deleted dd
   , UserDefinedFields udf
   WHERE udf.RowId = dd.RowPointer
END


IF @Severity <> 0
BEGIN
    EXEC RaiseErrorSp @Infobar, @Severity, 3
 
    EXEC @Severity = RollbackTransactionSp
       @Severity
 
    IF @Severity != 0
    BEGIN
       ROLLBACK TRANSACTION
       RETURN
    END
END

--PaybleTransactionBOD
-- Generate BOD when an open payment get deleted
DECLARE  
   @Type     AptrxTypeType
  ,@VendNum  VendNumType


DECLARE aptrxp_mstDelCrs CURSOR LOCAL STATIC
FOR SELECT
  dd.type
, dd.vend_num
FROM deleted AS dd
WHERE dd.type ='O'

OPEN aptrxp_mstDelCrs
   WHILE @Severity = 0
   BEGIN -- cursor loop
      FETCH aptrxp_mstDelCrs INTO
         @Type
       , @VendNum

      IF @@FETCH_STATUS != 0
         BREAK

Exec @Severity  = RemoteMethodForReplicationTargetsSP 
     @IdoName    = 'SP!'
    ,@MethodName = 'TriggerPayableTransactionSyncSp'
    ,@Infobar    = @Infobar Output
    ,@Parm1Value = @VendNum
    ,@Parm2Value = 0
    ,@Parm3Value = 'Replace'

      IF @Severity > 0
         BREAK

   END -- End of cursor loop

CLOSE aptrxp_mstDelCrs
DEALLOCATE aptrxp_mstDelCrs


IF @Severity <> 0
BEGIN
    EXEC RaiseErrorSp @Infobar, @Severity, 3
 
    EXEC @Severity = RollbackTransactionSp
       @Severity
 
    IF @Severity != 0
    BEGIN
       ROLLBACK TRANSACTION
       RETURN
    END
END
--End of PaybleTransactionBOD
 

--  Any record deleted must also be deleted for this site in the _All
-- table
DELETE_ALL:
DELETE aptrxp_all
FROM aptrxp_all
INNER JOIN deleted ON deleted.RowPointer = aptrxp_all.RowPointer
WHERE aptrxp_all.site_ref = @Site
GO
EXEC sp_settriggerorder @triggername=N'[dbo].[aptrxp_mstDel]', @order=N'First', @stmttype=N'DELETE'
GO

CREATE TRIGGER [aptrxp_mstInsert]
ON [aptrxp_mst]
INSTEAD OF INSERT
AS
   IF @@ROWCOUNT = 0 RETURN
   
   SET NOCOUNT ON

   DECLARE @SkipBase ListYesNoType
   SET @SkipBase = dbo.SkipBaseTrigger()

   DECLARE @Today DateType
   IF @SkipBase = 0
      SET @Today = dbo.GetCurrentSiteDate()

   DECLARE @UserName LongListType
   IF @SkipBase = 0
      SET @UserName = dbo.UserNameSp()

   INSERT [aptrxp_mst] (
      [site_ref]
      , [vend_num]
      , [voucher]
      , [active]
      , [type]
      , [dist_date]
      , [po_num]
      , [inv_num]
      , [inv_date]
      , [inv_amt]
      , [non_disc_amt]
      , [due_days]
      , [due_date]
      , [disc_days]
      , [disc_date]
      , [disc_pct]
      , [disc_amt]
      , [ap_acct]
      , [amt_paid]
      , [amt_disc]
      , [hold_flag]
      , [check_num]
      , [vouch_seq]
      , [exch_rate]
      , [purch_amt]
      , [misc_charges]
      , [sales_tax]
      , [sales_tax_2]
      , [freight]
      , [prox_day]
      , [duty_amt]
      , [brokerage_amt]
      , [tax_code1]
      , [tax_code2]
      , [ap_acct_unit1]
      , [ap_acct_unit2]
      , [ap_acct_unit3]
      , [ap_acct_unit4]
      , [fixed_rate]
      , [ref]
      , [txt]
      , [grn_num]
      , [NoteExistsFlag]
      , [RecordDate]
      , [RowPointer]
      , [CreatedBy]
      , [UpdatedBy]
      , [CreateDate]
      , [InWorkflow]
      , [insurance_amt]
      , [loc_frt_amt]
      , [tax_date]
      , [builder_po_orig_site]
      , [builder_po_num]
      , [builder_voucher_orig_site]
      , [builder_voucher]
      , [misc1099_reportable]
      , [check_date]
      , [factor]
      , [TH_check_date]
      , [TH_dom_check_amt]
      , [TH_bank_code]
      , [TH_pay_type]
      , [TH_check_seq]
      , [TH_for_check_amt]
      , [TH_due_date]
      , [TH_message]
      , [TH_dom_amt_paid]
      , [TH_apply_vend_num]
      , [TH_dom_amt_disc]
      , [TH_disc_acct]
      , [TH_disc_acct_unit1]
      , [TH_disc_acct_unit2]
      , [TH_disc_acct_unit3]
      , [TH_disc_acct_unit4]
      , [TH_for_amt_paid]
      , [TH_for_amt_disc]
      , [TH_vend_inv_num]
      , [TH_vend_inv_date]
      , [TH_txt]
      , [TH_vendor_name1]
      , [TH_vendor_name2]
      , [TH_tax_reg_num1]
      , [TH_addr##1]
      , [TH_addr##2]
      , [TH_addr##3]
      , [TH_wht_sequence]
      , [TH_wht_type]
      , [TH_wht_cancel]
      , [cancellation]
      , [fiscal_rpt_system_type]
      , [curr_code]
      , [TH_addr##4]
      , [TH_zip_code]
      , [TH_wht_report_printed]
      , [TH_payer_type]
      , [TH_payer_type_other]
      , [TH_petty_cash_number]
      , [TH_issue_date]
      , [TH_payment_number]
      , [remit_to_vendor_name]
      , [TH_wht_cert_no]
      , [TH_wht_condition]
      , [PL_txt2]
      , [PL_vendor_category]
      , [PL_sad_voucher]
      , [PL_manual_vat_voucher]
      , [PL_long_inv_num]
      , [PL_vendor_inv_receipt_date]
      , [PL_multicurrency_invoice]
      , [PL_related_document]
      , [PL_document_list]
      , [ZITauth_status]
      , [ZITauthorizer]
      , [ZITbooktype]
      , [ZITcor_per]
      , [ZITenas_amt]
      , [ZITenas_dom]
      , [ZITenas_override]
      , [ZITenas_pct]
      , [ZITenas_period]
      , [ZITenas_year]
      , [ZITinclude_tax_in_cost]
      , [ZITincludes_tax]
      , [ZITLoIDate]
      , [ZITLoINumber]
      , [ZITMigration]
      , [ZITmonth_pla]
      , [ZITope_coll]
      , [ZITpa_contxml]
      , [ZITpa_ftelet]
      , [ZITpay_hold]
      , [ZITpay_hold_date]
      , [ZITpay_hold_reason]
      , [ZITpay_hold_user]
      , [ZITpost_from_po]
      , [ZITpre_register]
      , [ZITprox_code]
      , [ZITreg_date]
      , [ZITreg_num]
      , [ZITSDI_DataOperaz]
      , [ZITSDI_docTypeRC]
      , [ZITSDI_NaturaRC]
      , [ZITSettlDeadlnReached]
      , [ZITsub_ledger_date]
      , [ZITsub_ledger_nr]
      , [ZITvat_period]
      , [ZITvat_printed]
      , [ZITvat_suf]
      , [ZITvat_year]
      , [ZITVIMNumber]
      , [ZITwhh_basis_amt]
      , [ZITwhh_basis_dom]
      , [ZITwhh_comm_nt_amt]
      , [ZITwhh_comm_nt_dom]
      , [ZITwhh_expenses_amt]
      , [ZITwhh_expenses_dom]
      , [ZITwhh_not_taxable_amt]
      , [ZITwhh_not_taxable_dom]
      , [ZITwhh_override]
      , [ZITwhh_pct]
      , [ZITwhh_taxable]
      , [ZITwhh_unconv_amt]
      , [ZITwhh_unconv_dom]
      , [ZITwithhold_amt]
      , [ZITwithhold_dom]
      , [ZITyear_pla]
      , [gold1099_reportable]
      , [PL_ksef_indicator]
      , [PL_ksef_id]
      , [VDG_SM_AnotherTest]
      )
   SELECT
      bt.[site_ref]
      , bt.[vend_num]
      , bt.[voucher]
      , bt.[active]
      , bt.[type]
      , bt.[dist_date]
      , bt.[po_num]
      , bt.[inv_num]
      , bt.[inv_date]
      , bt.[inv_amt]
      , bt.[non_disc_amt]
      , bt.[due_days]
      , bt.[due_date]
      , bt.[disc_days]
      , bt.[disc_date]
      , bt.[disc_pct]
      , bt.[disc_amt]
      , bt.[ap_acct]
      , bt.[amt_paid]
      , bt.[amt_disc]
      , bt.[hold_flag]
      , bt.[check_num]
      , bt.[vouch_seq]
      , bt.[exch_rate]
      , bt.[purch_amt]
      , bt.[misc_charges]
      , bt.[sales_tax]
      , bt.[sales_tax_2]
      , bt.[freight]
      , bt.[prox_day]
      , bt.[duty_amt]
      , bt.[brokerage_amt]
      , bt.[tax_code1]
      , bt.[tax_code2]
      , bt.[ap_acct_unit1]
      , bt.[ap_acct_unit2]
      , bt.[ap_acct_unit3]
      , bt.[ap_acct_unit4]
      , bt.[fixed_rate]
      , bt.[ref]
      , bt.[txt]
      , bt.[grn_num]
      , bt.[NoteExistsFlag]
      , CASE WHEN @SkipBase = 1 THEN bt.RecordDate ELSE @Today END
      , bt.[RowPointer]
      , CASE WHEN @SkipBase = 1 THEN bt.CreatedBy ELSE @Username END
      , CASE WHEN @SkipBase = 1 THEN bt.UpdatedBy ELSE @Username END
      , CASE WHEN @SkipBase = 1 THEN bt.CreateDate ELSE @Today END
      , bt.[InWorkflow]
      , bt.[insurance_amt]
      , bt.[loc_frt_amt]
      , bt.[tax_date]
      , bt.[builder_po_orig_site]
      , bt.[builder_po_num]
      , bt.[builder_voucher_orig_site]
      , bt.[builder_voucher]
      , bt.[misc1099_reportable]
      , bt.[check_date]
      , bt.[factor]
      , bt.[TH_check_date]
      , bt.[TH_dom_check_amt]
      , bt.[TH_bank_code]
      , bt.[TH_pay_type]
      , bt.[TH_check_seq]
      , bt.[TH_for_check_amt]
      , bt.[TH_due_date]
      , bt.[TH_message]
      , bt.[TH_dom_amt_paid]
      , bt.[TH_apply_vend_num]
      , bt.[TH_dom_amt_disc]
      , bt.[TH_disc_acct]
      , bt.[TH_disc_acct_unit1]
      , bt.[TH_disc_acct_unit2]
      , bt.[TH_disc_acct_unit3]
      , bt.[TH_disc_acct_unit4]
      , bt.[TH_for_amt_paid]
      , bt.[TH_for_amt_disc]
      , bt.[TH_vend_inv_num]
      , bt.[TH_vend_inv_date]
      , bt.[TH_txt]
      , bt.[TH_vendor_name1]
      , bt.[TH_vendor_name2]
      , bt.[TH_tax_reg_num1]
      , bt.[TH_addr##1]
      , bt.[TH_addr##2]
      , bt.[TH_addr##3]
      , bt.[TH_wht_sequence]
      , bt.[TH_wht_type]
      , bt.[TH_wht_cancel]
      , bt.[cancellation]
      , bt.[fiscal_rpt_system_type]
      , bt.[curr_code]
      , bt.[TH_addr##4]
      , bt.[TH_zip_code]
      , bt.[TH_wht_report_printed]
      , bt.[TH_payer_type]
      , bt.[TH_payer_type_other]
      , bt.[TH_petty_cash_number]
      , bt.[TH_issue_date]
      , bt.[TH_payment_number]
      , bt.[remit_to_vendor_name]
      , bt.[TH_wht_cert_no]
      , bt.[TH_wht_condition]
      , bt.[PL_txt2]
      , bt.[PL_vendor_category]
      , bt.[PL_sad_voucher]
      , bt.[PL_manual_vat_voucher]
      , bt.[PL_long_inv_num]
      , bt.[PL_vendor_inv_receipt_date]
      , bt.[PL_multicurrency_invoice]
      , bt.[PL_related_document]
      , bt.[PL_document_list]
      , bt.[ZITauth_status]
      , bt.[ZITauthorizer]
      , bt.[ZITbooktype]
      , bt.[ZITcor_per]
      , bt.[ZITenas_amt]
      , bt.[ZITenas_dom]
      , bt.[ZITenas_override]
      , bt.[ZITenas_pct]
      , bt.[ZITenas_period]
      , bt.[ZITenas_year]
      , bt.[ZITinclude_tax_in_cost]
      , bt.[ZITincludes_tax]
      , bt.[ZITLoIDate]
      , bt.[ZITLoINumber]
      , bt.[ZITMigration]
      , bt.[ZITmonth_pla]
      , bt.[ZITope_coll]
      , bt.[ZITpa_contxml]
      , bt.[ZITpa_ftelet]
      , bt.[ZITpay_hold]
      , bt.[ZITpay_hold_date]
      , bt.[ZITpay_hold_reason]
      , bt.[ZITpay_hold_user]
      , bt.[ZITpost_from_po]
      , bt.[ZITpre_register]
      , bt.[ZITprox_code]
      , bt.[ZITreg_date]
      , bt.[ZITreg_num]
      , bt.[ZITSDI_DataOperaz]
      , bt.[ZITSDI_docTypeRC]
      , bt.[ZITSDI_NaturaRC]
      , bt.[ZITSettlDeadlnReached]
      , bt.[ZITsub_ledger_date]
      , bt.[ZITsub_ledger_nr]
      , bt.[ZITvat_period]
      , bt.[ZITvat_printed]
      , bt.[ZITvat_suf]
      , bt.[ZITvat_year]
      , bt.[ZITVIMNumber]
      , bt.[ZITwhh_basis_amt]
      , bt.[ZITwhh_basis_dom]
      , bt.[ZITwhh_comm_nt_amt]
      , bt.[ZITwhh_comm_nt_dom]
      , bt.[ZITwhh_expenses_amt]
      , bt.[ZITwhh_expenses_dom]
      , bt.[ZITwhh_not_taxable_amt]
      , bt.[ZITwhh_not_taxable_dom]
      , bt.[ZITwhh_override]
      , bt.[ZITwhh_pct]
      , bt.[ZITwhh_taxable]
      , bt.[ZITwhh_unconv_amt]
      , bt.[ZITwhh_unconv_dom]
      , bt.[ZITwithhold_amt]
      , bt.[ZITwithhold_dom]
      , bt.[ZITyear_pla]
      , bt.[gold1099_reportable]
      , bt.[PL_ksef_indicator]
      , bt.[PL_ksef_id]
      , bt.[VDG_SM_AnotherTest]
   FROM inserted bt WITH (READUNCOMMITTED)

   -- The AFTER INSERT Triggers fire now, in the following order:
   --   aptrxp_mstIup First (if exists; manually maintained)
   --   aptrxp_mstInsAudit and/or any custom triggers (if exist; generated by AuditLoggingGenCodeSp and/or manually maintained)
   --   aptrxp_mstIupReplicate Last (if exists; generated by ReplicationTriggerIupCode2Sp)

   RETURN
GO

/* $Header: /ApplicationDB/Triggers/aptrxp_mstIup.trg 42    4/05/17 6:53p orodriguez $ */
/*
***************************************************************
*                                                             *
*                           NOTICE                            *
*                                                             *
*   THIS SOFTWARE IS THE PROPERTY OF AND CONTAINS             *
*   CONFIDENTIAL INFORMATION OF INFOR AND/OR ITS AFFILIATES   *
*   OR SUBSIDIARIES AND SHALL NOT BE DISCLOSED WITHOUT PRIOR  *
*   WRITTEN PERMISSION. LICENSED CUSTOMERS MAY COPY AND       *
*   ADAPT THIS SOFTWARE FOR THEIR OWN USE IN ACCORDANCE WITH  *
*   THE TERMS OF THEIR SOFTWARE LICENSE AGREEMENT.            *
*   ALL OTHER RIGHTS RESERVED.                                *
*                                                             *
*   (c) COPYRIGHT 2010 INFOR.  ALL RIGHTS RESERVED.           *
*   THE WORD AND DESIGN MARKS SET FORTH HEREIN ARE            *
*   TRADEMARKS AND/OR REGISTERED TRADEMARKS OF INFOR          *
*   AND/OR ITS AFFILIATES AND SUBSIDIARIES. ALL RIGHTS        *
*   RESERVED.  ALL OTHER TRADEMARKS LISTED HEREIN ARE         *
*   THE PROPERTY OF THEIR RESPECTIVE OWNERS.                  *
*                                                             *
***************************************************************
*/

/* $Archive: /ApplicationDB/Triggers/aptrxp_mstIup.trg $
 *
 * SL9.01 42 222280 orodriguez Wed Apr 05 18:53:19 2017
 * Remove System scheme name from TrackerBODs
 * Verify trigger points for PayableTracker
 *
 * SL9.01 41 208463 jzhou Mon May 09 02:38:33 2016
 * The artran.inv_date should be passed into dbo.GetExchRate as input parameter in CredChkSp.sp.
 * Issue 208463:
 * Add parameter for @InvoiceDate when call GetExchRate.
 *
 * SL9.01 40 211626 jzhou Sun May 08 23:23:40 2016
 * Unable to deactivate the posted transactions
 * Issue 211626:
 * Remove the parameter @PVendCurrCode for SP ApActiveSp.
 *
 * SL9.01 39 RS6770 Ehe Sun Feb 28 21:11:16 2016
 * RS6770 Add @UseBuyRate for input paremeters when use function GetExchRate().
 *
 * SL9.01 38 RS6770 Ehe Mon Feb 22 00:07:47 2016
 * RS6770 Remove vendor.curr_code from ApActiveSp call
 * If transaction currency is not vendor default currency, convert amount to the vendor default currency before adding to the 1099 fields.
 *
 * SL9.01 37 196811 orodriguez Wed Jul 22 09:32:29 2015
 * RS6448 Construction
 *
 * SL8.04 36 RS4615 Jmtao Thu Dec 06 21:40:24 2012
 * RS4615(Multi - Add Site within a Site Functionality).
 *
 * SL8.03 35 144330 jray Wed Oct 26 15:21:36 2011
 * "1099 Payments YTD" is showing wrong values for all vendors in the form "Vendors"
 * Issue 144330: Correct algorithm which updates vendor misc1099_ytd and misc1099_lst_yr columns.
 *
 * SL8.03 34 143619 Mewing Fri Oct 07 14:24:28 2011
 * A/P Posted Transactions Detail form, Vendor not update when 1099 Reportable changed.
 * 143619 - Update Vendor Buckets when changing 1099 payments
 *
 * SL8.03 33 137210 pgross Tue May 03 11:40:27 2011
 * Invoice number does not update in Voucher Register Report after changing Invoice number in AP Posted Transaction Detail
 * update information on the related voucher header
 *
 * SL8.03 32 133673 bbopp Fri Nov 19 10:12:06 2010
 * Update Status on PayableTransaction BOD
 * Issue 133673
 * Remove code that sets status.  Status will be determined in the view.
 *
 * SL8.03 31 128485 flagatta Tue Sep 21 16:03:39 2010
 * Unapplied Cash needs changed to Prepaid
 * Changed UnappliedCash setting for PayableTransaction BOD to be Prepaid.  128485
 *
 * SL8.02 30 rs4588 Dahn Tue Mar 09 08:42:12 2010
 * rs4588 copyright header changes.
 *
 * SL8.01 29 117241 hpurayil Wed Jan 28 12:07:33 2009
 * Payable Transaction BOD does not generate on Voucher Posting
 * 117241-Replaced with the previous good version of aptrxp_mstIup.trg and also added logic required for issue 116659 
 *
 * SL8.01 27 rs3953 Dahn Tue Aug 26 09:42:37 2008
 * chaning copyright header(rs3953)
 *
 * SL8.01 26 rs3953 Dahn Mon Aug 18 14:07:50 2008
 * changing copyright information(RS3953)
 *
 * SL8.01 25 109321 hpurayil Thu Jun 05 12:08:11 2008
 * Payable Transaction issues
 * 109321-Payable Transaction - Removed TAB keys
 *
 * SL8.01 24 109321 hpurayil Thu May 29 11:47:39 2008
 * Payable Transaction issues
 * 109321- Added Payable Transaction BOD for Open Payment
 *
 * $NoKeywords: $
 */
CREATE TRIGGER dbo.aptrxp_mstIup
on aptrxp_mst
FOR INSERT, UPDATE
AS

IF @@ROWCOUNT = 0 RETURN

IF TRIGGER_NESTLEVEL(OBJECT_ID('dbo.aptrxp_mstUpdatePenultimate')) > 0
   RETURN
SET NOCOUNT ON

-- Skip trigger operations as required.
IF dbo.SkipBaseTrigger() = 1
   RETURN

DECLARE 
    @Site SiteType = dbo.GetSiteContext()
   ,@InsertFlag TINYINT

SELECT
   @InsertFlag = CASE
   WHEN EXISTS ( SELECT 1 FROM deleted ) THEN 0
   ELSE 1 END

DECLARE
   @Severity INT
, @Infobar InfobarType
	
--ZITBegin
DECLARE
 @ZITIsAvailIT ListYesNoType = 0,
 @ZITType               AptrxpTypeType
, @ZITVatPeriod          ZITVatPeriodType
, @ZITVatYear            ZITYearType
, @ZITVatSuff            ZITvatsufftype

SET @ZITIsAvailIT = dbo.IsAddonAvailable('ItalyCountryPack')	
SET @Severity = 0
--ZIT END

-- Validation of the triggering UPDATE statement is now performed by the generated trigger aptrxpUpdatePenultimate.
	
/*======== CURSOR PROCESSING SECTION ========*/

DECLARE
  @RowPointer RowPointerType
, @OldActive ListYesNoType
, @NewActive ListYesNoType
, @NewVendNum VendNumType
, @NewVoucher VoucherType
, @NewSequence SequenceType
, @NewReportable ListYesNoType
, @OldReportable ListYesNoType
, @DistDate DateType
, @SkipApActSp ListYesNoType

declare @ParmsCurrCode CurrCodeType
, @AptrxpCurrCode CurrCodeType
, @CurrPlaces DecimalPlacesType
, @ApparmsInvDue ApAgeByType
, @TriggerPayableTrackerSyncSpEnabled ListYesNoType
, @TriggerPayableTransactionSyncSpEnabled ListYesNoType

set @TriggerPayableTrackerSyncSpEnabled = dbo.RepRuleExists(@Site, 'TriggerPayableTrackerSyncSp', 2)
set @TriggerPayableTransactionSyncSpEnabled = dbo.RepRuleExists(@Site, 'TriggerPayableTransactionSyncSp', 2)

EXEC @Severity = dbo.GetVariableSp 'ActivateDeactivatePostedTransactionsAP', '0', 1, @SkipApActSp OUTPUT, @Infobar OUTPUT
IF @SkipApActSp IS NULL
	SET @SkipApActSp = '0'

DECLARE aptrxp_mstIupCrs CURSOR LOCAL STATIC
FOR SELECT
  ii.active
, ii.vend_num
, ii.voucher
, ii.curr_code
, currency.places
  --ZIT Begin
, ii.RowPointer
, ii.type
, ii.ZITvat_period
, ii.ZITvat_year
, ii.ZITvat_suf
  --ZIT End
FROM inserted ii
   LEFT OUTER JOIN deleted AS dd ON
      dd.RowPointer = ii.RowPointer
   inner join vendor with (readuncommitted) on
      vendor.vend_num = ii.vend_num
   inner join currency with (readuncommitted) on
      currency.curr_code = ii.curr_code
where ii.active != dd.active

if update(active) and @InsertFlag = 0
and @SkipApActSp = 0
begin
   select @ParmsCurrCode = currparms.curr_code from currparms with (readuncommitted)
   select @ApparmsInvDue = apparms.inv_due from apparms with (readuncommitted)

   OPEN aptrxp_mstIupCrs

   WHILE @Severity = 0
   BEGIN -- cursor loop
      FETCH aptrxp_mstIupCrs INTO
        @NewActive
      , @NewVendNum
      , @NewVoucher
      , @AptrxpCurrCode
      , @CurrPlaces
   --ZIT Begin
,  @RowPointer
   ,@ZITType
   ,@ZITVatPeriod
   ,@ZITVatYear
   ,@ZITVatSuff
   --ZIT End

      IF @@FETCH_STATUS != 0
         BREAK

         exec @Severity = dbo.ApActiveSp
           @PVendNum       = @NewVendNum
         , @PVoucher       = @NewVoucher
         , @PParmsCurrCode = @ParmsCurrCode
         , @PCurrPlaces    = @CurrPlaces
         , @PApParmsInvDue = @ApparmsInvDue
         , @PNonApOption   = 'no'
         , @PNewValueFlag  = @NewActive
         , @PRetrieveMsgs  = 1
         , @Infobar        = @Infobar OUTPUT

         if @Severity > 0
            break
         set @Infobar = null
    --ZIT BEGIN
	  IF @ZITIsAvailIT = 1 
	  BEGIN
		  IF @ZITType = 'V' OR @ZITType = 'A'
		  BEGIN

			IF ISNULL(@ZITVatSuff,'') = ''
			BEGIN

			  SET @Infobar = NULL

			  EXEC @Severity = dbo.MsgAppSp @Infobar OUTPUT, 'E=NoCompare'
					  , 'aptrxp.ZITvatsuf'
					  , @ZITVatSuff

			  BREAK

			END


			IF @ZITVatPeriod = 0
			BEGIN

			  SET @Infobar = NULL
			  EXEC @Severity = dbo.MsgAppSp @Infobar OUTPUT, 'E=NoCompare'
					  , '@aptrxp.ZITvat_period'
					  , @ZITVatPeriod

			  BREAK
          


			END

			IF @ZITVatYear = 0
			BEGIN

			  SET @Infobar = NULL
			  EXEC @Severity = dbo.MsgAppSp @Infobar OUTPUT, 'E=NoCompare'
					  , '@aptrxp.ZITvat_year'
					  , @ZITVatYear

			  BREAK
          

			END


		  END
	  END 
         --ZIT END         
   END -- End of cursor loop

   CLOSE aptrxp_mstIupCrs
   DEALLOCATE aptrxp_mstIupCrs
end

IF @Severity != 0
BEGIN
   EXEC dbo.RaiseErrorSp @Infobar, @Severity, 1

   EXEC @Severity = dbo.RollbackTransactionSp
      @Severity

   IF @Severity != 0
   BEGIN
      ROLLBACK TRANSACTION
      RETURN
   END
END

DECLARE
    @Type        AptrxTypeType
   ,@PaidAmt     AmountType
   ,@BalAmt      AmountType
   ,@VoucherAmt  AmountType
   ,@HoldFlag    ListYesNoType
   ,@OldHoldFlag ListYesNoType
   ,@ActionExpression NVARCHAR(60)

SELECT @ActionExpression = 
    CASE @InsertFlag 
      WHEN 1 THEN 'Add'
      ELSE 'Replace'
    END --Sync BOD

if update(inv_num) and @InsertFlag = 0
   update vch_hdr
   set inv_num = inserted.inv_num
   from inserted
      inner join vch_hdr on
         vch_hdr.voucher = inserted.voucher
         and vch_hdr.vend_num = inserted.vend_num

if update(inv_date) and @InsertFlag = 0
   update vch_hdr
   set inv_date = inserted.inv_date
   from inserted
      inner join vch_hdr on
         vch_hdr.voucher = inserted.voucher
         and vch_hdr.vend_num = inserted.vend_num

IF (UPDATE(misc1099_reportable) AND @InsertFlag = 0) 
   UPDATE vendor
      SET misc1099_ytd =
            CASE YEAR(GETDATE()) - YEAR(ii.dist_date)
               WHEN 0 THEN
                  CASE  ii.misc1099_reportable
                     WHEN 1
                        THEN vendor.misc1099_ytd +  (ii.amt_paid * 
						  			 (SELECT TOP 1 
                                        ExchRate =          
                                          CASE WHEN TRateD = 1 THEN TRate 
                                               WHEN TRateD = 0 AND NOT TRate = 0 THEN 1/TRate
                                          END                                       
			                          FROM [dbo].[2CurrCnvt] 
                                     (
                                        ii.curr_code --From 
                                      , 0, 0
	                                  , ii.inv_date --date
	                                  , default, default, default, default, default
	                                  , vendor.curr_code --To
                                      , default, default 
                                      , 1 --Amount
                                      , default, default, default, default, default, default, default, default, default, default, default, default, default, default 
                                      )
                              ) 
						  )
                     ELSE
                        vendor.misc1099_ytd - (ii.amt_paid * 
						  			 (SELECT TOP 1 
                                        ExchRate =          
                                          CASE WHEN TRateD = 1 THEN TRate 
                                               WHEN TRateD = 0 AND NOT TRate = 0 THEN 1/TRate
                                          END
                                       FROM [dbo].[2CurrCnvt] 
                                     (
                                        ii.curr_code --From 
                                      , 0, 0
	                                  , ii.inv_date --date
	                                  , default, default, default, default, default
	                                  , vendor.curr_code --To
                                      , default, default 
                                      , 1 --Amount
                                      , default, default, default, default, default, default, default, default, default, default, default, default, default, default 
                                      )
                              ) 
						)
                  END
               ELSE
                  vendor.misc1099_ytd
            END
        , misc1099_lst_yr =
            CASE (YEAR(GETDATE()) - YEAR(ii.dist_date))
               WHEN 1 THEN
                  CASE ii.misc1099_reportable
                     WHEN 1
                        THEN vendor.misc1099_lst_yr + (ii.amt_paid * 
												  			 (SELECT TOP 1 
                                        ExchRate =          
                                          CASE WHEN TRateD = 1 THEN TRate 
                                               WHEN TRateD = 0 AND NOT TRate = 0 THEN 1/TRate
                                          END
                                       FROM [dbo].[2CurrCnvt] 
                                     (
                                        ii.curr_code --From 
                                      , 0, 0
	                                  , ii.inv_date --date
	                                  , default, default, default, default, default
	                                  , vendor.curr_code --To
                                      , default, default 
                                      , 1 --Amount
                                      , default, default, default, default, default, default, default, default, default, default, default, default, default, default 
                                      )
                              ) 
                        )
                     ELSE
                        vendor.misc1099_lst_yr - (ii.amt_paid * 
						  						  			 (SELECT TOP 1 
                                        ExchRate =          
                                          CASE WHEN TRateD = 1 THEN TRate 
                                               WHEN TRateD = 0 AND NOT TRate = 0 THEN 1/TRate
                                          END
                                       FROM [dbo].[2CurrCnvt] 
                                     (
                                        ii.curr_code --From 
                                      , 0, 0
	                                  , ii.inv_date --date
	                                  , default, default, default, default, default
	                                  , vendor.curr_code --To
                                      , default, default 
                                      , 1 --Amount
                                      , default, default, default, default, default, default, default, default, default, default, default, default, default, default 
                                      )
                              ) 
                        )
                     END
               ELSE
                  vendor.misc1099_lst_yr
            END
      FROM inserted ii
         LEFT OUTER JOIN deleted AS dd ON
            dd.RowPointer = ii.RowPointer
         INNER JOIN vendor ON
              vendor.vend_num = ii.vend_num
      WHERE ii.type IN (N'N', N'O', N'P')
        AND ii.misc1099_reportable != dd.misc1099_reportable

IF (UPDATE(gold1099_reportable) AND @InsertFlag = 0) 
   UPDATE vendor
      SET gold1099_ytd =
            CASE YEAR(GETDATE()) - YEAR(ii.dist_date)
               WHEN 0 THEN
                  CASE  ii.gold1099_reportable
                     WHEN 1
                        THEN vendor.gold1099_ytd +  (ii.amt_paid * 
                                     (SELECT TOP 1 
                                        ExchRate =          
                                          CASE WHEN TRateD = 1 THEN TRate 
                                               WHEN TRateD = 0 AND NOT TRate = 0 THEN 1/TRate
                                          END                                       
                                      FROM [dbo].[2CurrCnvt] 
                                     (
                                        ii.curr_code --From 
                                      , 0, 0
                                      , ii.inv_date --date
                                      , default, default, default, default, default
                                      , vendor.curr_code --To
                                      , default, default 
                                      , 1 --Amount
                                      , default, default, default, default, default, default, default, default, default, default, default, default, default, default 
                                      )
                              ) 
                          )
                     ELSE
                        vendor.gold1099_ytd - (ii.amt_paid * 
                                     (SELECT TOP 1 
                                        ExchRate =          
                                          CASE WHEN TRateD = 1 THEN TRate 
                                               WHEN TRateD = 0 AND NOT TRate = 0 THEN 1/TRate
                                          END
                                       FROM [dbo].[2CurrCnvt] 
                                     (
                                        ii.curr_code --From 
                                      , 0, 0
                                      , ii.inv_date --date
                                      , default, default, default, default, default
                                      , vendor.curr_code --To
                                      , default, default 
                                      , 1 --Amount
                                      , default, default, default, default, default, default, default, default, default, default, default, default, default, default 
                                      )
                              ) 
                        )
                  END
               ELSE
                  vendor.gold1099_ytd
            END
        , gold1099_lst_yr =
            CASE (YEAR(GETDATE()) - YEAR(ii.dist_date))
               WHEN 1 THEN
                  CASE ii.gold1099_reportable
                     WHEN 1
                        THEN vendor.gold1099_lst_yr + (ii.amt_paid * 
                                                             (SELECT TOP 1 
                                        ExchRate =          
                                          CASE WHEN TRateD = 1 THEN TRate 
                                               WHEN TRateD = 0 AND NOT TRate = 0 THEN 1/TRate
                                          END
                                       FROM [dbo].[2CurrCnvt] 
                                     (
                                        ii.curr_code --From 
                                      , 0, 0
                                      , ii.inv_date --date
                                      , default, default, default, default, default
                                      , vendor.curr_code --To
                                      , default, default 
                                      , 1 --Amount
                                      , default, default, default, default, default, default, default, default, default, default, default, default, default, default 
                                      )
                              ) 
                        )
                     ELSE
                        vendor.gold1099_lst_yr - (ii.amt_paid * 
                                                             (SELECT TOP 1 
                                        ExchRate =          
                                          CASE WHEN TRateD = 1 THEN TRate 
                                               WHEN TRateD = 0 AND NOT TRate = 0 THEN 1/TRate
                                          END
                                       FROM [dbo].[2CurrCnvt] 
                                     (
                                        ii.curr_code --From 
                                      , 0, 0
                                      , ii.inv_date --date
                                      , default, default, default, default, default
                                      , vendor.curr_code --To
                                      , default, default 
                                      , 1 --Amount
                                      , default, default, default, default, default, default, default, default, default, default, default, default, default, default 
                                      )
                              ) 
                        )
                     END
               ELSE
                  vendor.gold1099_lst_yr
            END
      FROM inserted ii
         LEFT OUTER JOIN deleted AS dd ON
            dd.RowPointer = ii.RowPointer
         INNER JOIN vendor ON
              vendor.vend_num = ii.vend_num
      WHERE ii.type IN (N'N', N'O', N'P')
        AND ii.gold1099_reportable != dd.gold1099_reportable

if @TriggerPayableTransactionSyncSpEnabled = 1
or (@InsertFlag = 1 and @TriggerPayableTrackerSyncSpEnabled = 1)
begin
--Begin PaybleTransactionBOD
DECLARE aptrxp_mstIupCrs1 CURSOR LOCAL STATIC
FOR SELECT
  ii.vend_num
, case when ii.type = 'O' then 0 else ii.voucher end
        -- ALL OPEN PAYMENTS SENT WITH 0 VOUCHER NUMBER SO THE BOD WILL 
        -- ACCUMULATE ALL OPEN PAYMENT INTO ONE 
, ii.type
, ii.vouch_seq -- PayableTrackerBOD
FROM inserted ii
LEFT OUTER JOIN deleted AS dd ON
   dd.RowPointer  =  ii.RowPointer

OPEN aptrxp_mstIupCrs1
WHILE @Severity = 0
   BEGIN -- cursor loop
      FETCH aptrxp_mstIupCrs1 INTO
        @NewVendNum
       ,@NewVoucher
       ,@Type
	   ,@NewSequence -- PayableTrackerBOD

      IF @@FETCH_STATUS != 0
         BREAK

        IF @Type <> 'N'
        and @TriggerPayableTransactionSyncSpEnabled = 1
           EXEC @Severity   = dbo.RemoteMethodForReplicationTargetsSP 
                @IdoName    = 'SP!'
               ,@MethodName = 'TriggerPayableTransactionSyncSp'
               ,@Infobar    = @Infobar Output  
               ,@Parm1Value = @NewVendNum  
               ,@Parm2Value = @NewVoucher 
               ,@Parm3Value = @ActionExpression

        IF @Severity > 0
           BREAK
		
		-- Begin PayableTracker BOD
        IF @InsertFlag = 1
         and @TriggerPayableTrackerSyncSpEnabled = 1
        BEGIN

		   IF @Type <> 'N' BEGIN
				  EXEC @Severity   = dbo.RemoteMethodForReplicationTargetsSP 
					   @IdoName    = 'SP!'
					  ,@MethodName = 'TriggerPayableTrackerSyncSp'
					  ,@Infobar    = @Infobar Output  
					  ,@Parm1Value = @NewVendNum  
					  ,@Parm2Value = @NewVoucher 
					  ,@Parm3Value = @NewSequence 
					  ,@Parm4Value = @ActionExpression

				  IF @Severity > 0 BREAK
		   END 
              
			IF @NewSequence > 0 BEGIN -- Regenerate the Voucher everytime a Payment is posted
				  EXEC @Severity   = dbo.RemoteMethodForReplicationTargetsSP 
					   @IdoName    = 'SP!'
					  ,@MethodName = 'TriggerPayableTrackerSyncSp'
					  ,@Infobar    = @Infobar Output  
					  ,@Parm1Value = @NewVendNum  
					  ,@Parm2Value = @NewVoucher 
					  ,@Parm3Value = 0 
					  ,@Parm4Value = @ActionExpression
      
				  IF @Severity > 0 BREAK
			END  
		END
		-- End PayableTracker BOD



   END -- End of cursor loop

CLOSE aptrxp_mstIupCrs1
DEALLOCATE aptrxp_mstIupCrs1
end

IF @Severity != 0
BEGIN
   EXEC dbo.RaiseErrorSp @Infobar, @Severity, 1

   EXEC @Severity = dbo.RollbackTransactionSp
      @Severity

   IF @Severity != 0
   BEGIN
      ROLLBACK TRANSACTION
      RETURN
   END
END
--end of PaybleTransactionBOD


-- Maintenance of Audit-columns is now performed by the generated triggers aptrxpInsert and aptrxpUpdatePenultimate.
-- Maintenance of aptrxp_all is now performed by the generated triggers aptrxpInsert and aptrxpUpdatePenultimate.
GO
EXEC sp_settriggerorder @triggername=N'[dbo].[aptrxp_mstIup]', @order=N'First', @stmttype=N'INSERT'
GO
EXEC sp_settriggerorder @triggername=N'[dbo].[aptrxp_mstIup]', @order=N'First', @stmttype=N'UPDATE'
GO

CREATE TRIGGER [aptrxp_mstUpdatePenultimate]
ON [aptrxp_mst]
AFTER Update
AS
   IF @@ROWCOUNT = 0 RETURN
   
   SET NOCOUNT ON

   IF dbo.SkipBaseTrigger() = 1
      RETURN
   
   DECLARE @Today DateType
   SET @Today = dbo.GetCurrentSiteDate()

   DECLARE @UserName LongListType
   SET @UserName = dbo.UserNameSp()

   UPDATE [aptrxp_mst]
   SET
      RecordDate = @Today
      , UpdatedBy = @Username
   FROM inserted AS ii WITH (READUNCOMMITTED)
   INNER JOIN [aptrxp_mst] WITH (INDEX=IX_aptrxp_mst)
   ON ii.[vend_num] = [aptrxp_mst].[vend_num]
   AND ii.[voucher] = [aptrxp_mst].[voucher]
   AND ii.[vouch_seq] = [aptrxp_mst].[vouch_seq]
   AND ii.[site_ref] = [aptrxp_mst].[site_ref]
   -- The other AFTER UPDATE Triggers fire now, in the following order:
   --   aptrxp_mstIup First (if exists; manually maintained)
   --   aptrxp_mstUpdAudit and/or any custom triggers (if exist; generated by AuditLoggingGenCodeSp and/or manually maintained)
   --   aptrxp_mstIupReplicate Last (if exists; generated by ReplicationTriggerIupCode2Sp)
   -- However, each of these immediately RETURNs without doing anything
   -- after first checking "IF TRIGGER_NESTLEVEL(OBJECT_ID(N'dbo.aptrxp_mstUpdatePenultimate')) > 0",
   -- because indeed we (dbo.aptrxp_mstUpdatePenultimate) are currently on the call-stack.
   
   RETURN