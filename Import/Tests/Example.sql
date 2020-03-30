
/***
Declarations
***/


DECLARE @SupplierId varchar(6)
DECLARE @SupplierName varchar(255)
DECLARE @SolutionId varchar(14)
DECLARE @SolutionName varchar(255)
DECLARE @IsFoundation bit
DECLARE @Capabilities SolutionImportCapability

/***
SET DATA HERE
***/

SET @SupplierId = '99999'
SET @SupplierName = 'NotEmis Health'
SET @SolutionId = '99999-89'
SET @SolutionName = 'NotEmis Web GP'
SET @IsFoundation = 1
INSERT INTO @Capabilities VALUES('C20'),('C17'),('C12'),('C16'),('C11'),('C15'),('C41'),('C14'),('C13'),('C30'),('C10'),('C6'),('C5')

/***
Echo data set
***/

print @SupplierId 
print @SupplierName 
print @SolutionId 
print @SolutionName 
print @IsFoundation 

select * from @Capabilities

EXEC SolutionImport
	@SupplierId,
	@SupplierName,
	@SolutionId,
	@SolutionName,
	@IsFoundation,
	@Capabilities 