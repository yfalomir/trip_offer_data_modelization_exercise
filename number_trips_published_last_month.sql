-- How many trip offers have been published last calendar month
WITH DateLimits AS (
	SELECT 
		MAX(DateId) as UpperLimit,
        MIN(DateId) as LowerLimit
	FROM Dim_Dates
    WHERE   EXTRACT(YEAR FROM DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH)) = Year AND
			EXTRACT(MONTH FROM DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH)) = Month
)
SELECT 
	COUNT(TripId) AS TripsDuringLastCalendarMonth
FROM Fact_Trips trips
CROSS JOIN DateLimits limits
WHERE DateId BETWEEN LowerLimit AND UpperLimit
