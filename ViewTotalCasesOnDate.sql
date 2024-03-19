/*8. Create a view that displays the total number of cases (confirmed, deaths, and recovered) for each country on a specific date.*/

CREATE VIEW totalCase
AS
SELECT Country_Region,
		Confirmed,
		Deaths,
		Recovered
FROM covid_19_clean_complete
WHERE DATE='2020-07-20'

SELECT * FROM totalCase
