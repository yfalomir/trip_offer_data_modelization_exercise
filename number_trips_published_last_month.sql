-- Get the country (departure) with highest number of publications last month
WITH DateLimits AS (
	SELECT 
		MAX(DateId) as UpperLimit,
        MIN(DateId) as LowerLimit
	FROM Dim_Dates
    WHERE   EXTRACT(YEAR FROM DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH)) = Year AND
			EXTRACT(MONTH FROM DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH)) = Month
)
SELECT 
	StartLocations.Country,
	COUNT(Trips.TripId) AS TripsDuringLastCalendarMonth
FROM Fact_Trips Trips
CROSS JOIN DateLimits Limits
LEFT JOIN Dim_Routes Routes ON Trips.RouteId = Routes.RouteId
LEFT JOIN Dim_Locations StartLocations ON Routes.StartLocationId = StartLocations.LocationId
WHERE DateId BETWEEN LowerLimit AND UpperLimit
GROUP BY StartLocations.Country
ORDER BY TripsDuringLastCalendarMonth DESC
LIMIT 1
