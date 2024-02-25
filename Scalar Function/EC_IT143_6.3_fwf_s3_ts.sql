-- Q: How do I separate First and Last name from Full name?
-- A: Full- Tom Bob needs to turn into First- Tom

SELECT t.ContactName
	FROM [dbo].[t_w3_schools_customers] AS t
	ORDER BY 1;