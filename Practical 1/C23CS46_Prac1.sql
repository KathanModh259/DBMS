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
                
                CREATE TABLE BORROW(
                LOAN_NO VARCHAR2(5) NOT NULL UNIQUE,
                C_NAME VARCHAR2(15) NOT NULL,
                B_NAME VARCHAR2(10) NOT NULL,
                AMT NUMBER(7,2) NOT NULL
                );
                
                SELECT * FROM BORROW
                
                INSERT INTO BORROW(LOAN_NO,C_NAME,B_NAME,AMT)
                VALUES(201,'ANIL','VREC',1000.00);
                INSERT INTO BORROW(LOAN_NO,C_NAME,B_NAME,AMT)
                VALUES(206,'MEHUL','AJNI',5000.00);
                INSERT INTO BORROW(LOAN_NO,C_NAME,B_NAME,AMT)
                VALUES(311,'SUNIL','DHARAMPETH',3000.00);
                INSERT INTO BORROW(LOAN_NO,C_NAME,B_NAME,AMT)
                VALUES(321,'MADHURI','ANDHERI',2000.00);
                INSERT INTO BORROW(LOAN_NO,C_NAME,B_NAME,AMT)
                VALUES(375,'PRMOD','VIRAR',8000.00);
                INSERT INTO BORROW(LOAN_NO,C_NAME,B_NAME,AMT)
                VALUES(481,'KRANTI','NEHRU_PLA',3000.00);
                                

                
                
                
                
                
                
                
                
                
                