/*5. Find the maximum number of active cases recorded in any country on a specific date.*/

SELECT Country_Region,
		DATE,
		Active AS MaxActiveOnSingleDay		
FROM full_grouped
WHERE Active IN 
	(SELECT MAX(ACTIVE)
	FROM full_grouped)




