
CREATE TABLE STUDENTS (
            STUDENT_ID NUMBER(10),
            FIRST_NAME VARCHAR2(50),
            LAST_NAME VARCHAR2(50),
            DEPARTMENT VARCHAR2(25),
            BIRTH_DATE DATE
            );
            
            SELECT * FROM STUDENTS;
            INSERT INTO STUDENTS (STUDENT_ID,FIRST_NAME,LAST_NAME,DEPARTMENT,BIRTH_DATE)
            VALUES (046,'KATHAN','MODH','CSE','03-SEP-2005');
            
            ALTER TABLE STUDENTS
            ADD EMAIL_ID VARCHAR2(50);
            
            DELETE FROM STUDENTS WHERE FIRST_NAME ='KATHAN';
            
            UPDATE STUDENTS
            SET EMAIL_ID='kathanmodh@gmail.com'
            
            TRUNCATE TABLE STUDENTS;
            DROP TABLE STUDENTS;
            
            
            
