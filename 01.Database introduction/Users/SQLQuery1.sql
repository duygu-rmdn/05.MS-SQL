USE People

CREATE TABLE Users(
	Id BIGINT PRIMARY KEY IDENTITY NOT NULL,
	Username VARCHAR(30) NOT NULL,
	[Password] VARCHAR(26) NOT NULL,
	ProfilePicture VARBINARY(MAX) NULL,
	LastLoginTime DATETIME2 NULL,
	IsDeleted VARCHAR NULL
)

INSERT INTO Users (Username, [Password],[ProfilePicture],[LastLoginTime],[IsDeleted]) VALUES
('Pesho', '123', NULL, NULL, NULL),
('Pesho', '123', NULL, NULL, NULL),
('Pesho', '123', NULL, NULL, NULL),
('Pesho', '123', NULL, NULL, NULL),
('Pesho', '123', NULL, NULL, NULL)


ALTER TABLE Users
DROP CONSTRAINT [PK__Users__3214EC077ED23507]

ALTER TABLE Users
ADD CONSTRAINT PK_IdUsername PRIMARY KEY(Id, Username) 