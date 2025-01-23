-- DISTINCT keywords

-- Use the student_management database
USE student_management;

-- Question 1: Get distinct enrollment_dates of students
SELECT DISTINCT enrollment_date
FROM students;

-- Question 2: Get distinct status values of students
SELECT DISTINCT status
FROM students;