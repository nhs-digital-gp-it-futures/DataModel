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