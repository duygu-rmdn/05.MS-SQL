SELECT FirstName,	LastName,	BirthDate,	C.Name	,Email
	FROM Accounts A 
	JOIN Cities C ON C.Id = A.CityId
	WHERE Email LIKE 'e%'
	ORDER BY C.Name