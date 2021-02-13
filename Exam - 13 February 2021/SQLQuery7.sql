SELECT I.ID, U.Username + ' : ' + I.Title
	FROM Issues I
	JOIN Users U ON U.Id = I.AssigneeId
	ORDER BY I.Id DESC,  I.AssigneeId
