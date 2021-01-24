USE [Geography]

SELECT * FROM Mountains
WHERE MountainRange = 'Rila'

SELECT * FROM Peaks 
WHERE MountainId = 17

SELECT MountainRange, PeakName, Elevation 
	FROM Mountains
	JOIN Peaks ON Peaks.MountainId = Mountains.Id
	WHERE MountainRange = 'Rila'
	ORDER BY Elevation DESC