-- Q: Which airline has the most fatalities?
-- A: Lets add them all up and sort to find the greatest values.

SELECT airline,(fatalities_85_99 + fatalities_00_14) AS total_fatalities
	FROM [airline-safety]
	ORDER BY total_fatalities DESC;