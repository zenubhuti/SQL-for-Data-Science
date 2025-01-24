-- Use the student_management database
USE student_management;

-- Question 1 : Concatenate student's first and last name to get their full name
SELECT concat(first_name,' ',last_name) AS full_name
FROM students;

-- Question 2 : Extract the first three characters of first name of students
SELECT substring(first_name,1,3) as first_three_chars
FROM students;


-- Question 3 : Get the length of the first name of each student
SELECT length(first_name) as len_first_name
FROM students;


-- Question 4 : Replace the letter 'a' with '@' in the first name of students
SELECT first_name,replace(first_name,'a','@') AS updated_Fname
FROM students;


-- Question 5 : Get the first three characters from the left of the first name of students
SELECT first_name,left(first_name,3) AS first_3_Fname
FROM students;



-- Question 6 : Get the last three characters from the right of the first name of students
SELECT first_name,right(first_name,3) AS last_3chars_Fname
FROM students;

-- Question 7 : Convert the first name of students to uppercase

SELECT first_name,upper(first_name) AS upper_fname
FROM students;


-- Question 8 : Convert the first name of students to lowercase
SELECT first_name,lower(first_name) AS lower_fname
FROM students;


-- Question 9 : Remove leading and tailing spaces from the first name of students
SELECT first_name,TRIM(first_name) AS trimmed_name
FROM students;




