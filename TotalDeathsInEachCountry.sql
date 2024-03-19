
SELECT top(1)*
FROM country_wise_latest

SELECT top(1)*
FROM covid_19_clean_complete
/*2. Show the total number of deaths in each country, including provinces/states, for a given date.*/

SELECT t2.country_region AS Country,
		t2.TotalDeaths
FROM covid_19_clean_complete t1
LEFT JOIN worldometer_data t2
ON t1.country_region = t2.country_region
WHERE t2.country_region IS NOT NULL
		AND
		t2.TotalDeaths IS NOT NULL
GROUP BY t2.country_region, t2.TotalDeaths

