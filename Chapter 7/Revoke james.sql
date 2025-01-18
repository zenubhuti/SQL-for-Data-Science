--   USER:james

-- display the list of grants
SHOW GRANTS FOR 'james'@'localhost';

-- USE DATABASE
USE staff_management;


-- SELECT Test
 SELECT * FROM student_management.students;
 

-- UPDATE Test
UPDATE staff_members
SET first_name='Vikramaa'
WHERE employee_id = 5;