SELECT TOP(5) EmployeeId, JobTitle, e.AddressID, AddressText
	FROM Employees e
	JOIN Addresses a ON e.AddressID = a.AddressID
	ORDER BY e.AddressID

SELECT TOP(50) FirstName, LastName, t.Name, AddressText
	FROM Employees e
	JOIN Addresses a ON e.AddressID = a.AddressID
	JOIN Towns t ON t.TownID = a.TownID
	ORDER BY FirstName, LastName


SELECT TOP(50) EmployeeID,FirstName,LastName,d.Name
	FROM Employees e
	JOIN Departments d ON d.DepartmentID = e.DepartmentID
	WHERE d.Name = 'Sales'
	ORDER BY EmployeeID 



SELECT TOP(5) EmployeeID,FirstName,Salary,d.Name
	FROM Employees e
	JOIN Departments d ON d.DepartmentID = e.DepartmentID
	WHERE Salary > 15000
	ORDER BY d.DepartmentID 


SELECT TOP(3) e.EmployeeID, FirstName
	FROM Employees e
	LEFT JOIN EmployeesProjects ep ON ep.EmployeeID = e.EmployeeID
	WHERE ep.EmployeeID IS NULL
	ORDER BY e.EmployeeID  

SELECT FirstName, LastName, HireDate, d.Name 
	FROM Employees e
	JOIN Departments d ON d.DepartmentID = e.DepartmentID
	WHERE HireDate > '1.1.1999' AND d.Name IN ('Sales', 'Finance')
	ORDER BY HireDate

SELECT TOP(5)  e.EmployeeID, FirstName, p.Name
	FROM Employees e
	JOIN EmployeesProjects ep ON ep.EmployeeID = e.EmployeeID
	JOIN Projects p ON p.ProjectID = ep.ProjectID
	WHERE StartDate > CONVERT(datetime, '13.08.2002',104) AND EndDate IS NULL
	ORDER BY e.EmployeeID  

SELECT e.EmployeeID, FirstName, 
	CASE
		WHEN DATEPART(YEAR, p.StartDate) >= 2005 THEN NULL
		ELSE P.Name
	END AS ProjectName
	FROM Employees e
	JOIN EmployeesProjects ep ON ep.EmployeeID = e.EmployeeID
	JOIN Projects p ON p.ProjectID = ep.ProjectID
	WHERE e.EmployeeID = 24

SELECT e.EmployeeID, e.FirstName, e.ManagerID, d.FirstName AS ManagerName
	FROM Employees e 
	JOIN Employees d ON d.EmployeeID = e.ManagerID
	WHERE e.ManagerID IN (3, 7)
	ORDER BY e.EmployeeID 