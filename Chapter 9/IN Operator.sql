-- IN operator

USE professor_management;

-- Question 1 : Find the professors with department IDs 1 or 2.
SELECT *
FROM professors
WHERE department_ID IN (1,2);


-- Question 2 : Find the professors with a salary of 7500 or 8000.
SELECT *
FROM professors
WHERE salary IN (7500,8000);

-- Question 3 : Find the professors who belongs to departments that have a designated head of department.

SELECT *
FROM professors
WHERE department_id IN(SELECT department_id
FROM department_management.departments
WHERE head_of_department IS NOT NULL);


-- Question 4 : Find the professors who are not in departments 1 or 2.
SELECT *
FROM professors
WHERE department_ID NOT IN (1,2);





