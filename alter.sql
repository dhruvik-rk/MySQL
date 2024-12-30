CREATE TABLE Student(
	erollment_no VARCHAR(20),
    name VARCHAR(25),
    cpi DECIMAL(5, 2),
    birthdate DATETIME
);

SELECT * FROM Student;

# 1. Add two more columns City VARCHAR (20) NULL and Backlog INT NOT NULL. 
ALTER TABLE Student
ADD COLUMN City VARCHAR(20) NULL,
ADD COLUMN Backlog INT NOT NULL;

# 2. Change the size of NAME column of student from VARCHAR (25) to VARCHAR (35). 
ALTER TABLE Student
MODIFY COLUMN name VARCHAR(35);

# 3. Change the data type DECIMAL to INT in CPI Column. 
ALTER TABLE Student
MODIFY COLUMN cpi int;

# 4. Rename Column Enrollment No to ENO.
ALTER TABLE Student
CHANGE COLUMN erollment_no eno VARCHAR(20);

# 5. Delete Column City from the STUDENT table.
ALTER TABLE Student
DROP COLUMN city; 

# 6. Change name of table STUDENT to STUDENT_MASTER. 
ALTER TABLE Student
RENAME TO STUDENT_MASTER;

SELECT * FROM STUDENT_MASTER;

# 7. Remove Column Backlog from the table. 
ALTER TABLE STUDENT_MASTER
DROP COLUMN backlog;

# 8. Change Constraint of Name Column from NULL to NOT NULL.
ALTER TABLE STUDENT_MASTER
MODIFY COLUMN name VARCHAR(25) NOT NULL; 

# 9. Rename Column Birthdate to BDate. 
ALTER TABLE STUDENT_MASTER
CHANGE COLUMN birthdate bdate DATETIME;

# 10. Change the datatype of ENO Column from VARCHAR (20) to VARCHAR (12)
ALTER TABLE STUDENT_MASTER
MODIFY COLUMN eno VARCHAR(12);