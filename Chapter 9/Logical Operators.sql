-- Logical Operator


USE professor_management;

-- Question 1 : Find the professors who are active and have a salary > 7000.
SELECT *
FROM professors
WHERE status ='active' AND salary > 7000;

-- Question 2 : Find the professors who are active or have a salary equal to 7000.
SELECT *
FROM professors
WHERE status ='active' OR salary = 7000;


-- Question 3 : Find the professors whose department_id is not 3.
SELECT *
FROM professors
WHERE NOT department_id=3 ;
