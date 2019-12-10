
IF type_id('[dbo].[SolutionImportCapability]') IS NULL
CREATE TYPE [dbo].[SolutionImportCapability] as TABLE (CapabilityRef varchar(10)) 
GO

CREATE OR ALTER PROCEDURE SolutionImport
	@SupplierId varchar(6),
	@SupplierName varchar(255), -- not used, useful for keeping track
	@SolutionId varchar(14),
	@SolutionName varchar(255),
	@IsFoundation bit,
	@Capabilities SolutionImportCapability READONLY   

AS  
BEGIN TRAN

BEGIN TRY

	/***
	Setup
	***/

	DECLARE @EmptyGuid UNIQUEIDENTIFIER = 0x0
	DECLARE @OrganisationId UNIQUEIDENTIFIER
	DECLARE @FrameworkId varchar(10) = 'NHSDGP001'
	DECLARE @SolutionDetailId UNIQUEIDENTIFIER



	/***
	Verify that organisation and supplier exist 
	***/
	IF NOT EXISTS (SELECT 1 FROM [dbo].[Supplier] WHERE [Id] =  @SupplierId)
		THROW 51000, 'Supplier record does not exist.', 1;  

	/***
	Get the Organisation id
	***/
	SELECT @OrganisationId = OrganisationId
	FROM [dbo].[Supplier]
	WHERE [Id] =  @SupplierId

	/***
	Add the solution if not already present
	***/
	IF NOT EXISTS (SELECT 1 FROM [dbo].[Solution] WHERE [Id] =  @SolutionId)
	INSERT INTO [dbo].[Solution]
			   ([Id]
			   ,[SupplierId]
			   ,[OrganisationId]
			   ,[SolutionDetailId]
			   ,[Name]
			   ,[PublishedStatusId]
			   ,[AuthorityStatusId]
			   ,[SupplierStatusId]
			   ,[OnCatalogueVersion]
			   ,[LastUpdated]
			   ,[LastUpdatedBy])
		 VALUES
			   (@SolutionId
			   ,@SupplierId
			   ,@OrganisationId
			   ,NULL
			   ,@SolutionName 
			   ,1 --Draft
			   ,1 --Draft
			   ,1 --Draft
			   ,0
			   ,GETUTCDATE()
			   ,@EmptyGuid)
	/***
	Update solution name
	***/
	UPDATE [dbo].[Solution] 
	SET [Name] = @SolutionName
	WHERE [Id] = @SolutionId

	/***
	Add a framework solution record if not already present
	***/
	IF NOT EXISTS (SELECT 1 FROM [dbo].[FrameworkSolutions] WHERE [SolutionId] =  @SolutionId AND [FrameworkId] = @FrameworkId)
	INSERT INTO [dbo].[FrameworkSolutions]
			   ([FrameworkId]
			   ,[SolutionId]
			   ,[IsFoundation]
			   ,[LastUpdated]
			   ,[LastUpdatedBy])
		 VALUES
			   (@FrameworkId
			   ,@SolutionId
			   ,0
			   ,GETUTCDATE()
			   ,@EmptyGuid)

	/***
	Update the foundation solution flag
	***/
	UPDATE [dbo].[FrameworkSolutions] 
	SET [IsFoundation] = @IsFoundation
	WHERE [SolutionId] = @SolutionId
	AND [FrameworkId] = @FrameworkId

	/***
	Add the solution detail if not already present and referenced by the solution 
	***/
	IF NOT EXISTS (SELECT 1 FROM [dbo].[Solution] s
	INNER JOIN [dbo].[SolutionDetail] sd ON s.[Id] = sd.[SolutionId] AND s.[SolutionDetailId] = sd.[Id]
	WHERE s.[Id] =  @SolutionId)
	BEGIN
		SELECT @SolutionDetailId = NEWID()
		INSERT INTO [dbo].[SolutionDetail]
				   ([Id]
				   ,[SolutionId]
				   ,[PublishedStatusId]
				   ,[LastUpdated]
				   ,[LastUpdatedBy])
			 VALUES
				   (@SolutionDetailId
				   ,@SolutionId
				   ,1 --Draft
				   ,GETUTCDATE()
				   ,@EmptyGuid)

		/***
		Update the solution with the new Solution detail Id
		***/
		UPDATE [dbo].[Solution] 
		SET [SolutionDetailId] = @SolutionDetailId
		WHERE [Id] =  @SolutionId
	END

	/***
	Claim the solution capabilities
	***/
	DELETE 
	FROM [dbo].[SolutionCapability]
	WHERE [SolutionId] = @SolutionId

	INSERT INTO [dbo].[SolutionCapability]
	SELECT @SolutionId AS SolutionId
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
