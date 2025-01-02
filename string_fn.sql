# Find the length of following. (I) NULL    (II) ‘   hello     ’   (III)  Blank 
SELECT LENGTH(NULL), LENGTH('hello'), LENGTH('');

# Display your name In lower & upper case. 
SELECT LOWER('My Sql'), UPPER('My Sql');

# Display first three characters of your name. 
SELECT LEFT('My_Sql', 3);

# Display 3rd to 10th character of your name. 
SELECT SUBSTRING('My_Sql_In_Easy_Way', 3, 8);

# Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE. 
SELECT REPLACE('abc123efg', '123', 'XYZ'), REPLACE('abcabcabc', 'c', 5);

# Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9. 
SELECT ASCII('a'), ASCII('A'), ASCII('z'), ASCII('Z'), ASCII(0), ASCII(9);

# Write a query to display character based on number 97, 65,122,90,48,57. 


# Write a query to remove spaces from given string ‘ hello world  ‘. 
SELECT TRIM(' hello world  ');

# Write a query to display first 4 & Last 5 characters of ‘MySql-Demo’. 
SELECT CONCAT(LEFT('MySql-Demo', 4), RIGHT('MySql-Demo', 5)) AS result;

# Write a query to convert a string ‘1234.56’ to number (Use CAST()). 
SELECT CAST('1234.56' AS SIGNED);

# Write a query to convert a float 10.58 to integer (Use CONVERT()). 
SELECT CONVERT(10.58, SIGNED);

# Put 10 space before your name using function. 
SELECT CONCAT(SPACE(10), 'My Sql');

# Combine two strings (Your name & Surname) using CONCAT (). 
SELECT CONCAT('John', ' ', 'Doe') AS result;

# Find reverse of “My Sql”. 
SELECT REVERSE('My Sql');

# Repeat your name 3 times. 
SELECT REPEAT('My Sql', 3);

# Delete 3 characters from a string, starting in position 1, and then insert "HTML" in position 1. 
SELECT CONCAT('HTML', SUBSTRING('My Sql', 4));

# From Data, returns the first non-null value in a list. (Use COALESCE()) 
SELECT COALESCE(NULL, NULL, 'HTML', 'MySQL ', NULL, 'CSS') AS result;

# Search for "t" in string "Customer", and return its position. (Use LOCATE())
SELECT LOCATE('t', 'Customer');