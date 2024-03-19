/*17. Create a UDF to determine the recovery rate (recovered/confirmed case *100) for a specific date.*/

CREATE FUNCTION recovery (@InputDate DATE)
RETURNS DECIMAL (10,2)
BEGIN
	DECLARE @recoveryRate DECIMAL(10,2)

	SELECT @recoveryRate = (Recovered *100/Confirmed )
	FROM day_wise
	WHERE Date = @InputDate

	RETURN @recoveryRate
END;
GO


SELECT dbo.recovery('2020-07-25');
