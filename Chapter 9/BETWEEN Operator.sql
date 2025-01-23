-- Between Operator

-- Use the student_management database
USE student_management;

-- Question 1 : Select students with IDs in the range of 3 to 7.
SELECT *
FROM students
WHERE student_id BETWEEN 3 AND 7;

-- Question 2 : Select students who were born between Jan 1, 2000, and Dec 31, 2002.
SELECT *
FROM students
WHERE birth_date BETWEEN '2000-01-01' AND '2002-12-31';

-- Question 3 : Select students whose first names fall alphabetically between "C" and "M".
SELECT *
FROM students
WHERE first_name BETWEEN 'C' AND 'M';


-- Question 4 : Select students who did not enroll between Sept. 1, 2021, and Sept. 1, 2023
SELECT *
FROM students
WHERE enrollment_date NOT BETWEEN '2021-09-01' AND '2023-09-01';




