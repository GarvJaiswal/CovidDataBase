/*Implement an index on the "Country/Region" column to speed up search operations.*/

CREATE CLUSTERED INDEX speedup
ON country_wise_latest (Confirmed DESC)

SELECT TOP(1000) *
FROM [dbo].[country_wise_latest]

