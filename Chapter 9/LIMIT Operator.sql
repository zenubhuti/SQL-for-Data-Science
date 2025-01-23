-- LIMIT operator

-- Use the student_management database
USE student_management;


-- Question 1 : Get the first 5 students ordered by last name
SELECT *
FROM students
ORDER BY last_name ASC
LIMIT 5;

-- Question 2 : Get all students, but skip the first 10
SELECT *
FROM students
LIMIT 10,5;


-- Question 3 : Get the first 5 ratings from the course_ratings table
SELECT *
FROM course_professor_rating_management.course_ratings
LIMIT 5;



