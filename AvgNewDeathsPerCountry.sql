SELECT COUNTRY_REGION AS Country,
			AVG(NEW_DEATHS) AS AverageNewDeaths
From country_wise_latest
GROUP BY Country_Region
