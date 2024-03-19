
/*13. Use a CTE to find the country with the highest number of active cases at the moment.*/

WITH MostActiveCases AS(
SELECT country_region AS Country,
		Active
FROM country_wise_latest
WHERE Active IN
	(SELECT MAX(Active)
	FROM country_wise_latest)
)

SELECT * FROM MostActiveCases;

