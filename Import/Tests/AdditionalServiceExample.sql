
/***
Declarations
***/

DECLARE @SupplierId varchar(6)
DECLARE @ParentSolutionId varchar(16)
DECLARE @AdditionServiceId varchar(14)
DECLARE @ServiceName varchar(255)
DECLARE @ServiceSummary varchar(300)
DECLARE @ServiceDescription varchar(3000)
DECLARE @Capabilities AdditionalServiceImportCapability

/***
SET DATA HERE
***/

SET @SupplierId = '10000'
SET @ParentSolutionId = '10000-001'
SET @AdditionServiceId = '10000-001A001'
SET @ServiceName = 'Not Video Consultation'
SET @ServiceSummary = 'A Not Video Consultation service for EMIS Web GP' -- Can be set to NULL
SET @ServiceDescription = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
INSERT INTO @Capabilities VALUES('C20'), ('C6')

/***
Echo data set
***/

print @SupplierId 
print @ParentSolutionId 
print @AdditionServiceId 
print @ServiceName 
print @ServiceSummary 
print @ServiceDescription

select * from @Capabilities

EXEC AddtionServiceImport
	@SupplierId,
	@ParentSolutionId,
	@AdditionServiceId,
	@ServiceName,
	@ServiceSummary,
	@ServiceDescription,
	@Capabilities 