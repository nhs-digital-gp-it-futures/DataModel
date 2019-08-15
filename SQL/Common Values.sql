USE [buyingcatalogue];
GO

INSERT INTO [dbo].[StandardCategory] (Id, CategoryName) VALUES (1, 'Overarching');
INSERT INTO [dbo].[StandardCategory] (Id, CategoryName) VALUES (2, 'Interoperability');
INSERT INTO [dbo].[StandardCategory] (Id, CategoryName) VALUES (3, 'Context');
INSERT INTO [dbo].[StandardCategory] (Id, CategoryName) VALUES (4, 'Capability');
GO

INSERT INTO [dbo].[StandardStatus] (Id, StatusName) VALUES (1, 'Effective');
GO
INSERT INTO [dbo].[CapabilityStatus] (Id, StatusName) VALUES (1, 'Effective');
GO

INSERT INTO [dbo].[PublicationStatus] (Id, StatusName) VALUES (1, 'Draft');
INSERT INTO [dbo].[PublicationStatus] (Id, StatusName) VALUES (2, 'Unpublished');
INSERT INTO [dbo].[PublicationStatus] (Id, StatusName) VALUES (3, 'Published');
INSERT INTO [dbo].[PublicationStatus] (Id, StatusName) VALUES (4, 'Withdrawn');
GO

INSERT INTO [dbo].[SolutionSupplierStatus] (Id, StatusName) VALUES (1, 'Draft');
INSERT INTO [dbo].[SolutionSupplierStatus] (Id, StatusName) VALUES (2, 'AuthorityReview');
INSERT INTO [dbo].[SolutionSupplierStatus] (Id, StatusName) VALUES (3, 'Completed');
GO

INSERT INTO [dbo].[SolutionAuthorityStatus] (Id, StatusName) VALUES (1, 'Draft');
INSERT INTO [dbo].[SolutionAuthorityStatus] (Id, StatusName) VALUES (2, 'Completed');
GO

INSERT INTO [dbo].[SolutionCapabilityStatus] (Id, StatusName) VALUES (1, 'Passed');
GO

INSERT INTO [dbo].[SolutionStandardStatus] (Id, StatusName) VALUES (1, 'Passed');
GO


