SELECT TOP(10) C.Id, Name,CountryCode,   COUNT(*)
	FROM Cities C
	JOIN Accounts A ON C.Id = A.CityId
	GROUP BY C.Id, Name,CountryCode
	ORDER BY  COUNT(*)DESC

