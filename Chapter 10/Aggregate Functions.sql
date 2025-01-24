
-- AGGREGATE FUNCTION

-- Use the student_management database
USE student_management;

-- Question 1 : Count total number of students
SELECT count(*)
FROM students;

-- Question 2 : Count the number of active student
SELECT count(*) AS active_students
FROM students 
WHERE status ='active';

-- Question 3 : Calculate total number of scholarships amount awarded to students

SELECT count(student_id) AS student_count, sum(scholarship_amount)
FROM student_scholarships
WHERE student_id IS NOT NULL;


-- Question 4 : Calculate the average scholarship amount awarded
SELECT count(student_id) AS student_count, avg(scholarship_amount) AS avg_scholarship
FROM student_scholarships
WHERE student_id IS NOT NULL;

-- Question 5 : Find the maximum scholarship amount awarded
SELECT count(student_id) AS student_count, max(scholarship_amount) AS max_scholarship
FROM student_scholarships
WHERE student_id IS NOT NULL;

-- Question 6 : Find the minimum scholarship amount awarded
SELECT count(student_id) AS student_count, min(scholarship_amount) AS min_scholarship
FROM student_scholarships
WHERE student_id IS NOT NULL;


