CREATE DATABASE People

CREATE TABLE People(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(200) NOT NULL,
	Picture VARCHAR(MAX),
	Height DECIMAL(2),
	[Weight] DECIMAL(2),
	Gender VARCHAR NOT NULL,
	Birthdate DATE NOT NULL,
	Biography NVARCHAR(MAX)
)


INSERT INTO People(Id, Name,Picture,Height,[Weight], Gender, Birthdate, Biography) VALUES
(1,'Pesho',NULL, NULL, NULL, 'm', 2021-01-12, NULL),
(2,'Mariq',NULL, NULL, NULL, 'f', 2020-02-10, NULL),
(3,'Gosho',NULL, NULL, NULL, 'm', 1921-01-12, NULL),
(4, 'Ivan',NULL, NULL, NULL, 'm', 2321-11-14, NULL),
(5,  'Ani',NULL, NULL, NULL, 'f', 2021-06-12, NULL)