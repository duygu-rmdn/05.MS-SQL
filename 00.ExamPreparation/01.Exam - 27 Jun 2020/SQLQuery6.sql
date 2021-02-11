SELECT CONCAT(FirstName,' ',  LastName), 
	DATEDIFF(DAY, IssueDate,'04.24.2017' ) AS DATED,
	Status
	FROM Clients c
	JOIN Jobs j ON J.ClientId = C.ClientId
	WHERE Status != 'Finished'
	ORDER BY DATED DESC, C.ClientId