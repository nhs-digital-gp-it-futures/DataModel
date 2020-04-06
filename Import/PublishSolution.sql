CREATE OR ALTER PROCEDURE PublishSolution
	@SolutionId varchar(16)	
AS  
BEGIN TRAN

BEGIN TRY
	DECLARE @EmptyGuid UNIQUEIDENTIFIER = 0x0
	DECLARE @solutionDetailId UNIQUEIDENTIFIER 

	-- Move solution to published
	UPDATE Solution 
		SET PublishedStatusId = 3,
			AuthorityStatusId = 2,
			Supplierstatusid = 3
		WHERE id = @SolutionId

	SELECT @solutionDetailId = SolutionDetailId from Solution

	UPDATE SolutionDetail
		SET PublishedStatusId = 3
		WHERE Id = @solutionDetailId
		
   COMMIT TRAN

END TRY
BEGIN CATCH

  ROLLBACK TRAN;
  THROW;
END CATCH
GO