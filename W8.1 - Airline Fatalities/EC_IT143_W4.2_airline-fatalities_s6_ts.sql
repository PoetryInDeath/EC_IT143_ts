
TRUNCATE TABLE airline_fatalities;

INSERT INTO airline_fatalities
	SELECT v.airline,
	v.total_fatalities
	FROM v_airline_fatalities AS v;


SELECT *
	FROM airline_fatalities
	ORDER BY total_fatalities DESC;
