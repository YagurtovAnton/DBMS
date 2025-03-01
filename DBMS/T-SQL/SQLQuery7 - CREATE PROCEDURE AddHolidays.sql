USE PV_319_Import;
SET DATEFIRST 1;
GO

CREATE PROCEDURE sp_AddHolidays
@year		AS		SMALLINT,
@name		AS		NVARCHAR(150)
AS
BEGIN
	DECLARE @start_date AS DATE;
	CASE @name
			WHEN	@name LIKE	(N'Нов%')			THEN SET @start_date= dbo.GetYearHolidaysStartDate	(@yaer);SET @duration	dbo.GetHolidaysDuraction(@name)	END
	CASE	WHEN	@name LIKE  (N'Лет%каникулы')	THEN SET @start_date= dbo.GetSummerHolidaysStart	(@yaer);SET @duration	dbo.GetHolidaysDuraction(@name)	END
END

