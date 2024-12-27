CREATE DATABASE BANK_INFO;

USE BANK_INFO;

CREATE TABLE deposite(
	actno INT,
    cname VARCHAR(50),
    bname VARCHAR(50),
    amount DECIMAL(8, 2),
    adate DATETIME
);

CREATE TABLE branch(
	bname VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE customers(
	cname VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE borrow(
	loanno INT,
    cname VARCHAR(50),
    bname VARCHAR(50),
    amount DECIMAL(8, 2)
);

INSERT INTO deposite
(actno, cname, bname, amount, adate)
VALUES
(101, 'Anil', 'VRCE', 1000.00, '1995-03-01'),
(102, 'Sunil', 'Ajni', 5000.00, '1996-01-04'),
(103, 'Mehul', 'Karolbagh', 3500.00, '1995-11-17'),
(104, 'Madhuri', 'Chandi', 1200.00, '1995-12-17'),
(105, 'Pramod', 'M.G. Road', 3000.00, '1996-03-27'),
(106, 'Sandip', 'Andheri', 2000.00, '1996-03-31'),
(107, 'Shivani', 'Virar', 1000.00, '1995-09-05'),
(108, 'Kranti', 'Nehru Place', 5000.00, '1995-07-02'),
(109, 'Minu', 'Powai', 7000.00, '1995-08-10');

INSERT INTO branch
(bname, city)
VALUES
('VRCE', 'Nagpur'),
('Ajni','Nagpur'),
('Karolbagh','Delhi'),
('Chandi','Delhi'),
('Dharampeth','Nagpur'),
('M.G. Road','Nagpur'),
('Andheri','Bombay'),
('Virar','Bombay'),
('Nehru Place','Delhi'),
('Powai','Bombay');

INSERT INTO customers
(cname, city)
VALUES
('Anil', 'Calcutta'),
('Sunil', 'Delhi'),
('Mehul', 'Baroda'),
('Mandar', 'Patna'),
('Madhuri', 'Nagpur'),
('Pramod', 'Nagpur'),
('Sandip', 'Surat'),
('Shivani', 'Bombay'),
('Kranti', 'Bombay'),
('Naren', 'Bombay');

INSERT INTO borrow
(loanno, cname, bname, amount)
VALUES
(201, 'Anil', 'VRCE', 1000.00),
(206, 'Mehul', 'Ajni', 5000.00),
(311, 'Sunil', 'Dharmpeth', 3000.00),
(321, 'Madhuri', 'Andheri', 2000.00),
(375, 'Pramod', 'Virar', 8000.00),
(481, 'Kranti', 'Nehru Place', 3000.00);

# Retrieve all data from table DEPOSIT.
SELECT * FROM deposite;

# Retrieve all data from table BORROW. 
SELECT * FROM borrow;

# Retrieve all data from table CUSTOMERS.
SELECT * FROM customers;

# Display Account No, Customer Name & Amount from DEPOSIT. 
SELECT actno, cname, amount
FROM deposite;

# Display Loan No, Amount from BORROW. 
SELECT loanno, amount
FROM borrow;

# Display loan details of all customers who belongs to ‘ANDHERI’ branch. 
SELECT * FROM borrow
WHERE bname = 'Andheri';

# Give account no and amount of depositor, whose account no is equals to 106. 
SELECT actno, amount
FROM deposite
WHERE actno = 106;

# Give name of borrowers having amount greater than 5000.  
SELECT cname
FROM borrow
WHERE amount > 5000;

# Give name of customers who opened account after date '1-12-96'.  
SELECT cname
FROM deposite
WHERE adate > '1996-12-01';

# Display name of customers whose account no is less than 105.
SELECT cname
FROM deposite
WHERE actno < 105;

# Display name of customer who belongs to either ‘NAGPUR’ Or ‘DELHI’. (OR & IN)
SELECT cname
FROM customers
WHERE city IN ('Nagpur', 'Delhi');

SELECT cname
FROM customers
WHERE city='Nagpur' OR city='Delhi';

# Display name of customers with branch whose amount is greater than 4000 and account no is less than 105.
SELECT cname, bname
FROM deposite
WHERE amount > 4000 AND actno < 105;

#  Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000. (AND & BETWEEN)
SELECT cname
FROM borrow
WHERE amount BETWEEN 3000 AND 8000;

SELECT cname, amount
FROM borrow
WHERE amount>3000 AND amount<8000;

# Find all depositors who do not belongs to ‘ANDHERI’ branch. 
SELECT * FROM deposite
WHERE bname!='Andheri';

#  Display the name of borrowers whose amount is NULL.
SELECT * FROM borrow
WHERE amount IS NULL;

# Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’ Or ‘M.G. ROAD’ and Account No is less than 104. 
SELECT actno, cname, amount
FROM deposite
WHERE actno < 104 AND bname IN ('AJNI', 'KAROLBAGH', 'M.G. ROAD');

# Display all the details of first five customers. 
SELECT * FROM deposite
LIMIT 5;

# Display all the details of first three depositors whose amount is greater than 1000. 
SELECT * FROM deposite
WHERE amount > 1000
LIMIT 3;

# Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to ‘ANDHERI’. 
SELECT loanno, cname
FROM borrow
WHERE bname<>'Andheri'
LIMIT 5;

# Retrieve all unique cities using DISTINCT.
SELECT DISTINCT city
FROM customers;

SELECT DISTINCT city
FROM branch;

# Retrieve all the records of customer table as per their city name in ascending order. 
SELECT * FROM customers
ORDER BY city;

# Retrieve all the records of deposit table as per their amount column in descending order. 
SELECT * FROM deposite
ORDER BY amount DESC;

# Retrieve all the details of customers in which decending order of their city name. 
SELECT * FROM customers
ORDER BY city DESC;

# Update deposit amount of all customers from 3000 to 5000.
SET SQL_SAFE_UPDATES = 0;
 
UPDATE deposite
SET amount=5000
WHERE amount=3000;

# Change branch name of ANIL from VRCE to C.G. ROAD.
UPDATE deposite
SET bname='C.G. ROAD'
WHERE cname='Anil';

UPDATE borrow
SET bname='C.G. ROAD'
WHERE cname='Anil';

# Update Account No of SANDIP to 111 & Amount to 5000. 
UPDATE deposite
SET actno = 111, amount = 5000
WHERE cname='Sandip';

# Give 10% Increment in Loan Amount.
UPDATE borrow
SET amount = amount + amount*0.1;

# Update deposit amount of all depositors to 5000 whose account no between 103 & 107. 
UPDATE deposite
SET amount = 5000
WHERE actno BETWEEN 103 AND 107;

# Update amount of loan no 321 to NULL. 
UPDATE borrow
SET amount=NULL
WHERE loanno=321;

# Change Loan number from 201 to 401 & also change branch name from VRCE to AJNI.
UPDATE borrow
SET loanno=401, bname='Ajni'
WHERE loanno=201;

# Modify customer name ANIL to ANIL JAIN
UPDATE deposite
SET cname = 'Anil Jain'
WHERE cname = 'Anil';

# Change Name to Ramesh, Branch Name VRCE & Amount 5500, Whose Account Number is 102.
UPDATE deposite
SET cname='Ramesh', bname='VRCE', amount=5500
WHERE actno=102;

# Make Branch Name & Amount NULL, Whose Loan Number is 481 & Name is KRANTI.
UPDATE borrow
SET bname=null, amount=null
WHERE loanno=481 AND cname='Kranti';

# Delete records of Customer table who belongs to BOMBAY City. 
DELETE FROM customers
WHERE city='Bombay';

# Delete all account numbers whose amount less than equals to 1000.
DELETE FROM deposite
WHERE amount <= 1000;

# Delete borrowers whose branch name is ‘AJNI’.
DELETE FROM borrow
WHERE bname='Ajni';

# Delete all the borrowers whose loan number between 201 to 210. 
DELETE FROM borrow
WHERE loanno BETWEEN 201 AND 210;

# Delete customers who opened account after date '1-12-96'. (Use DEPOSIT table) 
DELETE FROM deposite
WHERE adate>'1996-12-01';

# Delete all the records of Customers table. (Use TRUNCATE) 
TRUNCATE TABLE customers;

# Remove all customers whose name is ANIL & Account Number is 101. 
DELETE FROM deposite
WHERE cname='Anil' AND actno=101;

# Delete all the depositors who do not belongs to ‘ANDHERI’ branch. 
DELETE FROM deposite
WHERE bname!='Andheri';

# Delete all the borrowers whose loan amount is less than 2000 and does not belong to VRCE branch. 
DELETE FROM borrow
WHERE amount<2000 AND bname!='VRCE';

# Remove Branch table. (Use DROP) 
DROP TABLE branch;