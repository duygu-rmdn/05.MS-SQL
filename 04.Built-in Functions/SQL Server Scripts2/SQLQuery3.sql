SELECT TOP(50) [NAME], FORMAT([Start], 'yyyy-MM-dd') AS [Start]
	FROM Games
	WHERE DATEPART(YEAR,[Start]) BETWEEN 2011 AND 2012
	ORDER BY [Start], [NAME]


SELECT Username, SUBSTRING(Email, CHARINDEX('@', Email, 1) + 1, LEN(Email)) AS [Email Provider]
	FROM Users
	ORDER BY [Email Provider] ASC, Username


SELECT Username, IpAddress AS [IP Address]
	FROM Users
	WHERE IpAddress LIKE '___.1%.%.___'
	ORDER BY Username

