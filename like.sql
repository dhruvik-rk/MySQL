CREATE TABLE students(
	stuid INT,
    firstname VARCHAR(25),
    lastname VARCHAR(25),
    website VARCHAR(50),
    city VARCHAR(25),
    division VARCHAR(20)
);

INSERT INTO students
(stuid, firstname, lastname, website, city, division)
VALUES
(1011, 'Keyur', 'Patel', 'techonthenet.com', 'Rajkot', 'II-BCX'),
(1022, 'Hardik', 'Shah', 'digminecraft.com', 'Ahmedabad', 'I-BCY'),
(1033, 'Kajal', 'Trivedi', 'bigactivities.com', 'Baroda', 'IV-DCX'),
(1044, 'Bhoomi', 'Gajera', 'checkyourmath.com', 'Ahmedabad', 'III-DCW'),
(1055, 'Harmit', 'Mitel', NULL, 'Rajkot', 'II-BCY'),
(1066, 'Ashok', 'Jani', NULL, 'Baroda', 'II-BCZ');

SELECT * FROM students;

# 1. Display the name of students whose name starts with ‘k’. 
SELECT firstname
FROM students
WHERE firstname LIKE 'k%';

# 2. Display the name of students whose name consists of five characters. 
SELECT firstname
FROM students
WHERE firstname LIKE '_____';

# 3. Retrieve the first name & last name of students whose city name ends with a & contains six characters. 
SELECT firstname, lastname
FROM students
WHERE city LIKE '_____a';

# 4. Display all the students whose last name ends with ‘tel’. 
SELECT * FROM students
WHERE lastname LIKE '%tel';

# 5. Display all the students whose first name starts with ‘ha’ & ends with ‘t’. 
SELECT * FROM students
WHERE firstname LIKE 'ha%t';

# 6. Display all the students whose first name starts with ‘k’ and third character is ‘y’. 
SELECT * FROM students
WHERE firstname LIKE 'k_y%';

# 7. Display the name of students having no website and name consists of five characters. 
SELECT firstname
FROM students
WHERE website IS NULL AND firstname LIKE '_____';

# 8. Display all the students whose last name consist of ‘jer’.   
SELECT * FROM students
WHERE lastname LIKE '%jer';

# 9. Display all the students whose city name starts with either ‘r’ or ‘b’. 
SELECT * FROM students
WHERE city LIKE 'r%' OR city LIKE 'b%';

# 10. Display all the name students having websites. 
SELECT * FROM students
WHERE website IS NOT NULL;

# 11. Display all the students whose name starts from alphabet A to H. 
SELECT * FROM students
WHERE LEFT(firstname, 1) BETWEEN 'A' AND 'H'; #mysql not support '[a-h]%' range.

# 12. Display all the students whose name’s second character is vowel. 
SELECT * FROM students
WHERE LOWER(SUBSTRING(firstname, 2, 1)) IN ('a', 'e', 'i', 'o', 'u');

# 13. Display student’s name whose city name consist of ‘rod’. 
SELECT firstname, lastname
FROM students
WHERE city LIKE '%rod%';

# 14. Retrieve the First & Last Name of students whose website name starts with ‘bi’. 
SELECT firstname, lastname
FROM students
WHERE website LIKE 'bi%';

# 15. Display student’s city whose last name consists of six characters. 
SELECT city
FROM students
WHERE lastname LIKE '______';

# 16. Display all the students whose city name consist of five characters & not starts with ‘ba’. 
SELECT * FROM students
WHERE city LIKE '_____' AND city NOT LIKE 'ba%';

# 17. Show all the student’s whose division starts with ‘II’. 
SELECT * FROM students
WHERE division LIKE 'II%';

# 18. Find out student’s first name whose division contains ‘bc’ anywhere in division name. 
SELECT firstname
FROM students
WHERE division LIKE '%bc%';

# 19. Show student id and city name in which division consist of six characters and having website name.  
SELECT stuid, city
FROM students
WHERE division LIKE '______' AND website IS NOT NULL;

# 20. Display all the students whose name’s third character is consonant.
SELECT * FROM students
WHERE LOWER(SUBSTRING(firstname, 3, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');