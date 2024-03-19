/*16. Develop a UDF to calculate the mortality rate (deaths / confirmed cases * 100) for a given country.*/
CREATE FUNCTION mortality (@CountryName VARCHAR(MAX))
RETURNS DECIMAL(10,2)
BEGIN
	DECLARE @MortalityRate DECIMAL(10,2)
	
	SELECT  @MortalityRate = deaths*100/Confirmed
	FROM country_wise_latest
	WHERE country_region=@CountryName;

	RETURN @MortalityRate;
END;
GO

SELECT dbo.mortality('INDIA');