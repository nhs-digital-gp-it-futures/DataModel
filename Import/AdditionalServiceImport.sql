
IF type_id('[dbo].[AdditionalServiceImportCapability]') IS NULL
CREATE TYPE [dbo].[AdditionalServiceImportCapability] as TABLE (CapabilityRef varchar(10)) 
GO

CREATE OR ALTER PROCEDURE AdditionalServiceImport
	@AdditionalServiceId varchar(16),
	@ServiceName varchar(255),
	@ServiceSummary varchar(300),
	@ServiceDescription varchar(3000),
	@Capabilities AdditionalServiceImportCapability READONLY   

AS  
BEGIN TRAN

BEGIN TRY

	/***
	Setup
	***/
	DECLARE @EmptyGuid UNIQUEIDENTIFIER = 0x0
	DECLARE @SolutionDetailId UNIQUEIDENTIFIER
	DECLARE @PublishedStatusId int
	DECLARE @AuthorityStatusId int
	DECLARE @SupplierStatusId int
	DECLARE @ParentSolutionId varchar(16) = SUBSTRING(@AdditionalServiceId, 1, CHARINDEX('A', @AdditionalServiceId) - 1)
	DECLARE @SupplierId varchar(6) = SUBSTRING(@ParentSolutionId, 1, CHARINDEX('-', @ParentSolutionId) - 1)
	
	/***
	Verify that parent Solution Exists
	***/
	IF NOT EXISTS (SELECT (1) FROM [dbo].[Solution] WHERE [Id] =  @ParentSolutionId)
		THROW 51000, 'Parent Solution record does not exist.', 1;  

	SELECT @PublishedStatusId=PublishedStatusId, @AuthorityStatusId = AuthorityStatusId, @SupplierStatusId = SupplierStatusId
		FROM [dbo].[Solution] WHERE [Id] =  @ParentSolutionId;

	/***
	Add the Additional Service if not already present
	***/
	IF NOT EXISTS (SELECT 1 FROM [dbo].[Solution] WHERE [Id] =  @AdditionalServiceId)	
	INSERT INTO [dbo].[Solution]
			   ([Id]
			   ,[ParentId]
			   ,[SupplierId]			   
			   ,[Name]
			   ,[PublishedStatusId]
			   ,[AuthorityStatusId]
			   ,[SupplierStatusId]
			   ,[LastUpdated]
			   ,[LastUpdatedBy])
		 VALUES
			   (@AdditionalServiceId
			   ,@ParentSolutionId
			   ,@SupplierId
			   ,@ServiceName 
			   ,@PublishedStatusId
			   ,@AuthorityStatusId
			   ,@SupplierStatusId			   
			   ,GETUTCDATE()
			   ,@EmptyGuid)	

	/***
	Update Additional Service name
	***/
	UPDATE [dbo].[Solution] 
	SET [Name] = @ServiceName, 
		PublishedStatusId = @PublishedStatusId, 
		AuthorityStatusId = @AuthorityStatusId,
		SupplierStatusId = @SupplierStatusId
	WHERE [Id] = @AdditionalServiceId;

	/***
	Add the Additional Service detail for the Additional Service if not already present and referenced by the Additional Service 
	***/
	IF NOT EXISTS (SELECT 1 FROM [dbo].[Solution] s
	INNER JOIN [dbo].[SolutionDetail] sd ON s.[Id] = sd.[SolutionId] AND s.[SolutionDetailId] = sd.[Id]
	WHERE s.[Id] =  @AdditionalServiceId)
	BEGIN
		SELECT @SolutionDetailId = NEWID()
		INSERT INTO [dbo].[SolutionDetail]
				   ([Id]
				   ,[SolutionId]
				   ,[Summary]
				   ,[FullDescription]
				   ,[PublishedStatusId]
				   ,[LastUpdated]
				   ,[LastUpdatedBy])
			 VALUES
				   (@SolutionDetailId
				   ,@AdditionalServiceId
				   ,@ServiceSummary
				   ,@ServiceDescription
				   ,@PublishedStatusId
				   ,GETUTCDATE()
				   ,@EmptyGuid)

		/***
		Update the Additional Service with the new Additional Service detail Id
		***/
		UPDATE [dbo].[Solution] 
		SET [SolutionDetailId] = @SolutionDetailId
		WHERE [Id] =  @AdditionalServiceId
	END

	/***
	Claim the Additional Service capabilities
	***/
	DELETE 
	FROM [dbo].[SolutionCapability]
	WHERE [SolutionId] = @AdditionalServiceId

	INSERT INTO [dbo].[SolutionCapability]
	SELECT @AdditionalServiceId AS SolutionId
		,c.[Id] as [CapabilityId]
		,1 AS [StatusId] --Passed - Full
		,GETUTCDATE() AS [LastUpdated]
	   ,@EmptyGuid AS [LastUpdatedBy]
	FROM @Capabilities cin
	INNER JOIN [dbo].[Capability] c ON c.[CapabilityRef] = cin.[CapabilityRef]

   COMMIT TRAN

END TRY
BEGIN CATCH

  ROLLBACK TRAN;
  THROW;
END CATCH
GO
