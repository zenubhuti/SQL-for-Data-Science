-- GROUP BY clause

-- Use the student_management database
USE student_management;

-- Question 1 : How many students are there for each status (active/inactive)?
SELECT status,count(*) AS num_students
FROM students
GROUP BY status;

-- Question 2 : How many students were enrolled in each year (grouped by enrollment date)?

SELECT year(enrollment_date) as enrollment_year, count(*) AS num_students
FROM students
GROUP BY enrollment_year
ORDER BY enrollment_year;


-- Question 3 : How many students are enrolled in each course_id?

SELECT course_id as course_id, count(*) AS num_students
FROM student_courses
GROUP BY course_id
ORDER BY course_id;



