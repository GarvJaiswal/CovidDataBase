/*21 Trigger for UPDATE function*/

CREATE TRIGGER TRIG_NEW_CASES
ON COUNTRY_WISE_LATEST
FOR UPDATE
AS 
BEGIN
      PRINT'A CASE HAS BEEN UPDATED'
END;

UPDATE country_wise_latest
SET New_cases = 10
WHERE Country_Region = 'Western Sahara';