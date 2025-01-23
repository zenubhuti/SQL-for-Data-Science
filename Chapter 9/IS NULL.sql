-- IS NULL opeerator

-- Use the department_management database
USE department_management;


-- Question 1 : Select departments that do not have a department head assigned
SELECT *
FROM departments
WHERE head_of_department IS NULL;


-- Question 2 : Select departments that have a head assigned
SELECT *
FROM departments
WHERE head_of_department IS NOT NULL;


-- Question 3 : Select departments where the department_name is NULL
SELECT *
FROM departments
WHERE department_name IS NULL;


-- Question 4 : Select all departments to ensure department names are not NULL
SELECT *
FROM departments
WHERE department_name IS NOT NULL;




