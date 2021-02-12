SELECT CONCAT(m.FirstName, ' ', m.LastName)
	FROM Mechanics m
	LEFT JOIN Jobs j ON j.MechanicId = m.MechanicId
	WHERE 
		(SELECT COUNT(JobId)
				FROM Jobs
				WHERE [Status] != 'Finished' AND MechanicId = m.MechanicId
				GROUP BY MechanicId, [Status]
		) IS NULL
	GROUP BY CONCAT(m.FirstName, ' ', m.LastName), m.MechanicId
