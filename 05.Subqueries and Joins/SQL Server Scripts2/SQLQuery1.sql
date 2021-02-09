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

SELECT ContinentCode,	CurrencyCode,	Total FROM
(SELECT ContinentCode, CurrencyCode, COUNT(CurrencyCode) AS Total,
	DENSE_RANK() OVER(PARTITION BY ContinentCode ORDER BY COUNT(CurrencyCode) DESC) AS Ranked
	FROM Countries
	GROUP BY ContinentCode, CurrencyCode) AS K
	WHERE Total > 1 AND Ranked = 1
	ORDER BY ContinentCode

SELECT COUNT(*) 
	FROM Countries c
	LEFT JOIN MountainsCountries mc ON c.CountryCode = mc.CountryCode
	WHERE MountainId IS NULL

SELECT TOP(5) CountryName, MAX(Elevation) AS HighestPeakElevation, MAX(r.Length) AS LongestRiverLength
	FROM Countries c
	JOIN MountainsCountries mc ON c.CountryCode = mc.CountryCode
	JOIN Mountains m ON m.Id = mc.MountainId
	JOIN Peaks p ON p.MountainId = mc.MountainId
	JOIN CountriesRivers cr ON c.CountryCode = cr.CountryCode
	JOIN Rivers r ON r.Id = cr.RiverId
	GROUP BY c.CountryName
	ORDER BY HighestPeakElevation DESC, LongestRiverLength DESC, CountryName

SELECT TOP(5) CountryName,	[Highest Peak Name],	[Highest Peak Elevation],	Mountain FROM 
(SELECT CountryName,
	ISNULL( p.PeakName,'(no highest peak)') AS [Highest Peak Name],
	ISNULL( MAX(p.Elevation), '0') AS [Highest Peak Elevation],
	ISNULL(M.MountainRange, '(no mountain)') AS Mountain,
	DENSE_RANK() OVER (PARTITION BY CountryName ORDER BY MAX(p.Elevation) DESC) AS RANKED
	FROM Countries c
	LEFT JOIN MountainsCountries mc ON c.CountryCode = mc.CountryCode
	LEFT JOIN Mountains m ON m.Id = mc.MountainId
	LEFT JOIN Peaks p ON p.MountainId = mc.MountainId
	GROUP BY CountryName, p.PeakName, m.MountainRange) AS K
	WHERE K.Ranked = 1
	ORDER BY CountryName, [Highest Peak Name]