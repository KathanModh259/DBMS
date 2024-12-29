CREATE TABLE STUDENTS (
            STUDENT_ID VARCHAR(10),
            FIRST_NAME VARCHAR(50),
            LAST_NAME VARCHAR(50),
            DEPARTMENT VARCHAR(25),
            BIRTH_DATE DATE
            );
            
            SELECT * FROM STUDENTS;
            INSERT INTO STUDENTS (STUDENT_ID,FIRST_NAME,LAST_NAME,DEPARTMENT,BIRTH_DATE)
            VALUES ('046','KATHAN','MODH','CSE','03-SEP-2005');
            
            ALTER TABLE STUDENTS
            ADD EMAIL_ID VARCHAR(50);
            
            DELETE FROM STUDENTS WHERE FIRST_NAME ='KATHAN';
            
            UPDATE STUDENTS
            SET EMAIL_ID='kathanmodh@gmail.com'
            
            TRUNCATE TABLE STUDENTS;
            DROP TABLE STUDENTS;