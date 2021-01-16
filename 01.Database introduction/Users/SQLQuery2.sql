CREATE DATABASE People

CREATE TABLE People(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	[Name] NVARCHAR(200) NOT NULL,
    Picture VARBINARY(MAX) NULL
    CHECK(DATALENGTH(Picture) <= (1024 * 1024) * 2),
	Height DECIMAL(3,1),
	[Weight] DECIMAL(5,2),
	Gender CHAR(1) NOT NULL,
	Birthdate DATETIME2 NOT NULL,
	Biography NVARCHAR(MAX)
)


INSERT INTO People( Name,Picture,Height,[Weight], Gender, Birthdate, Biography) VALUES
('Pesho',NULL, NULL, NULL, 'm', '2021-01-12', NULL),
('Mariq',NULL, NULL, NULL, 'f', '2020-02-10', NULL),
('Gosho',NULL, NULL, NULL, 'm', '1921-01-12', NULL),
( 'Ivan',NULL, NULL, NULL, 'm', '2321-11-14', NULL),
(  'Ani',NULL, NULL, NULL, 'f', '2021-06-12', NULL)


