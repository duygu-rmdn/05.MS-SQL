SELECT FirstName, LastName
FROM Employees
WHERE LEFT(FirstName, 2) = 'SA'


SELECT FirstName, LastName
FROM Employees
WHERE  LastName LIKE '%EI%'

SELECT FirstName
	FROM Employees
	WHERE DepartmentID IN (3, 10) AND
	      HireDate BETWEEN '1994' AND '2006'

SELECT [Name] 
	FROM Towns
	WHERE LEN([Name]) IN (5, 6)
	ORDER BY [Name] ASC


SELECT *
	FROM Towns
	WHERE NOT([Name]  LIKE '[RDB]%')
	ORDER BY [Name] ASC

CREATE VIEW V_EmployeesHiredAfter2000 AS
SELECT FirstName, LastName
	FROM Employees
	WHERE DATEPART(YEAR, HireDate) > 2000

SELECT FirstName, LastName
	FROM Employees
	WHERE LEN(LastName) = 5

SELECT EmployeeID,	FirstName,	LastName,	Salary,
	DENSE_RANK() OVER (PARTITION BY Salary ORDER BY EmployeeID) AS [Rank]
	FROM Employees
	WHERE Salary BETWEEN 10000 AND 50000 
	ORDER BY Salary DESC