SELECT TOP(5) R.Id, r.Name, COUNT(*)
	FROM RepositoriesContributors RC 
	 JOIN Repositories R ON R.Id = RC.RepositoryId
	 JOIN Commits C ON C.RepositoryId = R.Id
	GROUP BY r.Name, R.Id
	ORDER BY COUNT(*) DESC, R.Id, r.Name
