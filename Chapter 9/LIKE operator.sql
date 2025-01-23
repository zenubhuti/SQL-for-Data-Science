
-- LIKE Operator

-- Use the student_management database
USE student_management;

-- Question 1 : Extract students whose first names start with 'J'.
SELECT *
FROM students
WHERE first_name LIKE 'J%';

-- Question 2 : Extract students whose first names have exactly four letters.
SELECT *
FROM students
WHERE first_name LIKE '____';

-- Question 3 : Extract students whose last names start with 'S' and end with 'h'.

SELECT *
FROM students
WHERE last_name LIKE 'S%h' ;


-- Question 4 : Extract students with an email that starts with 'john' (case-sensitive)

SELECT *
FROM students
WHERE email LIKE BINARY 'john%';


-- Question 5 : Extract students whose email contains keyword 'example'
SELECT *
FROM students
WHERE email LIKE  '%example%';









