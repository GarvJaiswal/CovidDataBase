/*6. Create a stored procedure that returns the total number of recovered cases for a given country and date.*/

CREATE PROCEDURE TotalRecovered (@Country VARCHAR(MAX),@RecoveredOnDate DATE)
AS
BEGIN
	SELECT Country_Region,
			Recovered
	FROM covid_19_clean_complete
	WHERE Country_Region=@Country AND
		Date=@RecoveredOnDate
END


EXEC TotalRecovered @Country='India',@RecoveredOnDate='2020-04-30'