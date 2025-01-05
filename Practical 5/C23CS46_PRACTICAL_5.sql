CREATE TABLE JOB2 (
    Emp_ID NUMBER(10) PRIMARY KEY,             
    Emp_Name VARCHAR2(100) NOT NULL,            
    Emp_Salary NUMBER(7,2) NOT NULL CHECK (Emp_Salary > 0), 
    Job_ID VARCHAR2(15) UNIQUE,             
    Department VARCHAR2(50)                      
);


INSERT INTO JOB2 (Emp_ID, Emp_Name, Emp_Salary, Job_ID, Department) 
VALUES (1, 'John Doe', 7500, 'IT_PROG', 'IT');
INSERT INTO JOB2 (Emp_ID, Emp_Name, Emp_Salary, Job_ID, Department) 
VALUES (2, 'Jane Smith', 12000, 'MK_MGR', 'Marketing');
INSERT INTO JOB2 (Emp_ID, Emp_Name, Emp_Salary, Job_ID, Department) 
VALUES (3, 'Alice Brown', 10500, 'FI_MGR', 'Finance');
INSERT INTO JOB2 (Emp_ID, Emp_Name, Emp_Salary, Job_ID, Department) 
VALUES (4, 'Bob White', 7000, 'FI_ACC', 'Finance');
INSERT INTO JOB2 (Emp_ID, Emp_Name, Emp_Salary, Job_ID, Department) 
VALUES (5, 'Charlie Green', 13000, 'LEC', 'Education');
INSERT INTO JOB2 (Emp_ID, Emp_Name, Emp_Salary, Job_ID, Department) 
VALUES (6, 'David Blue', 8000, 'COMP OP', 'Operations');

SELECT * FROM JOB2

