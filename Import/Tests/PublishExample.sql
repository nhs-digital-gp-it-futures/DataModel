/***
Declarations
***/
DECLARE @SolutionId varchar(14)

/***
SET DATA HERE
***/
SET @SolutionId = '99999-89'

/***
Execute
***/
EXEC PublishSolution @SolutionId

/***
Echo result
***/
SELECT sol.Id, sol.Name, p.Name as PublicationStatus, a.Name as AuthorityStatus, s.Name as SupplierStatus
	FROM Solution AS sol JOIN PublicationStatus AS P ON sol.PublishedStatusId = p.Id
		JOIN SolutionAuthorityStatus AS a ON sol.AuthorityStatusId = a.Id
		JOIN SolutionSupplierStatus AS s ON sol.SupplierStatusId = s.Id		
	WHERE sol.Id = @SolutionId