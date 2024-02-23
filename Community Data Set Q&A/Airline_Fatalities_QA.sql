/*****************************************************************************************************************
NAME:    Airline_Fatalities
PURPOSE: Answering questions about the data set.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     02/23/2024   TSTAILEY      1. Built this script for EC IT143


RUNTIME: 
Xm Xs

NOTES: 
NULL VALUES INDICATE FLAWLESSNESS DUE TO DIVISION BY ZERO
 
******************************************************************************************************************/



-- Q1: Which airline has the most fatalities given the seats they fly?
-- A1: Lets divide fatalities by seats.
SELECT airline,
	(fatalities_85_99 + fatalities_00_14) AS total_fatalities,
	avail_seat_km_per_week AS seat_km_week,
	((fatalities_85_99 + fatalities_00_14)*100.0 / avail_seat_km_per_week) AS [percentage] 
	FROM [airline-safety]
	ORDER BY [percentage] DESC;



-- Q2: What is the percentage for incidents to fatal accidents?
-- A2: Lets divide fatal accidents by incidents

SELECT airline,
	(incidents_85_99 + incidents_00_14) AS total_incidents,
	(fatal_accidents_85_99 + fatal_accidents_00_14) AS total_fatal_accidents,

	(100.0*(fatal_accidents_85_99 + fatal_accidents_00_14) / NULLIF((incidents_85_99 + incidents_00_14), 0)) AS [percentage]

	FROM [airline-safety]
	ORDER BY [percentage] DESC,total_incidents DESC;

-- Q3: How much has airline fatalites, incidents, and accidents changed between both 15 year time periods?
-- A3: Take each data point and divide by their counterpart.


SELECT airline,
	(100.0*incidents_00_14 / NULLIF(incidents_85_99, 0)) AS incidents_percent_difference,
	(100.0*fatal_accidents_00_14 / NULLIF(fatal_accidents_85_99, 0)) AS fatal_accidents_percent_difference,
	(100.0*fatalities_00_14 / NULLIF(fatalities_85_99, 0)) AS fatalities_percent_difference

	FROM [airline-safety];

-- Q4: Which airlines have a flawless record, and which fly the most of them all?
-- A4: Take all airlines that have 0 fatalities and order by seat_km desc

SELECT airline AS  deathless_airline, 
	avail_seat_km_per_week AS seat_km_week
	FROM [airline-safety]
	WHERE (fatalities_85_99 + fatalities_00_14) = 0
	ORDER BY seat_km_week DESC;