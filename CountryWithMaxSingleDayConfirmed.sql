/*Which country has the highest number of confirmed cases on a specific date?*/

SELECT t1.country_region,
		t2.date,
		t1.confirmed
FROM country_wise_latest t1
LEFT JOIN full_grouped t2
ON t1.country_region=t2.country_region
WHERE t1.confirmed IN 
		(
		SELECT MAX(Confirmed)
		FROM country_wise_latest
		)
	AND t2.date IN 
		(
		SELECT date
		FROM full_grouped
		WHERE confirmed in 
			(
			SELECT MAX(Confirmed)
			FROM country_wise_latest
			)
		)
GROUP BY t1.country_region,t2.date,t1.confirmed



