-------------------------------------------------  pract 11  -------------------------------------------------------
DROP TABLE EMPLOYEE;
-- Step 1: Create Employee Table
CREATE TABLE Employee (
    emp_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    age NUMBER
);

-- Step 2: Create Employee_Archive Table
CREATE TABLE Employee_Archive (
    emp_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    age NUMBER,
    deleted_at TIMESTAMP DEFAULT SYSTIMESTAMP
);

-- Step 3: Insert Sample Data
INSERT INTO Employee VALUES (1, 'John Doe', 21);
INSERT INTO Employee VALUES (2, 'Jane Smith', 25);
INSERT INTO Employee VALUES (3, 'Alice Brown', 21);
INSERT INTO Employee VALUES (4, 'Bob White', 30);
COMMIT;

-- Step 4: Create Trigger for Archiving Before Deletion
CREATE OR REPLACE TRIGGER trg_archive_before_delete
BEFORE DELETE ON Employee
FOR EACH ROW
BEGIN
    -- Insert the deleted record into Employee_Archive
    INSERT INTO Employee_Archive (emp_id, name, age)
    VALUES (:OLD.emp_id, :OLD.name, :OLD.age);
END;
/

-- Step 5: Create PL/SQL Block to Delete Employees Aged 21
BEGIN
    DELETE FROM Employee WHERE age = 21;
    COMMIT;
END;
/

SELECT * FROM Employee;          -- Should not have employees aged 21
SELECT * FROM Employee_Archive;  -- Should contain archived records of deleted employees



CREATE TABLE PERSON1 (NAME VARCHAR(45), AGE INT);

INSERT INTO PERSON1 VALUES('MATTHEW',30);
INSERT INTO PERSON1 VALUES('MARK',20);

SELECT * FROM PERSON1;

CREATE TABLE my_backup_table (
    col1 VARCHAR2(100),
    col2 NUMBER,
    operation_type VARCHAR2(10),
    change_time TIMESTAMP
    );
    drop TABLE MY_BACKUP_TABLE;
    
    
CREATE OR REPLACE TRIGGER my_trigger_insert
AFTER INSERT ON person1
FOR EACH ROW
BEGIN

    INSERT INTO my_backup_table (col1, col2, operation_type, change_time)
    VALUES (:NEW.name, :NEW.age, 'INSERT, SYSTIMESTAMP');
END;

INSERT INTO person1 (name, age) VALUES ('John Doe', 25);

Select * From person1;
Select * From my_backup_table;

CREATE OR REPLACE TRIGGER my_trigger_update
AFTER UPDATE ON person1
FOR EACH ROW
BEGIN

    INSERT INTO my_backup_table (col1, col2, operation_type, change_time)
    VALUE (:OLD.name, :old.aGE, 'OLD', SYSTIMESTAMP);
    
    INSERT INTO my_backup_table (col1, col2, operation_type, change_time)
    VALUES (:NEW.name, :NEW.age, 'NEW', SYSTIMESTAMP);
END;
    