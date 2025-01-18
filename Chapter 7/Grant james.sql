
--   USER:james



-- Select database
USE staff_management;

--  Question 1: Display all students 
SELECT * FROM staff_members;
 

 -- Question 2: Insert records into staff_members table
UPDATE staff_members
SET first_name='Anayaa'
WHERE employee_id = 2;

-- Question 3: Delete records from staff_members table
-- SET SQL_SAFE_UPDATES = 1;

DELETE FROM staff_dept
WHERE dept_id = 1;

