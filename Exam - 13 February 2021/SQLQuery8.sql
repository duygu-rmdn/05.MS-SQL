SELECT A.Id,	A.Name,	CONVERT(VARCHAR,A.Size) +'KB'
	FROM Files A
	LEFT JOIN Files S ON A.Id = S.ParentId
	WHERE  s.Id is null
	ORDER BY A.Id,	A.Name,	A.Size DESC
