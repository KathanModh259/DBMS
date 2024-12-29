drop table EMPLOYEE;

CREATE TABLE EMPLOYEE(
                EMP_NO NUMBER(10) CONSTRAINT EMP_NO_PK PRIMARY KEY,
				EMP_NAME VARCHAR2(30) CONSTRAINT EMP_NAME_NN NOT NULL,
				EMP_SAL NUMBER(8,2) CONSTRAINT EMP_SAL_CHK CHECK (EMP_SAL>0),
                EMP_COMM NUMBER(8,2) CONSTRAINT EMP_COMM_CHK CHECK(EMP_COMM >=0),
                DEPT_NO NUMBER(8,2) CONSTRAINT DEPT_NO_NN NOT NULL
                );
                
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
                
                SELECT * FROM EMPLOYEE;
                CREATE TABLE SUPPLIER AS
                SELECT * FROM EMPLOYEE
                WHERE 1=0;
                DESCRIBE SUPPLIER;
                
                CREATE TABLE SUPPLIER2 AS --sup1
                SELECT EMP_NO, EMP_NAME FROM EMPLOYEE
                WHERE 1=0;
                DESCRIBE SUPPLIER2;
                
                CREATE TABLE SUP2 AS --sup2
                 SELECT * FROM EMPLOYEE
                 WHERE 1=0;
                 
                 INSERT INTO SUP2
                 SELECT * FROM EMPLOYEE
                 WHERE EMP_NAME = 'Anita';
                 
                 SELECT
                     *
                 FROM SUP2
                 
                 RENAME SUP2 TO SUPPLIER_2;
                 DESCRIBE SUPPLIER_2;
                 
                 DROP table SUPPLIER2;
                 
                 ALTER TABLE EMPLOYEE ADD(PHONE NUMBER(10));
                 DESCRIBE EMPLOYEE;
                 
                 ALTER TABLE EMPLOYEE MODIFY(PHONE CHAR(10));
                 DESCRIBE EMPLOYEE;
                 
                 ALTER TABLE SUPPLIER_2 DROP COLUMN EMP_NAME;
                 ALTER TABLE SUPPLIER_2 RENAME COLUMN EMP_SAL TO NEW_SAL;
                 DESCRIBE SUPPLIER_2;