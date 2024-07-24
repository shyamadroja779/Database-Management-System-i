--SELECT INTO OPERATION

--PART - A:
CREATE TABLE CRICKET(
	Name varchar(50),
	City varchar(50),
	Age int);


INSERT INTO CRICKET(Name,City,Age)
VALUES 
('Sachin Tendulkar','Mumbai',30),
('Rahul Dravid','Bombay',35),
('M.S. Dhoni','Jharkhand',31),
('Suresh Raina','Gujarat',30); 

--1 Create table Worldcup from cricket with all the columns and data.
SELECT * INTO WORLDCUP FROM CRICKET

--2 Create table T20 from cricket with first two columns with no data.
SELECT Name,City INTO T20 FROM CRICKET WHERE 1=0

--3 Create table IPL From Cricket with No Data
SELECT * INTO IPL FROM CRICKET WHERE 1=0


--Part – B:

CREATE TABLE EMPLOYEE(
NAME VARCHAR(50),
CITY VARCHAR(50),
AGE INT
)

INSERT INTO EMPLOYEE(NAME,CITY,AGE)
VALUES
('JAY PATEL','RAJKOT',30),
('RAHUL DAVE','BARODA',35),
('JEET PATEL','SURAT',31),
('VIJAY RAVAL','RAJKOT',30)

 


--1. Create table Employee_detail from Employee with all the columns and data.

SELECT * INTO EMPLOYEE_DETAIL FROM EMPLOYEE

--2. Create table Employee_data from Employee with first two columns with no data.

SELECT NAME,CITY INTO EMPLOYEE_DATA FROM EMPLOYEE WHERE 1=2

--3. Create table Employee_info from Employee with no Data

SELECT * INTO EMPLOYEE_INFO FROM EMPLOYEE WHERE 1=2


--Part – C: 

--1. Insert the Data into Employee_info from Employee whose CITY is Rajkot

INSERT INTO EMPLOYEE_INFO SELECT * FROM EMPLOYEE WHERE CITY = 'RAJKOT'

--2. Insert the Data into Employee_info from Employee whose age is more than 32

INSERT INTO EMPLOYEE_INFO SELECT * FROM EMPLOYEE WHERE AGE>32