CREATE FUNCTION udf_GetCost(@JobId INT)
RETURNS DECIMAL(18, 2) AS
BEGIN
DECLARE @RESULT DECIMAL(18, 2) = (SELECT SUM(P.Price)
	FROM Jobs j 
	  JOIN Orders o ON O.JobId = J.JobId
	  JOIN OrderParts OP ON OP.OrderId = O.OrderId
	  JOIN Parts P ON OP.PartId = P.PartId
	  WHERE J.JobId = @JobId
	GROUP BY J.JobId)
	IF(@RESULT IS NULL)
	RETURN 0
	RETURN @RESULT
END						




