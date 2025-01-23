-- WHERE statement examples


-- Question 1 : Retrieve “active” students from Student table.
USE student_management;
SELECT *
FROM students
WHERE status='active';

-- Question 2 : Get Courses of a Computer Science Department from courses table.
SELECT * 
FROM course_management.courses
WHERE department_id=1;

-- Question 3 : Find the professor with  “inactive” status.
SELECT *
FROM professor_management.professors
WHERE status='inactive';

-- Question 4 : Get Course Ratings above a 4 Score.
SELECT * 
FROM course_professor_rating_management.course_ratings
WHERE rating>4;


-- Question 5 : Find Scholarships Awarded After a Specific Date “2022-01-01”.
SELECT *
FROM student_management.student_scholarships
WHERE award_date>'2022-01-01';






