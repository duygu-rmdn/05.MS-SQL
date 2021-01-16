CREATE DATABASE Movies

CREATE TABLE Directors(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	DirectorName VARCHAR(300) NOT NULL,
	Notes NVARCHAR(500) NULL
)

CREATE TABLE Genres(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	GenreName VARCHAR(300) NOT NULL,
	Notes NVARCHAR(500) NULL
)

CREATE TABLE Categories(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	CategoryName VARCHAR(300) NOT NULL,
	Notes NVARCHAR(500) NULL
)

CREATE TABLE Movies(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	Title NVARCHAR(50) NOT NULL,
	DirectorId INT NOT NULL,
	CopyrightYear DATETIME2 NOT NULL, 
	[Length] INT NULL,
	GenreId INT NOT NULL, 
	CategoryId INT NOT NULL, 
	Rating INT NULL, 
	Notes NVARCHAR(500) NULL
)

INSERT INTO Directors(DirectorName) VALUES 
('C:\ABSJKDBA\ASDAS\SA'),
('C:\ABSJKD\SA'),
('C:\ABSJKDBA\ASAS\SA'),
('C:\KDBA\ASS\SA'),
('C:\ABSJKDBA\ASDSADSAS\SA')

--SELECT * FROM Directors

INSERT INTO Genres(GenreName) VALUES 
('PeshO'),
('CPeshOPeshO\SA'),
('PeshO\PeshO'),
('C:\PeshO\PeshO\SA'),
('CPeshOPeshO\PeshO\SA')

--SELECT * FROM Genres

INSERT INTO Categories(CategoryName) VALUES 
('PeADAshO'),
('CPeshOPshADADO\SA'),
('PesashO'),
('C:\PeshADsssafhO\SA'),
('ada')

--SELECT * FROM Categories
INSERT INTO Movies(Title, DirectorId, CopyrightYear, GenreId, CategoryId) VALUES 
('PeADAshO', 1, GETDATE(), 3, 5),
('PeshO', 2, GETDATE(), 2, 2),
('DSGSD', 2, GETDATE(), 4, 3),
('PeADFDSFDFSO', 4, GETDATE(), 2, 4),
('PeADhO', 1, GETDATE(), 3, 3)
--SELECT * FROM Movies

