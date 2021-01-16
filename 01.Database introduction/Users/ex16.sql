CREATE DATABASE SoftUni
--•	Towns (!!Id!!, Name)
--•	Addresses (!!Id!!, AddressText, !!!!TownId!!!!)
--•	Departments (!!Id!!, Name)
--•	Employees (Id, FirstName, MiddleName, LastName, JobTitle, !!DepartmentId!!, HireDate, Salary, !!!AddressId!!)

CREATE TABLE Towns(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	[Name] NVARCHAR(100) NOT NULL,
)

CREATE TABLE Addresses(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	AddressText NVARCHAR(150) NULL,
	TownId INT NOT NULL,
)

CREATE TABLE Departments(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	[Name] NVARCHAR(100) NOT NULL,
)

CREATE TABLE Employees(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	FirstName NVARCHAR(100) NOT NULL,
	MiddleName NVARCHAR(100) NOT NULL,
	LastName NVARCHAR(100) NOT NULL,
	JobTitle NVARCHAR(100) NULL,
	DepartmentId  INT NOT NULL,
	HireDate DATETIME2 NULL,
	Salary INT, 
	AddressId INT NOT NULL
)

ALTER TABLE Addresses
ADD FOREIGN KEY (TownId) REFERENCES Towns(Id);

ALTER TABLE Employees
ADD FOREIGN KEY (DepartmentId) REFERENCES Departments(Id);

ALTER TABLE Employees
ADD FOREIGN KEY (AddressId) REFERENCES Addresses(Id);


SELECT [Name]
FROM Towns
ORDER BY [Name] ASC

SELECT [Name]
FROM Departments 
ORDER BY [Name] ASC

SELECT FirstName,LastName,JobTitle, Salary
FROM Employees 
ORDER BY Salary DESC

UPDATE Employees 
SET Salary *= 1.1
SELECT  Salary
FROM Employees 

