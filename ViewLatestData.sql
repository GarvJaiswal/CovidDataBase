/*9. Implement a view to show the latest data (confirmed, deaths, recovered) for each country.*/

CREATE VIEW latestData
AS
SELECT COUNTRY_REGION,
		CONFIRMED,
		DEATHS,
		RECOVERED
FROM country_wise_latest

SELECT * FROM latestData