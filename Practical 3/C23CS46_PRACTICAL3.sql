DROP TABLE EMPLOYEE;


CREATE TABLE EMPLOYEE(
                EMP_NO NUMBER(3) NOT NULL UNIQUE,
				EMP_NAME VARCHAR2(30) NOT NULL,
				EMP_SAL NUMBER(8,2) NOT NULL,
                EMP_COMM NUMBER(6,1),
                DEPT_NO NUMBER(3) NOT NULL
                );
                
                SELECT * FROM EMPLOYEE 
                
                INSERT INTO EMPLOYEE(EMP_NO,EMP_NAME,EMP_SAL,EMP_COMM,DEPT_NO)
                VALUES(101,'Smith',800,455,20);
                INSERT INTO EMPLOYEE(EMP_NO,EMP_NAME,EMP_SAL,EMP_COMM,DEPT_NO)
                VALUES(102,'Snehal',1600,0,25);
                INSERT INTO EMPLOYEE(EMP_NO,EMP_NAME,EMP_SAL,EMP_COMM,DEPT_NO)
                VALUES(103,'Adama',1100,425,20);
                INSERT INTO EMPLOYEE(EMP_NO,EMP_NAME,EMP_SAL,EMP_COMM,DEPT_NO)
                VALUES(104,'Aman',3000,NULL,15);
                INSERT INTO EMPLOYEE(EMP_NO,EMP_NAME,EMP_SAL,EMP_COMM,DEPT_NO)
                VALUES(105,'Anita',5000,425,10);
                INSERT INTO EMPLOYEE(EMP_NO,EMP_NAME,EMP_SAL,EMP_COMM,DEPT_NO)
                VALUES(106,'Anamika',2975,NULL,30);
                
                DROP TABLE JOB;
                
                CREATE TABLE JOB(
                JOB_ID VARCHAR2(15) NOT NULL UNIQUE,
				JOB_TITLE VARCHAR2(30) NOT NULL,
				MIN_SAL NUMBER(7,2),
                MAX_SAL NUMBER(7,2)
                );
                
                SELECT * FROM JOB
                
                INSERT INTO JOB(JOB_ID,JOB_TITLE,MIN_SAL,MAX_SAL)
                VALUES('IT_PROG','Programmer',4000,10000);
                INSERT INTO JOB(JOB_ID,JOB_TITLE,MIN_SAL,MAX_SAL)
                VALUES('MK_MGR','Marketing Manager',9000,15000);
                INSERT INTO JOB(JOB_ID,JOB_TITLE,MIN_SAL,MAX_SAL)
                VALUES('FI_MGR','Finance Manager',8200,12000);
                INSERT INTO JOB(JOB_ID,JOB_TITLE,MIN_SAL,MAX_SAL)
                VALUES('FI_ACC','Accountant',4200,9000);
                INSERT INTO JOB(JOB_ID,JOB_TITLE,MIN_SAL,MAX_SAL)
                VALUES('LEC','Lecturer',6000,17000);
                INSERT INTO JOB(JOB_ID,JOB_TITLE,MIN_SAL,MAX_SAL)
                VALUES('COMP OP','Computer Operator',1500,13000);
                
                DROP TABLE DEPOSIT;
                
                 CREATE TABLE DEPOSIT(
                A_NO VARCHAR2(5) NOT NULL UNIQUE,
				C_NAME VARCHAR2(15) NOT NULL,
				B_NAME VARCHAR2(10) NOT NULL,
                AMT NUMBER(7,2) NOT NULL,
                A_DATE DATE NOT NULL
                );
                
                SELECT * FROM DEPOSIT
                
                INSERT INTO DEPOSIT(A_NO,C_NAME,B_NAME,AMT,A_DATE)
                VALUES(101,'Anil','anderi',7000,'01-JAN-2006');
                INSERT INTO DEPOSIT(A_NO,C_NAME,B_NAME,AMT,A_DATE)
                VALUES(102,'sunil','virar',5000,'15-JUL-2006');
                INSERT INTO DEPOSIT(A_NO,C_NAME,B_NAME,AMT,A_DATE)
                VALUES(103,'jay','villeparle',6500,'12-MAR-2006');
                INSERT INTO DEPOSIT(A_NO,C_NAME,B_NAME,AMT,A_DATE)
                VALUES(104,'vijay','andheri',8000,'17-SEPT-2006');
                INSERT INTO DEPOSIT(A_NO,C_NAME,B_NAME,AMT,A_DATE)
                VALUES(105,'keyur','dadar',7500,'19-NOV-2006');
                INSERT INTO DEPOSIT(A_NO,C_NAME,B_NAME,AMT,A_DATE)
                VALUES(106,'mayur','borivali',5500,'21-DEC-2006');
                
                
                SELECT JOB_TITLE, MAX_SAL FROM JOB; --2

                SELECT DISTINCT B_NAME FROM DEPOSIT; --3
                
                SELECT A_NO FROM DEPOSIT WHERE A_DATE BETWEEN '01-jan-06' AND '27-jul-06'; -- 4
                
                
                SELECT C_NAME FROM DEPOSIT
                WHERE A_DATE > '09-OCT-2006'; --5
                
                
                SELECT EMP_NAME AS "NAME",EMP_SAL FROM EMPLOYEE
                WHERE DEPT_NO=20; --6
                
                SELECT EMP_NO, EMP_NAME,DEPT_NO FROM EMPLOYEE
                WHERE DEPT_NO IN(10,20); --7
                
                SELECT EMP_NO, EMP_NAME,DEPT_NO FROM EMPLOYEE
                WHERE DEPT_NO NOT IN(15,30); --8
                
                SELECT EMP_NO, EMP_NAME,DEPT_NO FROM EMPLOYEE
                WHERE DEPT_NO BETWEEN 15 AND 25; --9
                
                SELECT * FROM EMPLOYEE
                WHERE EMP_COMM IS NOT NULL; --10
                
                SELECT CONCAT(MIN_SAL,MAX_SAL) AS SALARY FROM JOB;--11
                
                INSERT INTO SUPPLIER SELECT * FROM EMPLOYEE;
                SELECT * FROM SUPPLIER; --12
                
                
                DELETE FROM SUPPLIER2;
                ALTER  TABLE SUPPLIER2 RENAME  TO NEW_SUP;
                SELECT * FROM NEW_SUP; --13
                
                DELETE FROM SUP2 WHERE EMP_NO=103;
                SELECT * FROM SUP_2; --14

                
                UPDATE EMPLOYEE SET EMP_NAME='Aman' where EMP_NAME='Anita'; --15
                
                UPDATE EMPLOYEE SET EMP_NAME='Rohan' where  EMP_NO=103;--16
                
                SELECT * FROM JOB
                WHERE MIN_SAL = (SELECT MIN(MIN_SAL) FROM JOB);--17
                
                SELECT * FROM JOB
                WHERE MAX_SAL = (SELECT MAX(MAX_SAL) FROM JOB); --17
                
                SELECT AVG(EMP_SAL) FROM EMPLOYEE;--18
                
                SELECT DISTINCT DEPT_NO FROM EMPLOYEE WHERE EMP_SAL >1000;--19
                
                SELECT EMP_NO,EMP_NAME FROM EMPLOYEE ORDER BY EMP_NO ASC;--20
                
                SELECT EMP_NO,EMP_NAME FROM EMPLOYEE ORDER BY EMP_NO DESC;--20
                
                SELECT EMP_NO,EMP_NAME FROM EMPLOYEE ORDER BY DEPT_NO ASC;--21
                
                SELECT EMP_NO,EMP_NAME FROM EMPLOYEE ORDER BY EMP_COMM DESC;--21

                UPDATE EMPLOYEE SET EMP_COMM=500 WHERE DEPT_NO=20; --22
                
                SELECT EMP_SAL,EMP_COMM FROM EMPLOYEE ORDER BY EMP_COMM ASC NULLS FIRST; --23
                
                 SELECT EMP_NO, EMP_NAME, EMP_SAL, EMP_COMM, DEPT_NO FROM EMPLOYEE
                 ORDER BY EMP_COMM ASC NULLS LAST, EMP_NO DESC; --24

                 
                 
                
                
                
                




                
                
                
                