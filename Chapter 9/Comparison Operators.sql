-- Comparison Operator

USE professor_management;

-- Question 1 : Find the professors who active.
SELECT *
FROM professors
WHERE status='active';


-- Question 2 : Find the professors who are not active.
SELECT *
FROM professors
WHERE status != 'active';


-- Question 3 : Find the professors with a salary greater than 8000.
SELECT *
FROM professors
WHERE salary >8000;

-- Question 4 : Find the professors with a salary greater than or equal to 8000.
SELECT *
FROM professors
WHERE salary >=8000;


-- Question 5 : Find the professors with a salary less than 7500.
SELECT *
FROM professors
WHERE salary < 7500;

-- Question 6 : Find the professors with a salary less than or equal to 7500.
SELECT *
FROM professors
WHERE salary <= 7500;
