WITH Hotels as (
SELECT * FROM BookingProject.DBO.[2018]
UNION
SELECT * FROM BookingProject.DBO.[2019]
UNION
SELECT * FROM BookingProject.DBO.[2020])

SELECT * FROM Hotels
LEFT JOIN dbo.market_segment
ON Hotels.market_segment = market_segment.market_segment
LEFT JOIN dbo.meal_cost
ON meal_cost.meal = Hotels.meal

--SELECT * FROM Hotels


/*SELECT 
	hotel,
	arrival_date_year,
	ROUND(SUM((stays_in_weekend_nights+stays_in_week_nights)*adr),0) AS Ingresos
FROM
	Hotels
GROUP BY arrival_date_year, hotel*/

