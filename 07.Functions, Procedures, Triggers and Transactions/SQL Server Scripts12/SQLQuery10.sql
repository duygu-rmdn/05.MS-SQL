
CREATE TRIGGER tr_DeletedEmployeesTrigger
ON Employees FOR DELETE
AS
	INSERT INTO Deleted_Employees (FirstName, LastName, MiddleName, JobTitle, DepartmentId, Salary)
	SELECT FirstName, LastName, MiddleName, JobTitle, DepartmentID, Salary FROM deleted
