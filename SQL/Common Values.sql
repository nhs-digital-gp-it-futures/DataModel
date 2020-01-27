INSERT INTO [dbo].[StandardCategory] ([Id], [Name]) VALUES (1, 'Overarching');
INSERT INTO [dbo].[StandardCategory] ([Id], [Name]) VALUES (2, 'Interoperability');
INSERT INTO [dbo].[StandardCategory] ([Id], [Name]) VALUES (3, 'Context');
INSERT INTO [dbo].[StandardCategory] ([Id], [Name]) VALUES (4, 'Capability');
GO

INSERT INTO [dbo].[StandardStatus] ([Id], [Name]) VALUES (1, 'Effective');
GO

INSERT INTO [dbo].[CapabilityStatus] ([Id], [Name]) VALUES (1, 'Effective');
GO

INSERT INTO [dbo].[CapabilityCategory] ([Id], [Name]) VALUES (0, 'Undefined');
GO

INSERT INTO [dbo].[EpicCategory] ([Id], [Name]) VALUES (0, 'Undefined');
GO


INSERT INTO [dbo].[CompliancyLevel] ([Id], [Name]) VALUES (1, 'MUST');
INSERT INTO [dbo].[CompliancyLevel] ([Id], [Name]) VALUES (2, 'SHOULD');
INSERT INTO [dbo].[CompliancyLevel] ([Id], [Name]) VALUES (3, 'MAY');
GO


INSERT INTO [dbo].[PublicationStatus] ([Id], [Name]) VALUES (1, 'Draft');
INSERT INTO [dbo].[PublicationStatus] ([Id], [Name]) VALUES (2, 'Unpublished');
INSERT INTO [dbo].[PublicationStatus] ([Id], [Name]) VALUES (3, 'Published');
INSERT INTO [dbo].[PublicationStatus] ([Id], [Name]) VALUES (4, 'Withdrawn');
GO

INSERT INTO [dbo].[SolutionSupplierStatus] ([Id], [Name]) VALUES (1, 'Draft');
INSERT INTO [dbo].[SolutionSupplierStatus] ([Id], [Name]) VALUES (2, 'Authority Review');
INSERT INTO [dbo].[SolutionSupplierStatus] ([Id], [Name]) VALUES (3, 'Completed');
GO

INSERT INTO [dbo].[SolutionAuthorityStatus] ([Id], [Name]) VALUES (1, 'Draft');
INSERT INTO [dbo].[SolutionAuthorityStatus] ([Id], [Name]) VALUES (2, 'Completed');
GO

INSERT INTO [dbo].[SolutionCapabilityStatus] ([Id], [Name], [Pass]) VALUES (1, 'Passed - Full', 1);
INSERT INTO [dbo].[SolutionCapabilityStatus] ([Id], [Name], [Pass]) VALUES (2, 'Passed - Partial', 1);
INSERT INTO [dbo].[SolutionCapabilityStatus] ([Id], [Name], [Pass]) VALUES (3, 'Failed', 0);
GO

INSERT INTO [dbo].[SolutionStandardStatus] ([Id], [Name]) VALUES (1, 'Passed');
GO

INSERT [dbo].[PricingUnit] ([Id], [Name], [Description]) VALUES (1, N'Patient', 'Per Registered Patient')
GO

INSERT [dbo].[PriceType] ([Id], [Name]) VALUES (1, N'Flat List Price')
INSERT [dbo].[PriceType] ([Id], [Name]) VALUES (2, N'Bundle Price')
INSERT [dbo].[PriceType] ([Id], [Name]) VALUES (3, N'Cumlative Triered Price')
GO

