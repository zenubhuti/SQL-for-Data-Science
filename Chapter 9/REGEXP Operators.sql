
-- REGEXP operator

-- Use the student_management database
USE student_management;

-- Question 1 : Select students with a phone number that starts with '555' and is followed by four digits
SELECT *
FROM students
WHERE phone REGEXP '^555-[0-9]{4}$';

-- Question 2 : Select students whose email contains 'edu' followed by any characters.
SELECT *
FROM students
WHERE email REGEXP 'edu.*';

-- Question 3 : Select students whose first name starts with 'A' or 'J'
SELECT *
FROM students
WHERE first_name REGEXP '^[AJ]';

-- Question 4 : Select students with last names that contain 'son' (case insensitive)
SELECT *
FROM students
WHERE last_name REGEXP 'son';

-- Question 5 : Select students whose birth date contains a specific year, e.g., '2001'
SELECT *
FROM students
WHERE birth_date REGEXP '2001';






