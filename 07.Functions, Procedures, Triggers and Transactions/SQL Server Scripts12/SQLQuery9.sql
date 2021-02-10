CREATE PROC usp_AssignProject @emloyeeId INT, @projectID INT
AS
BEGIN TRANSACTION
	IF (SELECT COUNT(*) FROM EmployeesProjects WHERE EmployeeID = @emloyeeId) >= 3
		BEGIN
			ROLLBACK
			RAISERROR('The employee has too many projects!', 16, 1)
			RETURN
		END
	ELSE
		BEGIN
			INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
			VALUES (@emloyeeId, @projectID)
		END
COMMIT