-- Practical-5 SQL Code Implementation

-- Creating the JobProfile table
CREATE TABLE JobProfile (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50) NOT NULL,
    Emp_Salary NUMBER(10, 2) NOT NULL CHECK (Emp_Salary > 0),
    Job_ID VARCHAR2(15) UNIQUE,
    Department VARCHAR2(50)
);
DROP TABLE CUSTOMER;
-- Creating the Customer table
CREATE TABLE Customer (
    Cust_ID NUMBER PRIMARY KEY,
    Cust_Name VARCHAR2(50) NOT NULL
);

-- Inserting data into JobProfile
INSERT INTO JobProfile VALUES (1, 'John', 5000, 'JOB01', 'HR');
INSERT INTO JobProfile VALUES (2, 'Alice', 7500, 'JOB02', 'Finance');
INSERT INTO JobProfile VALUES (3, 'Bob', 3000, 'JOB03', 'IT');
INSERT INTO JobProfile VALUES (4, 'Eve', 9000, 'JOB04', 'Marketing');
INSERT INTO JobProfile VALUES (5, 'Charlie', 6000, 'JOB05', 'IT');

-- Inserting data into Customer
INSERT INTO Customer VALUES (101, 'Anil');
INSERT INTO Customer VALUES (102, 'Sunil');
INSERT INTO Customer VALUES (103, 'Jay');
INSERT INTO Customer VALUES (104, 'Vijay');
INSERT INTO Customer VALUES (105, 'Keyur');

SELECT * FROM JobProfile;
SELECT * FROM Customer;

-- 1. Average Salary Queries
SELECT AVG(Emp_Salary) AS Average_Salary FROM JobProfile;
SELECT AVG(DISTINCT Emp_Salary) AS Distinct_Average_Salary FROM JobProfile;

-- 2. Minimum Salary Query
SELECT MIN(Emp_Salary) AS Minimum_Salary FROM JobProfile;

-- 3. Count Employees and Distinct Departments
SELECT COUNT(*) AS Total_Employees, COUNT(DISTINCT Department) AS Distinct_Departments FROM JobProfile;

-- 4. Maximum Salary Query
SELECT MAX(Emp_Salary) AS Maximum_Salary FROM JobProfile;

-- 5. Total and Distinct Sum of Salaries
SELECT SUM(Emp_Salary) AS Total_Salaries FROM JobProfile;
SELECT SUM(DISTINCT Emp_Salary) AS Distinct_Salaries FROM JobProfile;

------------------

-- 1. Absolute Difference from 1000
SELECT Emp_ID, Emp_Name, ABS(Emp_Salary - 1000) AS Salary_Difference FROM JobProfile;

-- 2. Salary Squared
SELECT Emp_ID, Emp_Name, POWER(Emp_Salary, 2) AS Salary_Squared FROM JobProfile;

-- 3. Round Salaries to Two Decimal Places
SELECT Emp_ID, Emp_Name, ROUND(Emp_Salary, 2) AS Rounded_Salary FROM JobProfile;

-- 4. Square Root of Salaries
SELECT Emp_ID, Emp_Name, SQRT(Emp_Salary) AS Salary_Square_Root FROM JobProfile;

--------------

-- 1. Name Transformations
SELECT Emp_Name, LOWER(Emp_Name) AS Lowercase_Name FROM JobProfile;
SELECT Emp_Name, UPPER(Emp_Name) AS Uppercase_Name FROM JobProfile;
SELECT Emp_Name, INITCAP(Emp_Name) AS Initial_Caps_Name FROM JobProfile;

--2
SELECT Emp_Name, SUBSTR(Emp_Name, 1, 3) AS First_Three_Chars FROM JobProfile;

--3
SELECT Emp_Name, LENGTH(Emp_Name) AS Name_Length FROM JobProfile;

--4
SELECT Emp_Name, LTRIM(Emp_Name, 'A') AS Leading_Trimmed_Name, RTRIM(Emp_Name, 'a')
AS Trailing_Trimmed_Name FROM JobProfile;

--5
SELECT Emp_Name, LPAD(Emp_Name, 10, '*') AS Left_Padded, RPAD(Emp_Name, 10, '*') 
AS Right_Padded FROM JobProfile;

----------


-- 1. Data Type Conversions
SELECT TO_NUMBER('10000.50') AS Numeric_Conversion FROM DUAL;

--2
SELECT TO_CHAR(5000, '999G999D99') AS Formatted_Salary FROM DUAL;



-- 1. Date Calculations
SELECT ADD_MONTHS(SYSDATE, 6) AS Date_After_6_Months FROM DUAL;

--2
SELECT LAST_DAY(SYSDATE) AS Last_Day_Of_Month FROM DUAL;

--3
SELECT MONTHS_BETWEEN(TO_DATE('2025-12-31', 'YYYY-MM-DD'), SYSDATE) AS Months_Between FROM DUAL;

--4
SELECT NEXT_DAY(SYSDATE, 'MONDAY') AS Next_Monday FROM DUAL;



-- 1. Union, Intersection, and Difference of Names
SELECT Emp_Name AS Name FROM JobProfile
UNION
SELECT Cust_Name AS Name FROM Customer;

--2
SELECT Emp_Name AS Name FROM JobProfile
UNION ALL
SELECT Cust_Name AS Name FROM Customer;


--3
SELECT Emp_Name AS Name FROM JobProfile
INTERSECT
SELECT Cust_Name AS Name FROM Customer;

--4
SELECT Emp_Name AS Name FROM JobProfile
MINUS
SELECT Cust_Name AS Name FROM Customer;