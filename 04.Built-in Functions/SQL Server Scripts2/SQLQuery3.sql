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

SELECT [Name] AS Game,
	CASE 
		WHEN DATEPART(HOUR, [Start]) < 12 THEN 'Morning'
		WHEN DATEPART(HOUR, [Start]) < 18 THEN 'Afternoon'
		WHEN DATEPART(HOUR, [Start]) < 24 THEN 'Evening'
	END AS [Part of the Day],
	CASE 
		WHEN Duration <= 3 THEN 'Extra Short'
		WHEN Duration < 7 THEN 'Short'
		WHEN Duration > 6 THEN 'Long'
		WHEN Duration IS NULL THEN 'Extra Long'
	END AS Duration
	FROM Games
	ORDER BY Game, Duration, [Part of the Day]

