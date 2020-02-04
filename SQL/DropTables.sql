BEGIN TRANSACTION

-- remove foreign keys, so we can drop tables

IF OBJECT_ID('[AdditionalServicePrice]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [AdditionalServicePrice] DROP CONSTRAINT IF EXISTS [FK_AdditionalServicePrice_PurchasingModelId]
  ALTER TABLE [AdditionalServicePrice] DROP CONSTRAINT IF EXISTS [FK_AdditionalServicePrice_PriceUnit]
  ALTER TABLE [AdditionalServicePrice] DROP CONSTRAINT IF EXISTS [FK_AdditionalServicePrice_PriceType]
  ALTER TABLE [AdditionalServicePrice] DROP CONSTRAINT IF EXISTS [FK_AdditionalServicePrice_Soution]
  COMMIT
END

IF OBJECT_ID('[AssociatedService]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [AssociatedService] DROP CONSTRAINT IF EXISTS [FK_AssociatedService_Solution]
  COMMIT
END

IF OBJECT_ID('[AssociatedServicePrice]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [AssociatedServicePrice] DROP CONSTRAINT IF EXISTS [FK_AssociatedServicePrice_PurchasingModelId]
  ALTER TABLE [AssociatedServicePrice] DROP CONSTRAINT IF EXISTS [FK_AssociateServicePrice_PriceUnit]
  ALTER TABLE [AssociatedServicePrice] DROP CONSTRAINT IF EXISTS [FK_AssociatedServicePrice_PriceType]
 COMMIT
END

IF OBJECT_ID('[Capability]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [Capability] DROP CONSTRAINT IF EXISTS [FK_Capability_CapabilityStatus]
  ALTER TABLE [Capability] DROP CONSTRAINT IF EXISTS [FK_Capability_CapabilityCategory]
  COMMIT
END

IF OBJECT_ID('[CapabilityStandards]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [CapabilityStandards] DROP CONSTRAINT IF EXISTS [FK_CapabilityStandards_Capability]
  ALTER TABLE [CapabilityStandards] DROP CONSTRAINT IF EXISTS [FK_CapabilityStandards_Standard]
  COMMIT
END

IF OBJECT_ID('[Epic]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [Epic] DROP CONSTRAINT IF EXISTS [FK_Epic_Capability]
  ALTER TABLE [Epic] DROP CONSTRAINT IF EXISTS [FK_Epic_EpicCategory]
  ALTER TABLE [Epic] DROP CONSTRAINT IF EXISTS [FK_Epic_CompliancyLevel]
  COMMIT
END

IF OBJECT_ID('[FrameworkCapabilities]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [FrameworkCapabilities] DROP CONSTRAINT IF EXISTS [FK_FrameworkCapabilities_Capability]
  ALTER TABLE [FrameworkCapabilities] DROP CONSTRAINT IF EXISTS [FK_FrameworkCapabilities_Framework]
  COMMIT
END

IF OBJECT_ID('[FrameworkSolutions]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [FrameworkSolutions] DROP CONSTRAINT IF EXISTS [FK_FrameworkSolutions_Framework]
  ALTER TABLE [FrameworkSolutions] DROP CONSTRAINT IF EXISTS [FK_FrameworkSolutions_Solution]
  COMMIT
END

IF OBJECT_ID('[FrameworkStandards]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [FrameworkStandards] DROP CONSTRAINT IF EXISTS [FK_FrameworkStandards_Framework]
  ALTER TABLE [FrameworkStandards] DROP CONSTRAINT IF EXISTS [FK_FrameworkStandards_Standard]
  COMMIT
END

IF OBJECT_ID('[MarketingContact]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [MarketingContact] DROP CONSTRAINT IF EXISTS [FK_MarketingContact_Solution]
  COMMIT
END

IF OBJECT_ID('[MarketingDetail]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [MarketingDetail] DROP CONSTRAINT IF EXISTS [FK_MarketingDetail_Solution]
  COMMIT
END

IF OBJECT_ID('[OrganisationContact]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [OrganisationContact] DROP CONSTRAINT IF EXISTS [FK_OrganisationContact_Organisation]
  COMMIT
END

IF OBJECT_ID('[PurchasingModel]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [PurchasingModel] DROP CONSTRAINT IF EXISTS [FK_PurchasingModel_PublicationStatus]
  ALTER TABLE [PurchasingModel] DROP CONSTRAINT IF EXISTS [FK_PurchasingModel_AuthorityStatus]
  ALTER TABLE [PurchasingModel] DROP CONSTRAINT IF EXISTS [FK_PurchasingModel_SolutionId]
  ALTER TABLE [PurchasingModel] DROP CONSTRAINT IF EXISTS [FK_PurchasingModel_FrameworkId]
  COMMIT
END

IF OBJECT_ID('[Solution]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [Solution] DROP CONSTRAINT IF EXISTS [FK_Solution_AuthorityStatus]
  ALTER TABLE [Solution] DROP CONSTRAINT IF EXISTS [FK_Solution_Parent]
  ALTER TABLE [Solution] DROP CONSTRAINT IF EXISTS [FK_Solution_PublicationStatus]
  ALTER TABLE [Solution] DROP CONSTRAINT IF EXISTS [FK_Solution_Supplier]
  ALTER TABLE [Solution] DROP CONSTRAINT IF EXISTS [FK_Solution_SupplierStatus]
  ALTER TABLE [Solution] DROP CONSTRAINT IF EXISTS [FK_Solution_SolutionDetail]
  COMMIT
END

IF OBJECT_ID('[SolutionCapability]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [SolutionCapability] DROP CONSTRAINT IF EXISTS [FK_SolutionCapability_Capability]
  ALTER TABLE [SolutionCapability] DROP CONSTRAINT IF EXISTS [FK_SolutionCapability_Solution]
  ALTER TABLE [SolutionCapability] DROP CONSTRAINT IF EXISTS [FK_SolutionCapability_SolutionCapabilityStatus]
  COMMIT
END

IF OBJECT_ID('[SolutionDefinedCapability]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [SolutionDefinedCapability] DROP CONSTRAINT IF EXISTS [FK_SolutionDefinedCapability_CapabilityStatus]
  ALTER TABLE [SolutionDefinedCapability] DROP CONSTRAINT IF EXISTS [FK_SolutionDefinedCapability_Solution]
  COMMIT
END

IF OBJECT_ID('[SolutionDefinedEpic]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [SolutionDefinedEpic] DROP CONSTRAINT IF EXISTS [FK_SolutionDefinedEpic_SolutionEpicStatus]
  ALTER TABLE [SolutionDefinedEpic] DROP CONSTRAINT IF EXISTS [FK_SolutionDefinedEpic_EpicCategory]
  ALTER TABLE [SolutionDefinedEpic] DROP CONSTRAINT IF EXISTS [FK_SolutionDefinedEpic_SolutionDefinedCapability]
  COMMIT
END

IF OBJECT_ID('[SolutionDefinedEpicAcceptanceCriteria]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [SolutionDefinedEpicAcceptanceCriteria] DROP CONSTRAINT IF EXISTS [FK_SolutionDefinedEpicAcceptanceCriteria_SolutionDefinedEpic]
  COMMIT
END

IF OBJECT_ID('[SolutionDetail]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [SolutionDetail] DROP CONSTRAINT IF EXISTS [FK_SolutionDetail_Solution]
  ALTER TABLE [SolutionDetail] DROP CONSTRAINT IF EXISTS [FK_SolutionDetail_PublicationStatus]
  COMMIT
END

IF OBJECT_ID('[SolutionEpic]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [SolutionEpic] DROP CONSTRAINT IF EXISTS [FK_SolutionEpic_SolutionEpicStatus]
  ALTER TABLE [SolutionEpic] DROP CONSTRAINT IF EXISTS [FK_SolutionEpicStatus]
  ALTER TABLE [SolutionEpic] DROP CONSTRAINT IF EXISTS [FK_SolutionEpic_Solution]
  ALTER TABLE [SolutionEpic] DROP CONSTRAINT IF EXISTS [FK_SolutionEpic_Epic]
  ALTER TABLE [SolutionEpic] DROP CONSTRAINT IF EXISTS [FK_SolutionEpic_Capability]
  COMMIT
END

IF OBJECT_ID('[SolutionPrice]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [SolutionPrice] DROP CONSTRAINT IF EXISTS [FK_SolutionPrice_PurchasingModelId]
  ALTER TABLE [SolutionPrice] DROP CONSTRAINT IF EXISTS [FK_SolutionPrice_PricingUnitType]
  ALTER TABLE [SolutionPrice] DROP CONSTRAINT IF EXISTS [FK_SolutionPrice_PriceType]
  COMMIT
END

IF OBJECT_ID('[SolutionStandard]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [SolutionStandard] DROP CONSTRAINT IF EXISTS [FK_SolutionStandard_Solution]
  ALTER TABLE [SolutionStandard] DROP CONSTRAINT IF EXISTS [FK_SolutionStandard_SolutionStandardStatus]
  ALTER TABLE [SolutionStandard] DROP CONSTRAINT IF EXISTS [FK_SolutionStandard_Standard]
  COMMIT
END

IF OBJECT_ID('[Standard]', 'U') IS NOT NULL
BEGIN
  BEGIN TRANSACTION
  ALTER TABLE [Standard] DROP CONSTRAINT IF EXISTS [FK_Standard_StandardCategory]
  ALTER TABLE [Standard] DROP CONSTRAINT IF EXISTS [FK_Standard_StandardStatus]
  COMMIT
END

DROP TABLE IF EXISTS [dbo].[FrameworkSolutions];
DROP TABLE IF EXISTS [dbo].[MarketingContact];
DROP TABLE IF EXISTS [dbo].[AssociatedServicePrice];
DROP TABLE IF EXISTS [dbo].[AssociatedService];
DROP TABLE IF EXISTS [dbo].[AdditionalServicePrice];
DROP TABLE IF EXISTS [dbo].[SolutionPrice];
DROP TABLE IF EXISTS [dbo].[PricingUnitType];
DROP TABLE IF EXISTS [dbo].[SolutionDefinedEpicAcceptanceCriteria];
DROP TABLE IF EXISTS [dbo].[SolutionDefinedEpic];
DROP TABLE IF EXISTS [dbo].[SolutionDefinedCapability];	
DROP TABLE IF EXISTS [dbo].[SolutionStandard];
DROP TABLE IF EXISTS [dbo].[SolutionStandardStatus];
DROP TABLE IF EXISTS [dbo].[SolutionEpic];
DROP TABLE IF EXISTS [dbo].[SolutionEpicStatus];
DROP TABLE IF EXISTS [dbo].[SolutionCapability];
DROP TABLE IF EXISTS [dbo].[SolutionCapabilityStatus];
DROP TABLE IF EXISTS [dbo].[MarketingDetail];
DROP TABLE IF EXISTS [dbo].[SolutionSupplierStatus];
DROP TABLE IF EXISTS [dbo].[SolutionAuthorityStatus];
DROP TABLE IF EXISTS [dbo].[SupplierContact];
DROP TABLE IF EXISTS [dbo].[Supplier];
DROP TABLE IF EXISTS [dbo].[Organisation];
DROP TABLE IF EXISTS [dbo].[FrameworkStandards];
DROP TABLE IF EXISTS [dbo].[FrameworkCapabilities];
DROP TABLE IF EXISTS [dbo].[Framework];
DROP TABLE IF EXISTS [dbo].[CapabilityStandards];
DROP TABLE IF EXISTS [dbo].[Standard];
DROP TABLE IF EXISTS [dbo].[StandardCategory];
DROP TABLE IF EXISTS [dbo].[StandardStatus];
DROP TABLE IF EXISTS [dbo].[Epic];
DROP TABLE IF EXISTS [dbo].[EpicCategory];
DROP TABLE IF EXISTS [dbo].[Capability];
DROP TABLE IF EXISTS [dbo].[CapabilityStatus];
DROP TABLE IF EXISTS [dbo].[CapabilityCategory];
DROP TABLE IF EXISTS [dbo].[CompliancyLevel];
DROP TABLE IF EXISTS [dbo].[Audit];
DROP TABLE IF EXISTS [dbo].[AdditionalServiceDetail];
DROP TABLE IF EXISTS [dbo].[PriceType];
DROP TABLE IF EXISTS [dbo].[PricingUnit];
DROP TABLE IF EXISTS [dbo].[SolutionDetail];
DROP TABLE IF EXISTS [dbo].[Solution];
DROP TABLE IF EXISTS [dbo].[PurchasingModel];
DROP TABLE IF EXISTS [dbo].[PublicationStatus];

COMMIT
