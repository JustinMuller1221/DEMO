CREATE TABLE [dbo].[aptrxd_mst]
(
    [site_ref] SiteType NOT NULL,
    [vend_num] VendNumType NOT NULL,
    [voucher] VoucherType NOT NULL,
    [dist_seq] ApDistSeqType NOT NULL,
    [acct] AcctType NULL,
    [amount] AmountType NULL,
    [inv_num] VendInvNumType NULL,
    [tax_code] TaxCodeType NULL,
    [tax_basis] AmountType NULL,
    [tax_system] TaxSystemType NULL,
    [tax_code_e] TaxCodeType NULL,
    [acct_unit1] UnitCode1Type NULL,
    [acct_unit2] UnitCode2Type NULL,
    [acct_unit3] UnitCode3Type NULL,
    [acct_unit4] UnitCode4Type NULL,
    [proj_num] ProjNumType NULL,
    [task_num] TaskNumType NULL,
    [cost_code] CostCodeType NULL,
    [NoteExistsFlag] FlagNyType NOT NULL,
    [RecordDate] CurrentDateType NOT NULL,
    [RowPointer] RowPointerType NOT NULL,
    [CreatedBy] UsernameType NOT NULL,
    [UpdatedBy] UsernameType NOT NULL,
    [CreateDate] CurrentDateType NOT NULL,
    [InWorkflow] FlagNyType NOT NULL,
    [MX_iso_country_code] ISOCountryCodeType NULL,
    [MX_ietu_deduction_pct] ArFinRateType NULL,
    [MX_diot_trans_type] MX_DIOTTransTypeType NULL,
    [MX_foreign_tax_reg_num] MX_TaxRegForeignType NULL,
    [MX_tax_reg_num] TaxRegNumType NULL,
    [MX_tax_reg_num_type] MX_TaxRegNumTypeType NULL,
    [MX_vendor_name] NameType NULL,
    [MX_vat_compliant] ListYesNoType NOT NULL,
    [MX_vat_eligible] ListYesNoType NOT NULL,
    [ZITco_num] CoNumType NULL,
    [ZITcost_acct] AcctType NULL,
    [ZITdom_amount] AmountType NULL,
    [ZITRRDateFrom] DateType NULL,
    [ZITRRDateTo] DateType NULL,
    [ZITsub_ledger_date_dau] DateType NULL,
    [ZITsub_ledger_nr_dau] ZITSubsidiaryLedgerNrType NULL,
    [ZITvend_num_dau] VendNumType NULL,
    [ZITvouch_seq] VouchSeqType NULL,
    [VDG_SM_AnotherTest] FlagNyType NOT NULL,
    CONSTRAINT [IX_aptrxd_mst_RowPointer] UNIQUE NONCLUSTERED ([RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [RowPointer] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme],
    CONSTRAINT [PK_aptrxd_mst] PRIMARY KEY CLUSTERED ([vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [vend_num] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [voucher] ASC, [dist_seq] ASC, [dist_seq] ASC, [dist_seq] ASC, [dist_seq] ASC, [dist_seq] ASC, [dist_seq] ASC, [dist_seq] ASC, [dist_seq] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme]
) ON [SitePScheme]
GO

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [DF_aptrxd_mst_site_ref] DEFAULT (rtrim(CONVERT([nvarchar](8),context_info(),(0)))) FOR [site_ref];

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [DF_aptrxd_mst_voucher] DEFAULT ((0)) FOR [voucher];

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [DF_aptrxd_mst_dist_seq] DEFAULT ((0)) FOR [dist_seq];

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [DF_aptrxd_mst_amount] DEFAULT ((0)) FOR [amount];

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [DF_aptrxd_mst_tax_basis] DEFAULT ((0)) FOR [tax_basis];

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [DF_aptrxd_mst_task_num] DEFAULT ((0)) FOR [task_num];

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [DF_aptrxd_mst_NoteExistsFlag] DEFAULT ((0)) FOR [NoteExistsFlag];

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [DF_aptrxd_mst_RecordDate] DEFAULT (getdate()) FOR [RecordDate];

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [DF_aptrxd_mst_RowPointer] DEFAULT (newid()) FOR [RowPointer];

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [DF_aptrxd_mst_CreatedBy] DEFAULT (suser_sname()) FOR [CreatedBy];

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [DF_aptrxd_mst_UpdatedBy] DEFAULT (suser_sname()) FOR [UpdatedBy];

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [DF_aptrxd_mst_CreateDate] DEFAULT (getdate()) FOR [CreateDate];

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [DF_aptrxd_mst_InWorkflow] DEFAULT ((0)) FOR [InWorkflow];

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [DF_aptrxd_mst_MX_vat_compliant] DEFAULT ((0)) FOR [MX_vat_compliant];

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [DF_aptrxd_mst_MX_vat_eligible] DEFAULT ((0)) FOR [MX_vat_eligible];

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [DF_aptrxd_mst_ZITvouch_seq] DEFAULT ((0)) FOR [ZITvouch_seq];

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [DF_aptrxd_mst_VDG_SM_AnotherTest] DEFAULT ((0)) FOR [VDG_SM_AnotherTest];

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [CK_aptrxd_mst_MX_vat_compliant] CHECK ([MX_vat_compliant]=(1) OR [MX_vat_compliant]=(0));

ALTER TABLE [dbo].[aptrxd_mst] ADD CONSTRAINT [CK_aptrxd_mst_MX_vat_eligible] CHECK ([MX_vat_eligible]=(1) OR [MX_vat_eligible]=(0));

CREATE NONCLUSTERED INDEX [aptrxd_mstIX1] ON [dbo].[aptrxd_mst] ([VDG_SM_AnotherTest] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PRIMARY];

CREATE NONCLUSTERED INDEX [aptrxd_mstIX2] ON [dbo].[aptrxd_mst] ([CreateDate] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PRIMARY];

CREATE NONCLUSTERED INDEX [aptrxd_mstIX3] ON [dbo].[aptrxd_mst] ([CreatedBy] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PRIMARY];

CREATE NONCLUSTERED INDEX [IX_aptrxd_mst_cost_code] ON [dbo].[aptrxd_mst] ([cost_code] ASC, [cost_code] ASC, [cost_code] ASC, [cost_code] ASC, [cost_code] ASC, [cost_code] ASC, [cost_code] ASC, [cost_code] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme];

CREATE NONCLUSTERED INDEX [IX_aptrxd_mst_proj_num] ON [dbo].[aptrxd_mst] ([proj_num] ASC, [proj_num] ASC, [proj_num] ASC, [proj_num] ASC, [proj_num] ASC, [proj_num] ASC, [proj_num] ASC, [proj_num] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme];

CREATE NONCLUSTERED INDEX [IX_aptrxd_mst_task_num] ON [dbo].[aptrxd_mst] ([task_num] ASC, [task_num] ASC, [task_num] ASC, [task_num] ASC, [task_num] ASC, [task_num] ASC, [task_num] ASC, [task_num] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC, [site_ref] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [SitePScheme];