/*10. Write a T-SQL query to calculate the total number of cases (confirmed + deaths + recovered) for each country.*/

BEGIN
SELECT country_region,
	SUM(CONFIRMED + DEATHS + RECOVERED) AS TotalCases
FROM country_wise_latest
Group By Country_Region
END
GO