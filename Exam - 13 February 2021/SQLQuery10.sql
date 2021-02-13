SELECT Username, AVG(Size)
	FROM Commits C 
	 JOIN Users U ON C.ContributorId = U.Id
	 JOIN Files F ON F.CommitId = C.Id
	 GROUP BY Username
	 ORDER BY AVG(Size) DESC, Username