
/***
Declarations
***/

DECLARE @SupplierId varchar(6)
DECLARE @ParentSolutionId varchar(16)
DECLARE @AdditionalServiceId varchar(14)
DECLARE @ServiceName varchar(255)
DECLARE @ServiceSummary varchar(300)
DECLARE @ServiceDescription varchar(3000)
DECLARE @Capabilities AdditionalServiceImportCapability

/***
SET DATA HERE
***/

SET @SupplierId = '99999'
SET @ParentSolutionId = '99999-89'
SET @AdditionalServiceId = '99999-89A001'
SET @ServiceName = 'Not Video Consultation'
SET @ServiceSummary = 'A Not Video Consultation service for NotEMIS Web GP' -- Can be set to NULL
SET @ServiceDescription = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' -- Can be set to NULL
INSERT INTO @Capabilities VALUES('C6')

/***
Echo data set
***/

print @SupplierId 
print @ParentSolutionId 
print @AdditionalServiceId 
print @ServiceName 
print @ServiceSummary 
print @ServiceDescription

select * from @Capabilities

EXEC AddtionServiceImport
	@SupplierId,
	@ParentSolutionId,
	@AdditionalServiceId,
	@ServiceName,
	@ServiceSummary,
	@ServiceDescription,
	@Capabilities 