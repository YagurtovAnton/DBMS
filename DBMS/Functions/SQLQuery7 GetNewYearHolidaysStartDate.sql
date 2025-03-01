USE PV_319_Import;
GO

ALTER FUNCTION GetYearHolidaysStartDate(@year AS SMALLINT) RETURNS DATE
BEGIN
	DECLARE @new_yaer_date		AS DATE		=	DATEFROMPARTS(@year,01,01);
	DECLARE @weekday	AS TINYINT	=	DATEPART(WEEKDAY,@new_yaer_date);
	DECLARE @start_date AS DATE		=	DATEADD(DAY, -@weekday+1,@new_yaer_date);
	IF DATEPART(DAY,@start_date) = 1
	BEGIN
		SET @start_date = DATEADD(DAY,-2,@start_date);
	END

	--PRINT(@new_yaer_date);
	--PRINT(@weekday);
	--PRINT(DATENAME(WEEKDAY,@new_year_date));
	--PRINT(@start_date);
	--PRINT('---------------------------');
	RETURN (@start_date);
END
