/*****************************************************************************************************************
NAME:    Drug Respondents
PURPOSE: Answering questions about the data set.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     02/23/2024   TSTAILEY      1. Built this script for EC IT143


RUNTIME: 
Xm Xs

NOTES: 
This is survey data, so the data may not be representative of any population.
 
******************************************************************************************************************/



-- Q1: What is the numbers of those who have drank alcohol under 21 in ther past year, compared to those at or over 21?
-- A1: Lets do some math.




SELECT 'underage' AS [group], SUM(n) AS sum_n, SUM(alcohol_n) AS sum_alcohol_n, (SUM(alcohol_n)/SUM(n)*100.0) AS [percent]
	FROM (
		SELECT TOP(9) age, n, ROUND(n*alcohol_use/100,0) AS alcohol_n
			FROM [drug-use-by-age]
			ORDER BY age) 
	AS underage
UNION
SELECT 'overage' AS [group], SUM(n) AS sum_n, SUM(alcohol_n) AS sum_alcohol_n, (SUM(alcohol_n)/SUM(n)*100.0) AS [percent]
	FROM (
		SELECT age, n, ROUND(n*alcohol_use/100,0) AS alcohol_n
			FROM [drug-use-by-age]
			ORDER BY age
			OFFSET 9 ROWS) 
	AS overage;
-- Q2: Assuming that stimulant and sedative use in each age group is not correlated, what are the chances of a random person to be a user of both?
-- A2: Lets find out

SELECT age, n, stimulant_use,sedative_use,(stimulant_use*sedative_use/100) AS theoretical_user_of_both
	FROM [drug-use-by-age]
	ORDER BY age;

-- Q3: What is the total number of n of each drug
-- A3: Hopefully percent numbers are good enough to be approximately right

SELECT age, n,
	ROUND(n*alcohol_use/100,0) AS alcohol_n,
    ROUND(n*marijuana_use/100,0) AS marijuana_n,
	ROUND(n*cocaine_use/100,0) AS cocaine_n,
	ROUND(n*crack_use/100,0) AS crack_n,
	ROUND(n*heroin_use/100,0) AS heroin_n,
	ROUND(n*hallucinogen_use/100,0) AS hallucinogen_n,
    ROUND(n*inhalant_use/100,0) AS inhalant_n,
	ROUND(n*pain_releiver_use/100,0) AS pain_releiver_n,
	ROUND(n*oxycontin_use/100,0) AS oxycontin_n,
	ROUND(n*tranquilizer_use/100,0) AS tranquilizer_n,
	ROUND(n*stimulant_use/100,0) AS stimulant_n,
	ROUND(n*meth_use/100,0) AS meth_n,
	ROUND(n*sedative_use/100,0) AS sedative_n
	FROM [drug-use-by-age]
	ORDER BY age;


-- Q4: What are the percentage numbers of users for each drug?
-- A4: HERE

SELECT alcohol_use
    marijuana_use,
    cocaine_use,
    crack_use,
    heroin_use,
    hallucinogen_use,
    inhalant_use,
    pain_releiver_use,
    oxycontin_use,
    tranquilizer_use,
    stimulant_use,
    meth_use,
    sedative_use
	FROM [drug-use-by-age]
	ORDER BY age;
