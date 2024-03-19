/*18. Group the data by continent and calculate the total number of confirmed cases for each continent*/

SELECT t2.Continent,
		SUM(t1.confirmed) AS TotalConfirmedCases
FROM country_wise_latest AS t1
LEFT JOIN worldometer_data AS t2
ON t1.Country_Region=t2.Country_Region
GROUP BY t2.Continent

