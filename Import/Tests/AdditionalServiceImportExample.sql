
/***
Declarations
***/

DECLARE @AdditionalServiceId varchar(14)
DECLARE @ServiceName varchar(255)
DECLARE @ServiceSummary varchar(300)
DECLARE @ServiceDescription varchar(3000)
DECLARE @Capabilities AdditionalServiceImportCapability

/***
SET DATA HERE
***/

SET @AdditionalServiceId = '99999-89A001'
SET @ServiceName = 'Not Video Consultation'
SET @ServiceSummary = 'A Not Video Consultation service for NotEMIS Web GP' -- Can be set to NULL
SET @ServiceDescription = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' -- Can be set to NULL
INSERT INTO @Capabilities VALUES('C6')

/***
Echo data set
***/

print @AdditionalServiceId 
print @ServiceName 
print @ServiceSummary 
print @ServiceDescription

select * from @Capabilities

EXEC AdditionalServiceImport
	@AdditionalServiceId,
	@ServiceName,
	@ServiceSummary,
	@ServiceDescription,
	@Capabilities 