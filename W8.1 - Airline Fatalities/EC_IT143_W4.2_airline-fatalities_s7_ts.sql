CREATE PROCEDURE usp_airline_fatalities_load
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
Lists all results in order descending, select top result(s) if you want the #1

******************************************************************************************************************/
	BEGIN

		-- RESETS DATA
		TRUNCATE TABLE airline_fatalities;

		INSERT INTO airline_fatalities
			SELECT v.airline,
			v.total_fatalities
			FROM v_airline_fatalities AS v;

		-- RELOADS DATA
		SELECT *
			FROM airline_fatalities
			ORDER BY total_fatalities DESC;
	END;
GO