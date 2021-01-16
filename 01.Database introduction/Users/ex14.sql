CREATE DATABASE CarRental

CREATE TABLE Categories(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	CategoryName VARCHAR(100) NOT NULL,
	DailyRate INT NOT NULL,
	WeeklyRate INT NOT NULL,
	MonthlyRate INT NOT NULL,
	WeekendRate INT NOT NULL
)

INSERT INTO Categories (CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate) VALUES 
('Category1', 2, 3, 4, 5),
('Category2', 4, 6, 16, 3),
('Category3', 4, 6, 1, 6)

--SELECT * FROM Categories

CREATE TABLE Cars (
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	PlateNumber INT NOT NULL,
	Manufacturer VARCHAR(100) NULL,
	Model VARCHAR(100) NULL,
	CarYear DATETIME2 NULL,
	CategoryId INT NOT NULL,
	Doors INT NULL, 
	Picture VARCHAR(MAX) NULL,
	Condition VARCHAR(100) NULL,
	Available VARCHAR(100) NULL,
)

INSERT INTO Cars (PlateNumber, CategoryId) VALUES 
(1, 2),
(3, 2),
(4, 4)

--SELECT * FROM Cars


CREATE TABLE Employees(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	FirstName VARCHAR(100) NOT NULL,
	LastName VARCHAR(100) NOT NULL,
	Title VARCHAR(100) NOT NULL,
	Notes VARCHAR(100) NULL,
)

INSERT INTO Employees (FirstName, LastName, Title) VALUES
('fIRSTnAME', 'Lastd', 'title'),
('fIRSE', 'Ladsfd', 'titfe'),
('fIRsnAME', 'ftd', 'titdfle')

--SELECT * FROM Employees

CREATE TABLE Customers (
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	DriverLicenceNumber INT NOT NULL,
	FullName NVARCHAR(100) NOT NULL,
	[Address] NVARCHAR(500) NULL,
	City NVARCHAR(500) NULL,
	ZIPCode INT NULL,
	Notes VARCHAR(500) NULL
)

INSERT INTO Customers (DriverLicenceNumber, FullName) VALUES
(3, 'NAME'),
(2, 'NASDFME'),
(1, 'NAMSFDE')

--SELECT * FROM Customers

CREATE TABLE RentalOrders (
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	EmployeeId INT NOT NULL,
	CustomerId INT NOT NULL,
	CarId INT NOT NULL,
	TankLevel INT NULL,
	KilometrageStart INT NULL, 
	KilometrageEnd INT NULL, 
	TotalKilometrage INT NULL, 
	StartDate DATETIME2 NULL,
	EndDate DATETIME2 NULL,
	TotalDays DATETIME2 NULL,
	RateApplied  INT NULL, 
	TaxRate   INT NULL, 
	OrderStatus VARCHAR(50) NULL,
	Notes VARCHAR(500) NULL
)

INSERT INTO RentalOrders (EmployeeId, CustomerId, CarId) VALUES
(1, 5, 4),
(3, 2, 5),
(1, 1, 2)

--SELECT * FROM RentalOrders