-- Q: How do I separate First and Last name from Full name?
-- A: Full- Tom Bob needs to turn into First- Tom
-- ANSWER HELP FROM https://stackoverflow.com/questions/41462307/split-fullname-into-first-and-last-name, ASSUMING FULL NAME IS JUST FIRST + LAST NAME

SELECT t.CustomerID,
	t.CustomerName,
	t.ContactName,
	dbo.udf_parse_first_name(t.ContactName) AS ContactName_first_name,
	' ' AS ContractName_last_name, -- I guess last name is the next step
	t.Address,
	t.City,
	t.Country
	FROM dbo.t_w3_schools_customers AS t
	ORDER BY 3;