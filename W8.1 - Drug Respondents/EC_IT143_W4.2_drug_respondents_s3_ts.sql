-- Q: What is the total number of respondents?
-- A: Grab n for every group and add all together.

SELECT SUM(n) as total_n
	FROM [drug-use-by-age];