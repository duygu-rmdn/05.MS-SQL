SELECT CONCAT(m.FirstName, ' ', m.LastName) , AVG(DATEDIFF(DAY,  j.IssueDate, j.FinishDate))
	FROM Mechanics m
	JOIN Jobs j ON j.MechanicId = m.MechanicId
	GROUP BY m.FirstName, m.LastName, m.MechanicId
	ORDER BY m.MechanicId