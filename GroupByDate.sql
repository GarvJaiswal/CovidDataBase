/*19. Group the data by date and compute the total number of deaths and recoveries for each date.*/

SELECT Date,
		SUM(Deaths) AS TotalDeath,
		SUM(Recovered) AS TotalRecovered
FROM day_wise
GROUP BY Date
