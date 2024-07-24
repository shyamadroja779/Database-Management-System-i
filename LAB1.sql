--CREATE TABLE,INSERT VALUES

CREATE DATABASE CSE_3B_321

CREATE TABLE DEPOSIT
(
ACTNO INT,
CNAME VARCHAR(50),
BNAME VARCHAR(50),
AMOUNT DECIMAL(8,2),
ADATE DATETIME)

INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
(101,'ANIL','VRCE',1000.00,'1-MAR-95'),
(102,'SUNIL','AJNI',5000.00,'4-JAN-96'),
(103,'MEHUL','KAROLBAGH',3500.00,'17-NOV-95'),
(104,'MADHURI','CHANDI',1200.00,'17-DEC-95'),
(105,'PRAMOD','M.G.ROAD',3000.00,'27-MAR-96'),
(106,'SANDIP','ANDHERI',2000.00,'31-MAR-96'),
(107,'SHIVANI','VIRAR',1000.00,'5-SEP-95'),
(108,'KRANTI','NEHRU PALACE',5000.00,'2-JUL-95'),
(109,'MINU','POWAI',7000.00,'10-AUG-95')

CREATE TABLE BRANCH
(
BNAME VARCHAR(50),
CITY VARCHAR(50)
)

INSERT INTO BRANCH(BNAME,CITY)
VALUES
('VRCE','NAGPUR'),
('AJNI','NAGPUR'),
('KAROLBAGH','DELHI'),
('CHANDI','DELHI'),
('DHARAMPETH','NAGPUR'),
('M.G. ROAD','BANGLOR'),
('ANDHERI','BOMBAY'),
('VIRAR','BOMBAY'),
('NEHRU PLACE','DELHI'),
('POWAI','BOMBAY')

CREATE TABLE CUSTOMERS(
CNAME VARCHAR(50),
CITY  VARCHAR(50)
)

INSERT INTO CUSTOMERS(CNAME,CITY)
VALUES
('ANIL','CALCUTTA'),
('SUNIL','DELHI'),
('MEHUL','BARODA'),
('MANDAR','PATNA'),
('MADHURI','NAGPUR'),
('PRAMOD','NAGPUR'),
('SANDIP','SURAT'),
('SHIVANI','BOMBAY'),
('KRANTI','BOMBAY'),
('NAREN','BOMBAY')

CREATE TABLE BORROW(
LOANNO INT,
CNAME VARCHAR(50),
BNAME  VARCHAR(50),
AMOUNT DECIMAL(8,2)
)

INSERT INTO BORROW(LOANNO,CNAME,BNAME,AMOUNT)
VALUES
(201,'ANIL','VRCE',1000.00),
(206,'MEHUL','AJNI',5000.00),
(311,'SUNIL','DHARAMPETH',3000.00),
(321,'MADHURI','ANDHERI',2000.00),
(375,'PRAMOD','VIRAR',8000.00),
(481,'KRANTI','NEHRU PLACE',3000.00)


