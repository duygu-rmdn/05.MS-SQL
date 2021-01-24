CREATE DATABASE UNIVERSITYTEST1
CREATE TABLE Subjects
(
    SubjectID INT PRIMARY KEY IDENTITY,
    SubjectName VARCHAR(50) NOT NULL
)
 
CREATE TABLE Majors
(
    MajorID INT PRIMARY KEY IDENTITY,
    [Name] VARCHAR(50) NOT NULL
)
 
CREATE TABLE Students
(
    StudentID INT PRIMARY KEY IDENTITY,
    StudentNumber CHAR(10) NOT NULL,
    StudentName VARCHAR(50),
    MajorID INT
 
    CONSTRAINT FK_Stuident_MajorID FOREIGN KEY (MajorID) REFERENCES Majors(MajorID)
)
 
CREATE TABLE Agenda
(
    StudentID INT,
    SubjectID INT
 
    CONSTRAINT PK_Student_Subject PRIMARY KEY (StudentID,SubjectID),
    CONSTRAINT FK_Agenda_StudentID FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    CONSTRAINT FK_Agenda_SubjectID FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
)
 
CREATE TABLE Payments
(
    PaymentID INT PRIMARY KEY IDENTITY,
    PaymentDate DATETIME NOT NULL,
    PaymentAmount DECIMAL(19,2) NOT NULL,
    StudentID INT NOT NULL
 
    CONSTRAINT FK_Payment_Student FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
)