
CREATE FUNCTION udf_GetAvailableRoom(@HotelId INT, @Date DATETIME, @People INT)
RETURNS VARCHAR(MAX)
AS
BEGIN 
 DECLARE @ROOMiNFO VARCHAR(MAX)=  (SELECT TOP(1)  
	'Room ' + CONVERT(VARCHAR,R.Id) + ': ' + R.Type + ' (' + CONVERT(VARCHAR,R.Beds) + ' beds) - $' + CONVERT(VARCHAR,(R.Price + BaseRate) * @People)
	FROM Rooms R 
	JOIN HotelS H ON R.HotelId = H.ID
	WHERE @HotelId = H.Id AND R.Beds >= @People AND 
	NOT EXISTS (SELECT * FROM Trips T WHERE T.RoomId = R.Id AND T.CancelDate IS NULL
							AND @Date BETWEEN ArrivalDate AND ReturnDate)
	ORDER BY (R.Price + BaseRate) * @People DESC)
	IF @ROOMiNFO IS NULL RETURN 'No rooms available'
	 RETURN @ROOMiNFO
	END