CREATE PROCEDURE usp_drug_respondents_load
AS

/*****************************************************************************************************************
NAME:    drug_respondents
PURPOSE: Find total number of respondents to the drug survey

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     02/20/2024   TSTAILEY      1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
Only returns one result in one column, the total
******************************************************************************************************************/
	BEGIN

		-- RESETS DATA
		TRUNCATE TABLE drug_respondents;

		INSERT INTO drug_respondents
			SELECT v.total_n
			FROM v_drug_respondents AS v;

		-- RELOADS DATA
		SELECT *
			FROM drug_respondents;
	END;
GO
