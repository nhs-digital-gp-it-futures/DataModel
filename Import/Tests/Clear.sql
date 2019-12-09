DELETE FROM [FrameworkCapabilities]
DELETE FROM [FrameworkSolutions]
UPDATE [Solution] SET SolutionDetailId = NULL
DELETE FROM [SolutionDetail]
DELETE FROM [SolutionCapability]

DELETE FROM [PurchasingModel]
DELETE FROM [SolutionPrice]
DELETE FROM [AssociatedServicePrice]
DELETE FROM [AssociatedServicePrice]

DELETE FROM [Solution]
DELETE FROM [MarketingContact]
DELETE FROM [AssociatedService]

