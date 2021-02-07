USE Geography

SELECT CountryCode,	MountainRange,	PeakName,	Elevation
	FROM Peaks p
	JOIN Mountains m ON p.MountainId = m.Id
	JOIN MountainsCountries mc ON mc.MountainId = p.MountainId
	WHERE p.Elevation > 2835 AND CountryCode = 'BG'
	ORDER BY p.Elevation DESC


SELECT c.CountryCode, COUNT(*)
	FROM Countries c
	JOIN MountainsCountries mc ON c.CountryCode = mc.CountryCode
	WHERE c.CountryCode IN ('US', 'RU', 'BG')
	GROUP BY c.CountryCode

