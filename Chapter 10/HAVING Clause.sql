-- HAVING Clause

-- Question 1 : Count ratings of each course ID and rating count >1?

SELECT course_id, count(rating) AS rating_count
FROM course_professor_rating_management.course_ratings
GROUP BY course_id
HAVING rating_count >1;

-- Question 2 : Count students in each status category, student category count >3?

SELECT status, count(*) AS student_category_count
FROM student_management.students
GROUP BY status
HAVING student_category_count>3;



-- Question 3 : Display total fees of each course id whose total fees is >3000?

SELECT course_id,sum(fee_amount) AS total_course_fees
FROM course_management.course_fees
GROUP BY course_id
HAVING total_course_fees>3000;



