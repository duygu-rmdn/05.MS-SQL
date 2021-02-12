SELECT A.ID, CONCAT(FirstName, ' ', LastName), MAX(DATEDIFF(DAY, ArrivalDate,ReturnDate)) , MIN(DATEDIFF(DAY, ArrivalDate,ReturnDate))
	FROM Accounts A 
	JOIN AccountsTrips AC ON AC.AccountId = A.Id
	JOIN Trips T ON T.Id = AC.TripId
	WHERE MiddleName IS NULL
	GROUP BY A.ID,  CONCAT(FirstName, ' ', LastName)
	ORDER BY MAX(DATEDIFF(DAY, ArrivalDate,ReturnDate)) DESC, MIN(DATEDIFF(DAY, ArrivalDate,ReturnDate))

