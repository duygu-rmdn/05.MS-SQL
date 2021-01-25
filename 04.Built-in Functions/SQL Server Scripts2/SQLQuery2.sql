SELECT *
	FROM PEAKS

SELECT PeakName, RiverName,
	LOWER(CONCAT(LEFT(PeakName, LEN(PeakName)-1), RiverName)) AS Mix
	FROM PEAKS, RIVERS
	WHERE RIGHT(PeakName, 1) = LEFT(RiverName, 1)
	ORDER BY Mix