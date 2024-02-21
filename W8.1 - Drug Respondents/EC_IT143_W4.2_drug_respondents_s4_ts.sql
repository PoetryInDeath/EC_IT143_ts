DROP VIEW IF EXISTS dbo.v_drug_respondents;
GO

CREATE VIEW dbo.v_drug_respondents
AS

/*****************************************************************************************************************
NAME:    drug_respondents
PURPOSE: Finds total respondents in drug data

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     02/20/2024   TSTAILEY      1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
Finds one value total

******************************************************************************************************************/

-- Q: What is the total number of respondents?
-- A: Grab n for every group and add all together.

	SELECT SUM(n) as total_n
		FROM [drug-use-by-age];