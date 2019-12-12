SELECT * FROM Solution
SELECT * FROM FrameworkSolutions
SELECT * FROM SolutionDetail
SELECT * FROM PurchasingModel
SELECT * FROM SolutionCapability
SELECT * FROM MarketingContact

DELETE FROM [FrameworkSolutions]
UPDATE [Solution] SET SolutionDetailId = NULL
DELETE FROM [SolutionDetail]
DELETE FROM [SolutionCapability]
DELETE FROM [PurchasingModel]
DELETE FROM [Solution]
DELETE FROM [MarketingContact]

