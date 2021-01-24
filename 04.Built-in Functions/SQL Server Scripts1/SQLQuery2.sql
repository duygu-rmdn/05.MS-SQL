SELECT CountryName,	ISOCode 
	FROM Countries
	WHERE (LEN(CountryName) - LEN(REPLACE(CountryName, 'A', ''))) >=3
	ORDER BY IsoCode