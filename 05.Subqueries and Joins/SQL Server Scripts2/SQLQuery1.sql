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

SELECT TOP(5) crs.CountryName, r.RiverName
	FROM Countries AS crs 
	LEFT JOIN Continents AS cts ON crs.ContinentCode = cts.ContinentCode
	LEFT OUTER JOIN CountriesRivers AS cr ON crs.CountryCode = cr.CountryCode
	LEFT OUTER JOIN Rivers AS r ON cr.RiverId = r.Id
	WHERE cts.ContinentName = 'Africa'
	ORDER BY crs.CountryName ASC

SELECT co.ContinentCode, cou.CurrencyCode
	FROM Continents co
	JOIN Countries cou on co.ContinentCode = cou.ContinentCode
	JOIN Currencies cu ON cu.CurrencyCode = cou.CurrencyCode
	ORDER BY