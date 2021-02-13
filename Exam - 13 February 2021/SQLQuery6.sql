SELECT Id,	Name,	Size
	FROM Files
	WHERE Name LIKE '%HTML%' AND Size > 1000
	ORDER BY Size DESC, ID, Name