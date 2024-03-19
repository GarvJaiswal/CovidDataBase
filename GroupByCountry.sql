/*20. Group the data by country and calculate the average number of new cases reported daily for each country.*/

SELECT country_region AS Country,
		date,
		AVG(New_cases) AS AVGNewCases
FROM full_grouped
GROUP BY Country_Region,date
