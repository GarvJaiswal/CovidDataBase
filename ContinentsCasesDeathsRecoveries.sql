/*List the continents along with the total number of confirmed cases, deaths, and recoveries.*/

SELECT (t2.continent),
		SUM(t1.confirmed),
		SUM(t2.TotalDeaths),
		SUM(t2.TotalRecovered)
FROM country_wise_latest t1
LEFT JOIN worldometer_data t2
ON t1.country_region=t2.country_region
GROUP BY t2.continent