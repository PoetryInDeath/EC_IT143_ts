CREATE FUNCTION [dbo].[udf_parse_first_name]
(@v_combined_name AS VARCHAR(500)
)
RETURNS VARCHAR (100)

/*****************************************************************************************************************
NAME:    First Name stripper
PURPOSE: Stripping first name from full name

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/23/2022   JJAUSSI       1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
Only tested to handle 1-2 names
 
******************************************************************************************************************/

-- Q: How do I separate First and Last name from Full name?
-- A: Full- Tom Bob needs to turn into First- Tom
-- ANSWER HELP FROM https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name, https://stackoverflow.com/questions/41462307/split-fullname-into-first-and-last-name, ASSUMING FULL NAME IS JUST FIRST + LAST NAME

	BEGIN

		DECLARE @v_first_name AS VARCHAR(100);

		SET @v_first_name = LEFT(@v_combined_name, CHARINDEX(' ',@v_combined_name + ' ') - 1);

		RETURN @v_first_name

	END;

GO