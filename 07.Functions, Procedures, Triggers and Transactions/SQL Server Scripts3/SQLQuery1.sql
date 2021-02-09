CREATE PROC usp_GetEmployeesSalaryAbove35000 
AS
SELECT FirstName, LastName
	FROM Employees
	WHERE Salary > 35000

CREATE PROC usp_GetEmployeesSalaryAboveNumber
(@inputSalary DECIMAL(18,4)) 
AS
SELECT FirstName, LastName
	FROM Employees
	WHERE Salary >= @inputSalary

CREATE PROC usp_GetTownsStartingWith (@string VARCHAR(30))
AS
SELECT NAME
	FROM Towns
	WHERE Name LIKE @string + '%'

CREATE PROC usp_GetEmployeesFromTown (@input VARCHAR(30))
AS
SELECT FirstName, LastName
	FROM Employees e
	JOIN Addresses a ON e.AddressID = a.AddressID
	JOIN Towns t ON t.TownID = a.TownID
	WHERE t.Name = @input

CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4)) 
RETURNS VARCHAR(50)
AS
BEGIN
DECLARE @RESULT VARCHAR(50)
	IF (@salary < 30000)
		SET @RESULT= 'Low'
	ELSE IF (@salary < 50000)
		SET @RESULT= 'Average'
	ELSE 
		SET @RESULT = 'High'
RETURN @RESULT
END

CREATE PROC usp_EmployeesBySalaryLevel(@input VARCHAR(50))
AS
SELECT FirstName, LastName
	FROM Employees
	WHERE dbo.ufn_GetSalaryLevel(Salary) = @input

CREATE FUNCTION ufn_IsWordComprised(@setOfLetters VARCHAR(max), @word VARCHAR(MAX))
RETURNS BIT 
BEGIN
DECLARE @count INT = 1
WHILE (@count <= LEN(@word))
	BEGIN
	DECLARE @currChar CHAR(1) = SUBSTRING(@word, @count, 1)
		IF(CHARINDEX(@currChar, @setOfLetters) = 0) RETURN 0

		SET @count +=1
	END
	RETURN 1
END






CREATE PROC usp_DeleteEmployeesFromDepartment(@departmentId INT) 
AS
ALTER TABLE DEPARTMENTS
ALTER COLUMN MANAGERID INT NULL

DELETE FROM EmployeesProjects
WHERE EmployeeID IN (SELECT EmployeeID FROM Employees WHERE DepartmentID = @departmentId)

UPDATE Employees
SET ManagerID = NULL
WHERE EmployeeID IN (SELECT EmployeeID FROM Employees WHERE DepartmentID = @departmentId)

UPDATE Employees
SET ManagerID = NULL
WHERE ManagerID IN (SELECT EmployeeID FROM Employees WHERE DepartmentID = @departmentId)

UPDATE Departments
SET ManagerID = NULL
WHERE DepartmentID = @departmentId

DELETE FROM Employees
WHERE DepartmentID = @departmentId

DELETE FROM Departments
WHERE DepartmentID = @departmentId


SELECT COUNT(* )
	FROM Employees
WHERE DepartmentID = @departmentId