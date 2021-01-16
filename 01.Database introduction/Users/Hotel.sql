CREATE DATABASE Hotel

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
	AccountNumber INT NOT NULL,
	FirstName NVARCHAR(100) NOT NULL,
	LastName VARCHAR(100) NOT NULL,
	PhoneNumber INT NULL,
	EmergencyName NVARCHAR(100) NULL,
	EmergencyNumber INT NULL,
	Notes VARCHAR(500) NULL
)
INSERT INTO Customers (AccountNumber, FirstName, LastName) VALUES
(1213, 'ASFZ', 'NASDFME'),
(31, 'ASFDSFSZ', 'NASDSDFME'),
(311, 'SDD', 'NAMSFDE')
--SELECT * FROM Customers

CREATE TABLE RoomStatus(
	RoomStatus VARCHAR(100) NOT NULL,
	Notes VARCHAR(100) NULL,
)
INSERT INTO RoomStatus (RoomStatus) VALUES
('ASDSA'),
('ASDSADSA'),
('ASASDADSA')
--SELECT * FROM RoomStatus

CREATE TABLE RoomTypes(
	RoomTypes VARCHAR(100) NOT NULL,
	Notes VARCHAR(100) NULL,
)
INSERT INTO RoomTypes (RoomTypes) VALUES
('ASDSA'),
('ASDSADSA'),
('ASASDADSA')
--SELECT * FROM RoomTypes

CREATE TABLE BedTypes(
	BedTypes VARCHAR(100) NOT NULL,
	Notes VARCHAR(100) NULL,
)
INSERT INTO BedTypes (BedTypes) VALUES
('AWDSDSA'),
('ASDSDAADSA'),
('ASASDADADSA')
--SELECT * FROM RoomTypes

CREATE TABLE Rooms(
	RoomNumber INT NOT NULL,
	RoomType INT NOT NULL,
	BedType INT NOT NULL,
	Rate INT NULL,
	RoomStatus VARCHAR(100) NULL,
	Notes VARCHAR(500) NULL,
)
INSERT INTO Rooms (RoomNumber, RoomType, BedType) VALUES 
(12, 4, 5),
(122, 4, 2),
(121, 1,4)
--SELECT * FROM Rooms

CREATE TABLE Payments(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	EmployeeId INT NOT NULL,
	PaymentDate DATETIME2 NULL,
	AccountNumber INT NULL,
	FirstDateOccupied  DATETIME2 NULL,
	LastDateOccupied DATETIME2 NULL,
	TotalDays DATETIME2 NULL,
	AmountCharged INT,
	TaxRate INT, 
	TaxAmount INT, 
	PaymentTotal INT,
	Notes VARCHAR(100) NULL,
)
INSERT INTO Payments (EmployeeId) VALUES 
(1),
(5),
(3)
--SELECT * FROM Payments

CREATE TABLE Occupancies(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	EmployeeId INT NOT NULL,
	DateOccupied DATETIME2 NULL,
	AccountNumber INT NULL,
	RoomNumber INT,
	RateApplied INT, 
	PhoneCharge INT, 
	Notes VARCHAR(100) NULL,
)
INSERT INTO Occupancies (EmployeeId) VALUES 
(1),
(5),
(3)
--SELECT * FROM Occupancies

