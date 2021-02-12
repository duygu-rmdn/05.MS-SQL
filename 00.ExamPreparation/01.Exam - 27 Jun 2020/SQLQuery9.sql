SELECT j.JobId, SUM(Price) AS Total
	FROM Jobs j
	LEFT JOIN Orders o ON J.JobId = O.JobId
	LEFT JOIN OrderParts op ON op.OrderId = O.OrderId
	LEFT JOIN Parts p ON p.PartId = op.PartId
	WHERE J.Status = 'Finished'
	GROUP BY j.JobId
	ORDER BY SUM(Price) DESC, j.JobId