SELECT A.ID, CONCAT(FirstName, ' ', ISNULL(MiddleName + ' ',''), LastName), C.Name, CH.Name,
	CASE 
		WHEN  T.CancelDate IS NULL THEN CONCAT(DATEDIFF(DAY, T.ArrivalDate, T.ReturnDate), 'days')
		else 'Canceled'
	END
	FROM AccountsTrips AT 
	JOIN Accounts A ON A.Id = AT.AccountId
	JOIN Trips T ON T.Id = AT.TripId
	JOIN Cities C ON C.Id = A.CityId
	JOIN Rooms R ON R.Id = T.RoomId
	JOIN Hotels H ON H.Id = R.HotelId
	JOIN Cities CH ON H.CityId = CH.Id
	ORDER BY CONCAT(FirstName, ' ', ISNULL(MiddleName + ' ',''), LastName), t.Id


