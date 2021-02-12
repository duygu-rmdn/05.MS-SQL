--Find all accounts, which have had one or more trips to a hotel in their hometown.
SELECT A.Id,	Email,	C.Name, COUNT(*)
	FROM AccountsTrips AS [at]
	JOIN Accounts AS a ON [at].AccountId = a.Id
	JOIN Trips T ON T.Id = AT.TripId
	JOIN Cities C ON C.Id = A.CityId
	JOIN Rooms AS r ON t.RoomId = r.Id
	JOIN Hotels AS h ON r.HotelId = h.Id
	WHERE A.CityId = H.CityId
	GROUP BY A.Id,  Email,C.Name
	ORDER BY COUNT(*) DESC, A.Id




                      