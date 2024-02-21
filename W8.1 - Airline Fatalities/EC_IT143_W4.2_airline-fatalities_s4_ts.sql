DROP VIEW IF EXISTS dbo.v_airline_fatalities;
GO

CREATE VIEW dbo.v_airline_fatalities
AS

/*****************************************************************************************************************
NAME:    airline_fatalities
PURPOSE: Find all fatalities across all provided airlines and sort by descending.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     02/20/2024   TSTAILEY      1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
Lists all results in order descending, select top result(s) if you want the #1. May need to reorder, 
"ORDER BY column OFFSET 0 ROWS" is a janky workaround that apparently is not guaranteed to work.

******************************************************************************************************************/

-- Q: Which airline has the most fatalities?
-- A: Lets add them all up and sort to find the greatest values.

	SELECT airline,(fatalities_85_99 + fatalities_00_14) AS total_fatalities
		FROM [airline-safety]
		ORDER BY total_fatalities OFFSET 0 ROWS;