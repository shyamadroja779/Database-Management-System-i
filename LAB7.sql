--AGGERATE FUNCTION AND GROUP BY

CREATE TABLE EMP(
EID INT,
Ename VARCHAR(50),
Department VARCHAR(50),
Salary INT,
JoiningDate DATETIME,
City VARCHAR(50)
)

INSERT INTO EMP(EID, EName, Department, Salary ,JoiningDate, City)
VALUES
(101, 'Rahul', 'Admin', 56000, '1-Jan-90', 'Rajkot'),
(102, 'Hardik', 'IT', 18000, '25-Sep-90', 'Ahmedabad'),
(103, 'Bhavin', 'HR', 25000, '14-May-91', 'Baroda'),
(104, 'Bhoomi', 'Admin', 39000, '8-Feb-91', 'Rajkot'),
(105, 'Rohit', 'IT', 17000, '23-Jul-90', 'Jamnagar'),
(106, 'Priya',' IT', 9000, '18-Oct-90', 'Ahmedabad'),
(107, 'Bhoomi', 'HR' ,34000, '25-Dec-91', 'Rajkot')

--PART-A

--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MIN(Salary) AS MINIMUM , MAX(Salary) as Maximum FROM EMP
--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,respectively.
SELECT SUM(Salary) AS Total_Salary , AVG(Salary) AS Average_Salary from EMP
--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(*)AS TOTAL_EMPLOYEE FROM EMP
--4. Find highest salary from Rajkot city.
SELECT MAX(Salary) as higest_salary FROM EMP WHERE City='RAJKOT'
--5. Give maximum salary from IT department.
SELECT  MIN(Salary) as min_salary FROM EMP WHERE Department='IT'
--6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(*) FROM EMP WHERE JoiningDate>'8-feb-91'
--7. Display average salary of Admin department.
SELECT AVG(Salary) FROM EMP WHERE Department='ADMIN'
--8. Display total salary of HR department.
SELECT SUM(SALARY) FROM EMP WHERE Department='HR'
--9. Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT CITY) FROM EMP
--10. Count unique departments.
SELECT COUNT(DISTINCT Department) FROM EMP
--11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(Salary) from EMP WHERE City='Ahmedabad'
--12. Find city wise highest salary.
SELECT CITY,MAX(SALARY) FROM EMP GROUP BY City
--13. Find department wise lowest salary.
SELECT  DEPARTMENT,MIN(SALARY) FROM EMP GROUP BY Department
--14. Display city with the total number of employees belonging to each city.
SELECT CITY, COUNT(*) FROM EMP GROUP BY City
--15. Give total salary of each department of EMP table.
SELECT Department, SUM(SALARY) FROM EMP GROUP BY Department
--16. Give average salary of each department of EMP table without displaying the respective departmentname.
SELECT AVG(SALARY) FROM EMP GROUP BY Department

--Part – B:


--1. Count the number of employees living in Rajkot.
SELECT COUNT(*) FROM EMP  WHERE CITY = 'Rajkot'

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(Salary)-MIN(Salary) AS DIFFERENCE  FROM EMP

--3. Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(*)  FROM EMP WHERE JoiningDate < '1991-01-01'


--Part – C:


--1. Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(*) FROM EMP WHERE City IN ('Rajkot','Baroda')

--2. Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT(*)  FROM EMP WHERE JoiningDate < '1991-01-01'

--3. Find the Joining Date wise Total Salaries.
SELECT JoiningDate , COUNT(Salary) FROM EMP GROUP BY JoiningDate

--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT ENAME,Department,City,MAX(Salary) FROM EMP WHERE Ename LIKE 'R%' GROUP BY City,Department,Ename
