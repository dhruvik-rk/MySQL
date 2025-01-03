# Write a query to display the current date & time. Label the column Today_Date. 
SELECT NOW() AS Today_Date;

# Write a query to find new date after 365 day with reference to today. 
SELECT DATE_ADD(CURDATE(), INTERVAL 365 DAY);

# Display the current date in a format that appears as may 5 1994 12:00AM. 
SELECT DATE_FORMAT(NOW(), '%b %e %Y %l:%i%p') AS Formatted_Date;
	-- %b – Abbreviated month name (e.g., "May").
	-- %e – Day of the month (1 to 31).
	-- %Y – Full year (e.g., "1994").
	-- %l – Hour (12-hour format, without leading zeros).
	-- %i – Minutes with leading zeros if necessary.
	-- %p – AM/PM.

# Display the current date in a format that appears as 03 Jan 1995. 
SELECT DATE_FORMAT(NOW(), '%e %b %Y') AS Formatted_Date;

# Display the current date in a format that appears as Jan 04, 96. 
SELECT DATE_FORMAT(NOW(), '%b %e, %y') AS Formatted_Date;

# Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09. 
SELECT TIMESTAMPDIFF(MONTH, '2008-12-31', '2009-03-31') AS Total_Months;

# Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10. 
SELECT TIMESTAMPDIFF(YEAR, '2010-09-14', '2012-01-25') AS Total_Years;

# Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30. 
SELECT TIMESTAMPDIFF(HOUR, '2012-01-25 07:00:00', '2012-01-26 10:30:00') AS Total_Hours;

# Write a query to extract Day, Month, Year from given date 12-May-16. 
SELECT 
    DAY('2016-05-12') AS Day,
    MONTH('2016-05-12') AS Month,
    YEAR('2016-05-12') AS Year;

# Write a query that adds 5 years to current date. 
SELECT DATE_ADD(CURDATE(), INTERVAL 5 YEAR) AS Year_Add;

# Write a query to subtract 2 months from current date. 
SELECT DATE_SUB(CURDATE(), INTERVAL 2 MONTH) AS Months_Sub;

# Write a query to find out last date of current month. 
SELECT LAST_DAY(CURDATE()) AS Last_Day;

# Write a query to display date & time after 30 days from today. 
SELECT DATE_ADD(NOW(), INTERVAL 30 DAY) AS Day_Add;

# Calculate your age in years and months.
SELECT CONCAT(
	TIMESTAMPDIFF(MONTH, '2000-01-01', CURDATE()) % 12,
    ' ',
    TIMESTAMPDIFF(YEAR, '2000-01-01', CURDATE())) AS Age;