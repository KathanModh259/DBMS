1.1-----------------------------------------------------------------------------
Declare

num1 number;
num2 number;
total number;

begin
num1:=10;
num2:=5;
total:=num1*num2;

dbms_output.put_line('Total product of num1 and num2 is: ' || total);

end;

1.2-----------------------------------------------------------------------------

-- Creating or replacing the procedure
CREATE OR REPLACE PROCEDURE my_procedure(in_param1 IN NUMBER, in_param2 IN NUMBER)
AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Total product of two numbers is : ' || (in_param1 * in_param2));
END;


-- Declaring and executing the procedure
DECLARE
    input_str1 NUMBER := 10;
    input_str2 NUMBER := 5;
BEGIN
    my_procedure(input_str1, input_str2);
END;


2.1-----------------------------------------------------------------------------

DECLARE
    num1 NUMBER;
    num2 NUMBER;
    total NUMBER;
BEGIN
    num1 := 15;
    num2 := 0;
    total := num1 * num2;
    DBMS_OUTPUT.PUT_LINE('Total product of num1 and num2 is: ' || total);
END;


2.2-----------------------------------------------------------------------------


CREATE OR REPLACE PROCEDURE my_procedure_zero(in_param1 IN NUMBER, in_param2 IN NUMBER)
AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Total product of two numbers is : ' || (in_param1 * in_param2));
END;


DECLARE
    input_str1 NUMBER := 15;
    input_str2 NUMBER := 0;
BEGIN
    my_procedure_zero(input_str1, input_str2);
END;



3.1-----------------------------------------------------------------------------


DECLARE
    num1 NUMBER;
    num2 NUMBER;
    total NUMBER;
BEGIN
    num1 := -4;
    num2 := -6;
    total := num1 * num2;
    DBMS_OUTPUT.PUT_LINE('Total product of num1 and num2 is: ' || total);
END;


3.2-----------------------------------------------------------------------------


CREATE OR REPLACE PROCEDURE my_procedure_negative(in_param1 IN NUMBER, in_param2 IN NUMBER)
AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Total product of two numbers is : ' || (in_param1 * in_param2));
END;
/

DECLARE
    input_str1 NUMBER := -4;
    input_str2 NUMBER := -6;
BEGIN
    my_procedure_negative(input_str1, input_str2);
END;


4.1-----------------------------------------------------------------------------


DECLARE
    num1 NUMBER;
    num2 NUMBER;
    total NUMBER;
BEGIN
    num1 := 7;
    num2 := -3;
    total := num1 * num2;
    DBMS_OUTPUT.PUT_LINE('Total product of num1 and num2 is: ' || total);
END;
/


4.2-----------------------------------------------------------------------------


CREATE OR REPLACE PROCEDURE my_procedure_pos_neg(in_param1 IN NUMBER, in_param2 IN NUMBER)
AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Total product of two numbers is : ' || (in_param1 * in_param2));
END;
/

DECLARE
    input_str1 NUMBER := 7;
    input_str2 NUMBER := -3;
BEGIN
    my_procedure_pos_neg(input_str1, input_str2);
END;
/

5.1-----------------------------------------------------------------------------

DECLARE
    num1 NUMBER;
    num2 NUMBER;
    total NUMBER;
BEGIN
    num1 := 2.5;
    num2 := 4.2;
    total := num1 * num2;
    DBMS_OUTPUT.PUT_LINE('Total product of num1 and num2 is: ' || total);
END;
/


5.2-----------------------------------------------------------------------------


CREATE OR REPLACE PROCEDURE my_procedure_decimal(in_param1 IN NUMBER, in_param2 IN NUMBER)
AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Total product of two numbers is : ' || (in_param1 * in_param2));
END;
/

DECLARE
    input_str1 NUMBER := 2.5;
    input_str2 NUMBER := 4.2;
BEGIN
    my_procedure_decimal(input_str1, input_str2);
END;
/


DECLARE
    EMP_NAME VARCHAR(30);
    EMP_SAL NUMBER;
BEGIN
    SELECT EMP_NAME, EMP_SAL
    INTO EMP_NAME, EMP_SAL
    FROM employee
    WHERE emp_id = 105;  

    dbms_output.put_line('Employee Name: ' || EMP_NAME);
    dbms_output.put_line('Salary: ' || EMP_SAL);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('No Employee found with the given ID.');
    WHEN OTHERS THEN
        dbms_output.put_line('ERROR: ' || SQLERRM);
END;


DECLARE
    v_emp_id NUMBER := 109;  -- Change ID as per your table
    v_emp_name VARCHAR2(30) := 'John Doe';
    v_emp_salary NUMBER := 50000;
BEGIN
    -- Insert statement
    INSERT INTO EMPLOYEE (EMP_ID, EMP_NAME, EMP_SALARY) 
    VALUES (v_emp_id, v_emp_name, v_emp_salary);
    
    -- Commit the transaction to save changes
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('Employee inserted successfully.');
    
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE('Error: Employee with this ID already exists.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;

--Deleting operation 

DECLARE
    v_emp_id NUMBER := 109;  -- Change ID as per your table
BEGIN
    -- Delete statement
    DELETE FROM EMPLOYEE WHERE EMP_ID = v_emp_id;

    -- Check if any row was deleted
    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No Employee found with the given ID.');
    ELSE
        COMMIT;  -- Commit only if a row was deleted
        DBMS_OUTPUT.PUT_LINE('Employee deleted successfully.');
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
select * from EMPLOYEE