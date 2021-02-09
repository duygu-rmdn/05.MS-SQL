SELECT DepartmentID, SUM(Salary)
	FROM Employees
	GROUP BY DepartmentID
	ORDER BY DepartmentID

SELECT DepartmentID, MIN(Salary)
	FROM Employees
	WHERE HireDate > '01/01/2000' AND DepartmentID IN (2, 5, 7)
	GROUP BY DepartmentID
	ORDER BY DepartmentID

SELECT * INTO MyNewTable
	FROM Employees
	WHERE Salary > 30000

DELETE FROM MyNewTable
WHERE ManagerID = 42

UPDATE MyNewTable
SET Salary += 5000
WHERE DepartmentID = 1

SELECT DepartmentID, AVG(Salary)
	FROM MyNewTable
	GROUP BY DepartmentID

SELECT DepartmentID, MAX(Salary)
	FROM Employees
	GROUP BY DepartmentID
	HAVING MAX(Salary) < 30000 OR MAX(Salary) > 70000

SELECT COUNT(*)
	FROM Employees
	WHERE ManagerID IS NULL

SELECT distinct K.DepartmentID, K.Salary FROM (
SELECT DepartmentID, Salary, DENSE_RANK() OVER(PARTITION BY DepartmentID ORDER BY SALARY DESC) AS SA
	FROM Employees
	) AS K
	WHERE k.SA = 3

SELECT  DepartmentID, AVG(Salary)
	FROM Employees
	GROUP BY DepartmentID
	
SELECT TOP(10) FirstName,LastName, DepartmentID
	FROM Employees e
	WHERE Salary > (SELECT  AVG(Salary)
						FROM Employees 
						WHERE E.DepartmentID = DepartmentID
						GROUP BY DepartmentID )
	ORDER BY DepartmentID