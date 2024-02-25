-- Q: How do I separate First and Last name from Full name?
-- A: Full- Tom Bob needs to turn into First- Tom
-- ANSWER HELP FROM https://stackoverflow.com/questions/41462307/split-fullname-into-first-and-last-name, ASSUMING FULL NAME IS JUST FIRST + LAST NAME

SELECT t.ContactName,
	LEFT(t.ContactName, CHARINDEX(' ',t.ContactName + ' ') - 1) AS "first_name"    
	FROM [dbo].[t_w3_schools_customers] AS t
	ORDER BY 1;
