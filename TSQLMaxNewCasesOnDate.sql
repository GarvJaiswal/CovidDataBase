/*11. Use T-SQL to identify the country with the highest number of new cases reported on a specific date.*/

BEGIN
SELECT Country_Region,
		New_cases,
		Date
FROM full_grouped
WHERE New_cases IN
	(SELECT MAX(NEW_CASES)
	FROM full_grouped)
END
GO