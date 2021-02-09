SELECT COUNT(*) 
	FROM WizzardDeposits

SELECT MAX(MagicWandSize) 
	FROM WizzardDeposits

SELECT DepositGroup, MAX(MagicWandSize) 
	FROM WizzardDeposits
	GROUP BY DepositGroup

SELECT TOP(2) DepositGroup
	FROM WizzardDeposits
	GROUP BY DepositGroup
	ORDER BY AVG(MagicWandSize) 

SELECT DepositGroup, SUM(DepositAmount)
	FROM WizzardDeposits
	GROUP BY DepositGroup


SELECT DepositGroup, SUM(DepositAmount)
	FROM WizzardDeposits
	WHERE MagicWandCreator = 'Ollivander family'
	GROUP BY DepositGroup

SELECT DepositGroup, SUM(DepositAmount)
	FROM WizzardDeposits
	WHERE MagicWandCreator = 'Ollivander family'
	GROUP BY DepositGroup
	HAVING SUM(DepositAmount) < 150000
	ORDER BY SUM(DepositAmount) DESC

SELECT DepositGroup, MagicWandCreator, MIN(DepositCharge)
	FROM WizzardDeposits
	GROUP BY DepositGroup, MagicWandCreator
	ORDER BY MagicWandCreator ASC, DepositGroup ASC

SELECT AgeGroup, COUNT(AgeGroup) FROM (
SELECT 
	CASE
		WHEN Age < 11 THEN '[0-10]'
		WHEN Age < 21 THEN '[11-20]'
		WHEN Age < 31 THEN '[21-30]'
		WHEN Age < 41 THEN '[31-40]'
		WHEN Age < 51 THEN '[41-50]'
		WHEN Age < 61 THEN '[51-60]'
		ELSE '[61+]'
	END AS AgeGroup
	FROM WizzardDeposits) AS K
	GROUP BY AgeGroup

SELECT SUBSTRING(FirstName, 1, 1) AS FirstLetter
	FROM WizzardDeposits
	WHERE DepositGroup = 'Troll Chest'
	GROUP BY SUBSTRING(FirstName, 1, 1)

SELECT DepositGroup,	IsDepositExpired,	AVG(DepositInterest) 
	FROM WizzardDeposits
	WHERE DepositStartDate > '01/01/1985'
	GROUP BY DepositGroup, IsDepositExpired
	ORDER BY DepositGroup DESC, IsDepositExpired

SELECT 
	sum(w.DepositAmount - wi.DepositAmount) AS DIFERENCE
	FROM WizzardDeposits w
	JOIN WizzardDeposits wi ON w.Id + 1 = wi.Id 
	
