SELECT CONCAT(FirstName,' ',  LastName), Status, IssueDate	
	FROM Mechanics m 
	JOIN Jobs j ON j.MechanicId = m.MechanicId
	order by m.MechanicId, IssueDate, JobId