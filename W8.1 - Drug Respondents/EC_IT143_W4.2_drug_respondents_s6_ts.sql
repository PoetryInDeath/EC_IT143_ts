

TRUNCATE TABLE drug_respondents;

INSERT INTO drug_respondents
	SELECT v.total_n
	FROM v_drug_respondents AS v;


SELECT *
	FROM drug_respondents;


