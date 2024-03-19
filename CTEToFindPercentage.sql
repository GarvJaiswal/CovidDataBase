/*12. Create a CTE to calculate the percentage increase in confirmed cases for each country over the past week.*/
WITH PERCENTAGE AS(
SELECT country_region AS Country,
	ROUND(((Confirmed-Confirmed_last_week)*100)/confirmed_last_week,2) AS PercentageIncreaseOverTheLastWeek
FROM country_wise_latest
)

SELECT * FROM PERCENTAGE;

