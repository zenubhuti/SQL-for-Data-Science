-- Create Course Management Database
DROP DATABASE IF EXISTS `course_management`;
CREATE DATABASE course_management;
USE course_management;

-- Create tables in course_management first
CREATE TABLE IF NOT EXISTS courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL COLLATE utf8mb4_unicode_ci,
    department_id INT NOT NULL,
    credits INT NOT NULL,
    description TEXT,
    UNIQUE (course_name)
) ENGINE=InnoDB;

-- Insert records into courses
INSERT INTO courses (course_name, department_id, credits, description) VALUES
('Introduction to Computer Science', 1, 3, 'Fundamental concepts of computer science.'),
('Data Structures', 1, 4, 'Overview of data structures and algorithms.'),
('Algorithms', 1, 4, 'Design and analysis of algorithms.'),
('Operating Systems', 1, 4, 'Introduction to operating system concepts.'),
('Discrete Mathematics', 2, 3, 'Mathematical foundations for computer science.'),
('Linear Algebra', 2, 3, 'Fundamentals of linear algebra.'),
('Web Development', 1, 3, 'Introduction to web technologies.'),
('Database Systems', 1, 4, 'Introduction to database management systems.'),
('Artificial Intelligence', 1, 4, 'Basics of AI and machine learning.'),
('Software Engineering', 1, 4, 'Principles of software development.'),
('Machine Learning', 1, 4, 'Introduction to machine learning concepts and algorithms.'),
('Network Security', 1, 4, 'Principles of securing networks and data.'),
('Human-Computer Interaction', 1, 3, 'Study of user interaction with computers.'),
('Operating System Design', 1, 4, 'In-depth study of OS architecture.'),
('Cryptography', 1, 3, 'Fundamentals of cryptographic techniques.'),
('Project Management', 4, 3, 'Principles of managing projects effectively.'),
('Mobile App Development', 1, 4, 'Creating applications for mobile platforms.'),
('Big Data Analytics', 1, 4, 'Understanding and analyzing large data sets.'),
('Statistical Methods', 2, 3, 'Statistical techniques for data analysis.'),
('Calculus I', 2, 3, 'Introduction to calculus concepts.'),
('Calculus II', 2, 3, 'Continuation of calculus concepts.'),
('Differential Equations', 2, 4, 'Study of differential equations and applications.'),
('Linear Programming', 2, 3, 'Optimization techniques in decision making.'),
('Business Statistics', 4, 3, 'Statistical methods applied in business.'),
('Digital Marketing', 4, 3, 'Principles and practices of digital marketing.'),
('Microeconomics', 4, 3, 'Fundamentals of microeconomic theory.'),
('Macroeconomics', 4, 3, 'Fundamentals of macroeconomic theory.'),
('Financial Accounting', 4, 3, 'Principles of financial accounting.'),
('Business Ethics', 4, 3, 'Ethical decision making in business.'),
('Operations Research', 4, 4, 'Quantitative techniques for decision making.');

-- Create course fees table
CREATE TABLE IF NOT EXISTS course_fees (
    fee_id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT,
    fee_amount DECIMAL(10, 2) NOT NULL,
    fee_type ENUM('tuition', 'lab', 'material') NOT NULL,
    due_date DATE,
    FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Insert records into course_fees
INSERT INTO course_fees (course_id, fee_amount, fee_type, due_date) VALUES
(1, 4000.00, 'tuition', '2024-01-15'),
(1, 500.00, 'material', '2024-01-15'),
(2, 5000.00, 'tuition', '2024-02-15'),
(2, 350.00, 'lab', '2024-02-15'),
(3, 4300.00, 'tuition', '2024-03-15'),
(4, 3500.00, 'tuition', '2024-04-15'),
(5, 3000.00, 'tuition', '2024-05-15'),
(6, 2000.00, 'tuition', '2024-06-15'),
(7, 1500.00, 'tuition', '2024-07-15'),
(8, 4000.00, 'tuition', '2024-08-15'),
(9, 3700.00, 'tuition', '2024-09-15'),
(10, 3500.00, 'tuition', '2024-10-15');

-- Create Student Management Database
DROP DATABASE IF EXISTS `student_management`;
CREATE DATABASE student_management;
USE student_management;

-- Create tables in student_management
CREATE TABLE IF NOT EXISTS students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL COLLATE utf8mb4_unicode_ci,
    last_name VARCHAR(50) NOT NULL COLLATE utf8mb4_unicode_ci,
    birth_date DATE,
    email VARCHAR(100) NOT NULL UNIQUE COLLATE utf8mb4_unicode_ci,
    phone VARCHAR(15),
    enrollment_date DATE,
    status ENUM('active', 'inactive') DEFAULT 'active',
    department_id INT
) ENGINE=InnoDB;

-- Insert records into students with department_id
INSERT INTO students (first_name, last_name, birth_date, email, phone, enrollment_date, status, department_id) VALUES
('John', 'Doe', '2001-01-01', 'john.doe@example.com', '555-1234', '2020-09-01', 'active', 1),
('Jane', 'Smith', '2002-02-02', 'jane.smith@example.com', '555-5678', '2021-09-01', 'active', 1),
('Emily', 'Johnson', '2000-03-03', 'emily.johnson@example.com', '555-8765', '2019-09-01', 'inactive', 2),
('Mark', 'Taylor', '2002-03-12', 'mark.taylor@example.com', '555-4444', '2021-09-01', 'active', 1),
('Sophia', 'Brown', '2000-07-19', 'sophia.brown@example.com', '555-5555', '2019-09-01', 'active', 2),
('Liam', 'Wilson', '2001-11-30', 'liam.wilson@example.com', '555-6666', '2020-09-01', 'inactive', 3),
('Olivia', 'Garcia', '2003-04-25', 'olivia.garcia@example.com', '555-7777', '2022-09-01', 'active', 1),
('Noah', 'Martinez', '2001-09-05', 'noah.martinez@example.com', '555-8888', '2020-09-01', 'active', 1),
('Ava', 'Anderson', '2003-05-14', 'ava.anderson@example.com', '555-9999', '2022-09-01', 'active', 2),
('Mason', 'Thomas', '2002-12-20', 'mason.thomas@example.com', '555-1010', '2021-09-01', 'inactive', 3),
('Ella', 'Wright', '2002-04-25', 'ella.wright@example.com', '555-1231', '2021-09-01', 'active', 1),
('James', 'Miller', '2003-07-30', 'james.miller@example.com', '555-1232', '2022-09-01', 'active', 2),
('Chloe', 'Martinez', '2001-12-11', 'chloe.martinez@example.com', '555-1233', '2020-09-01', 'inactive', 3),
('Benjamin', 'Hernandez', '2002-10-15', 'benjamin.hernandez@example.com', '555-1234', '2021-09-01', 'active', 1),
('Isabella', 'Lopez', '2003-01-29', 'isabella.lopez@example.com', '555-1235', '2022-09-01', 'active', 1),
('Mia', 'Gonzalez', '2001-11-22', 'mia.gonzalez@example.com', '555-1236', '2020-09-01', 'active', 2),
('Lucas', 'Harris', '2000-09-15', 'lucas.harris@example.com', '555-1237', '2019-09-01', 'inactive', 3),
('Aiden', 'Clark', '2002-06-05', 'aiden.clark@example.com', '555-1238', '2021-09-01', 'active', 1),
('Zoe', 'Robinson', '2003-08-14', 'zoe.robinson@example.com', '555-1239', '2022-09-01', 'active', 2),
('Ethan', 'Young', '2001-05-18', 'ethan.young@example.com', '555-1240', '2020-09-01', 'active', 1),
('Charlotte', 'Scott', '2003-03-20', 'charlotte.scott@example.com', '555-1241', '2022-09-01', 'active', 2),
('Michael', 'Hall', '2002-04-12', 'michael.hall@example.com', '555-1242', '2021-09-01', 'inactive', 3),
('Emma', 'King', '2000-10-28', 'emma.king@example.com', '555-1243', '2019-09-01', 'active', 1),
('Daniel', 'Green', '2002-12-05', 'daniel.green@example.com', '555-1244', '2021-09-01', 'active', 1),
('Abigail', 'Adams', '2003-05-22', 'abigail.adams@example.com', '555-1245', '2022-09-01', 'active', 2),
('Joshua', 'Baker', '2001-02-14', 'joshua.baker@example.com', '555-1246', '2020-09-01', 'active', 3),
('Avery', 'Nelson', '2000-09-29', 'avery.nelson@example.com', '555-1247', '2019-09-01', 'inactive', 1),
('Logan', 'Carter', '2003-11-11', 'logan.carter@example.com', '555-1248', '2022-09-01', 'active', 2),
('Samantha', 'Mitchell', '2001-06-23', 'samantha.mitchell@example.com', '555-1249', '2020-09-01', 'active', 1),
('Oliver', 'Perez', '2002-02-01', 'oliver.perez@example.com', '555-1250', '2021-09-01', 'inactive', 3);

CREATE TABLE IF NOT EXISTS student_scholarships (
    scholarship_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    scholarship_name VARCHAR(100) NOT NULL COLLATE utf8mb4_unicode_ci,
    award_date DATE,
    scholarship_amount INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Insert records into student_scholarships
INSERT INTO student_scholarships (student_id, scholarship_name, award_date,scholarship_amount) VALUES
(1, 'National Merit Scholarship', '2021-08-01',1000),
(2, 'Academic Excellence Award', '2020-08-01',1000),
(3, 'Need-Based Grant', '2021-06-01',1500),
(4, 'STEM Scholarship', '2022-09-01',3000),
(5, 'Art Scholarship', '2022-06-15',2500),
(6, 'Athletic Scholarship', '2021-11-20',2000),
(7, 'International Student Scholarship', '2022-03-10',3500),
(8, 'Community Service Award', '2022-08-05',1000),
(9, 'Research Grant', '2023-01-15',2000),
(10, 'Leadership Award', '2023-02-20',2500),
(NULL, 'Environmental Sustainability Grant', NULL, 3000),
(NULL, 'Diversity and Inclusion Scholarship', NULL, 1500),
(NULL, 'Innovation in Technology Award', NULL, 2000),
(NULL, 'Innovation in Technology Award', NULL, 2000),
(NULL, 'Global Citizenship Scholarship', NULL, 4000);

CREATE TABLE IF NOT EXISTS student_types (
    student_id INT PRIMARY KEY,
    student_type ENUM('Local', 'International') NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Insert records into student_types for 30 students
INSERT INTO student_types (student_id, student_type) VALUES
(1, 'Local'),
(2, 'Local'),
(3, 'International'),
(4, 'Local'),
(5, 'International'),
(6, 'Local'),
(7, 'International'),
(8, 'International'),
(9, 'International'),
(10, 'Local'),
(11, 'Local'),
(12, 'Local'),
(13, 'Local'),
(14, 'International'),
(15, 'International'),
(16, 'Local'),
(17, 'International'),
(18, 'Local'),
(19, 'Local'),
(20, 'International'),
(21, 'International'),
(22, 'Local'),
(23, 'Local'),
(24, 'Local'),
(25, 'International'),
(26, 'Local'),
(27, 'International'),
(28, 'International'),
(29, 'Local'),
(30, 'International');

CREATE TABLE IF NOT EXISTS student_courses (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (course_id) REFERENCES course_management.courses(course_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Insert records into student_courses
INSERT INTO student_courses (student_id, course_id) VALUES
(1, 1),  -- John Doe enrolled in Course 1
(1, 2),  -- John Doe enrolled in Course 2
(2, 1),  -- Jane Smith enrolled in Course 1
(2, 3),  -- Jane Smith enrolled in Course 3
(3, 2),  -- Emily Johnson enrolled in Course 2
(4, 3),  -- Mark Taylor enrolled in Course 3
(5, 1),  -- Sophia Brown enrolled in Course 1
(6, 2),  -- Liam Wilson enrolled in Course 2
(7, 1),  -- Olivia Garcia enrolled in Course 1
(8, 3),  -- Noah Martinez enrolled in Course 3
(9, 2),  -- Ava Anderson enrolled in Course 2
(10, 1), -- Mason Thomas enrolled in Course 1
(11, 3), -- Ella Wright enrolled in Course 3
(12, 2), -- James Miller enrolled in Course 2
(13, 1), -- Chloe Martinez enrolled in Course 1
(14, 3), -- Benjamin Hernandez enrolled in Course 3
(15, 2), -- Isabella Lopez enrolled in Course 2
(16, 1), -- Mia Gonzalez enrolled in Course 1
(17, 3), -- Lucas Harris enrolled in Course 3
(18, 2), -- Aiden Clark enrolled in Course 2
(19, 1), -- Zoe Robinson enrolled in Course 1
(20, 3), -- Ethan Young enrolled in Course 3
(21, 2), -- Charlotte Scott enrolled in Course 2
(22, 1), -- Michael Hall enrolled in Course 1
(23, 3), -- Emma King enrolled in Course 3
(24, 2), -- Daniel Green enrolled in Course 2
(25, 1), -- Abigail Adams enrolled in Course 1
(26, 3), -- Joshua Baker enrolled in Course 3
(27, 2), -- Avery Nelson enrolled in Course 2
(28, 1), -- Logan Carter enrolled in Course 1
(29, 3), -- Samantha Mitchell enrolled in Course 3
(30, 2); -- Oliver Perez enrolled in Course 2

-- Create Professor Management Database
DROP DATABASE IF EXISTS `professor_management`;
CREATE DATABASE professor_management;
USE professor_management;

-- Create tables in professor_management
CREATE TABLE IF NOT EXISTS professors (
    professor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL COLLATE utf8mb4_unicode_ci,
    last_name VARCHAR(50) NOT NULL COLLATE utf8mb4_unicode_ci,
    email VARCHAR(100) NOT NULL UNIQUE COLLATE utf8mb4_unicode_ci,
    phone VARCHAR(15) NOT NULL,
    department_id INT NOT NULL,
    hire_date DATE NOT NULL,
    status ENUM('active', 'inactive') DEFAULT 'active',
    salary DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    bonus DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    tax DECIMAL(10, 2) NOT NULL DEFAULT 0.00,  -- New tax column
    role ENUM('Professor', 'Head of Department') NOT NULL DEFAULT 'Professor') ENGINE=InnoDB;

-- Insert records into professors
INSERT INTO professors (first_name, last_name, email, phone, department_id, hire_date, status, salary, bonus, tax, role) VALUES
('Dr. Alice', 'Johnson', 'alice.johnson@example.com', '555-0001', 1, '2015-05-15', 'active', 7500.12, 500.00, 750.00, 'Head of Department'),
('Dr. Brian', 'Smith', 'brian.smith@example.com', '555-0002', 2, '2016-06-16', 'active', 8000.23, 600.00, 800.00, 'Head of Department'),
('Dr. Paul', 'Wilson', 'paul.wilson@example.com', '555-1112', 3, '2019-02-20', 'active', 9000.14, 700.00, 900.00, 'Head of Department'),
('Dr. Lisa', 'Lopez', 'lisa.lopez@example.com', '555-1213', 1, '2020-03-30', 'inactive', 7200.45, 400.00, 720.00, 'Professor'),
('Dr. Robert', 'Davis', 'robert.davis@example.com', '555-9999', 1, '2014-08-15', 'active', 7800.67, 550.00, 780.00, 'Professor'),
('Dr. Maria', 'Martinez', 'maria.martinez@example.com', '555-1010', 2, '2018-01-10', 'active', 8500.90, 600.00, 850.00, 'Professor'),
('Dr. Tom', 'Harris', 'tom.harris@example.com', '555-2222', 1, '2021-11-11', 'active', 8200.00, 500.99, 820.00, 'Professor'),
('Dr. Nancy', 'Clark', 'nancy.clark@example.com', '555-3333', 2, '2022-01-01', 'active', 7600.00, 450.76, 760.00, 'Professor'),
('Dr. James', 'Lewis', 'james.lewis@example.com', '555-4444', 1, '2020-05-05', 'active', 8000.00, 500.32, 800.00, 'Professor'),
('Dr. Emily', 'Walker', 'emily.walker@example.com', '555-5555', 3, '2021-12-12', 'inactive', 7000.00, 300.53, 700.00, 'Professor'),
('Dr. William', 'Lee', 'william.lee@example.com', '555-8881', 1, '2017-04-15', 'active', 8200.00, 550.00, 820.56, 'Professor'),
('Dr. Grace', 'Martinez', 'grace.martinez@example.com', '555-8882', 2, '2018-05-20', 'active', 8600.00, 600.23, 860.00, 'Professor'),
('Dr. David', 'Thompson', 'david.thompson@example.com', '555-8883', 3, '2019-06-25', 'inactive', 9000.00, 700.00, 900.00, 'Professor'),
('Dr. Sarah', 'Anderson', 'sarah.anderson@example.com', '555-8884', 2, '2020-07-30', 'active', 8300.00, 500.00, 830.00, 'Professor'),
('Dr. Kevin', 'Roberts', 'kevin.roberts@example.com', '555-8885', 1, '2021-08-15', 'active', 8700.00, 550.00, 870.00, 'Professor'),
('Dr. Linda', 'Jones', 'linda.jones@example.com', '555-8886', 3, '2022-09-10', 'active', 8400.00, 600.00, 840.00, 'Professor'),
('Dr. Eric', 'Walker', 'eric.walker@example.com', '555-8887', 1, '2020-10-20', 'active', 8000.00, 450.00, 800.00, 'Professor'),
('Dr. Michelle', 'Hall', 'michelle.hall@example.com', '555-8888', 2, '2018-11-01', 'inactive', 8100.00, 400.00, 810.00, 'Professor'),
('Dr. Joshua', 'Allen', 'joshua.allen@example.com', '555-8889', 3, '2019-12-15', 'active', 8800.00, 600.00, 880.00, 'Professor'),
('Dr. Megan', 'Young', 'megan.young@example.com', '555-8890', 1, '2020-03-01', 'active', 8500.00, 500.00, 850.00, 'Professor'),
('Dr. Nathan', 'King', 'nathan.king@example.com', '555-8891', 2, '2021-04-20', 'active', 8300.00, 400.00, 830.00, 'Professor'),
('Dr. Olivia', 'Wright', 'olivia.wright@example.com', '555-8892', 1, '2022-05-30', 'inactive', 7800.00, 350.00, 780.00, 'Professor'),
('Dr. Brian', 'Harris', 'brian.harris@example.com', '555-8893', 3, '2020-07-15', 'active', 9000.00, 700.00, 900.00, 'Professor'),
('Dr. Sofia', 'White', 'sofia.white@example.com', '555-8894', 1, '2019-08-25', 'active', 8600.00, 600.00, 860.00, 'Professor'),
('Dr. Thomas', 'Green', 'thomas.green@example.com', '555-8895', 2, '2020-09-05', 'active', 8200.00, 500.00, 820.00, 'Professor'),
('Dr. Julia', 'Baker', 'julia.baker@example.com', '555-8896', 3, '2021-10-10', 'active', 8400.00, 550.00, 840.00, 'Professor'),
('Dr. Andrew', 'Clark', 'andrew.clark@example.com', '555-8897', 1, '2022-11-20', 'active', 8100.00, 400.00, 810.00, 'Professor'),
('Dr. Alice', 'Lee', 'alice.lee@example.com', '555-8898', 2, '2021-12-01', 'inactive', 9000.00, 700.00, 900.00, 'Professor'),
('Dr. Henry', 'Adams', 'henry.adams@example.com', '555-8899', 3, '2020-02-14', 'active', 8700.00, 600.00, 870.00, 'Professor'),
('Dr. Rachel', 'Carter', 'rachel.carter@example.com', '555-8800', 1, '2019-03-30', 'active', 8000.00, 450.00, 800.00, 'Professor'),
('Dr. Mark', 'Taylor', 'mark.taylor@example.com', '555-1110', 1, '2022-01-15', 'active', 7900.00, 500.00, 790.00, 'Professor'),
('Dr. Linda', 'Brown', 'linda.brown@example.com', '555-2220', 2, '2019-09-10', 'active', 8500.00, 550.00, 850.00, 'Professor'),
('Dr. Sarah', 'Davis', 'sarah.davis@example.com', '555-3330', 3, '2020-02-28', 'inactive', 7000.00, 300.00, 700.00, 'Professor'),
('Dr. Tom', 'Wilson', 'tom.wilson@example.com', '555-4440', 1, '2021-07-20', 'active', 8200.00, 400.00, 820.00, 'Professor'),
('Dr. Alice', 'Garcia', 'alice.garcia@example.com', '555-5550', 12, '2022-11-10', 'active', 7800.00, 450.00, 780.00, 'Professor'),
('Dr. James', 'Martinez', 'james.martinez@example.com', '555-6660', 9, '2023-03-05', 'active', 9000.00, 700.00, 900.00, 'Head of Department'),
('Dr. Emily', 'Lee', 'emily.lee@example.com', '555-7770', 7, '2021-12-01', 'inactive', 7500.00, 500.00, 750.00, 'Professor'),
('Dr. Nathan', 'Hernandez', 'nathan.hernandez@example.com', '555-8880', 6, '2020-10-10', 'active', 8100.00, 400.00, 810.00, 'Professor'),
('Dr. Rachel', 'Clark', 'rachel.clark@example.com', '555-9990', 5, '2021-08-15', 'active', 8000.00, 450.00, 800.00, 'Professor');


CREATE TABLE IF NOT EXISTS professor_courses (
    professor_id INT,
    course_id INT,
    PRIMARY KEY (professor_id, course_id),
    FOREIGN KEY (professor_id) REFERENCES professors(professor_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (course_id) REFERENCES course_management.courses(course_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Insert records into professor_courses
INSERT INTO professor_courses (professor_id, course_id) VALUES
(1, 1),  -- Dr. Alice teaches Introduction to Computer Science
(2, 2),  -- Dr. Brian teaches Data Structures
(3, 3),  -- Dr. Paul teaches Algorithms
(4, 4),  -- Dr. Lisa teaches Operating Systems
(5, 5),  -- Dr. Robert teaches Discrete Mathematics
(6, 6),  -- Dr. Maria teaches Linear Algebra
(7, 7),  -- Dr. Tom teaches Web Development
(8, 8),  -- Dr. Nancy teaches Database Systems
(9, 9),  -- Dr. James teaches Artificial Intelligence
(10, 10); -- Dr. Emily teaches Software Engineering

-- Create Department Management Database
DROP DATABASE IF EXISTS `department_management`;
CREATE DATABASE department_management;
USE department_management;

-- Create tables in department_management
CREATE TABLE IF NOT EXISTS departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE COLLATE utf8mb4_unicode_ci,
    head_of_department INT,
    FOREIGN KEY (head_of_department) REFERENCES professor_management.professors(professor_id) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Insert records into departments
INSERT INTO departments (department_name, head_of_department) VALUES
('Computer Science', 1), -- Head to be assigned
('Mathematics', 2), -- Head to be assigned
('Engineering', 3), -- Head to be assigned
('Business', NULL),
('Psychology', NULL), -- Head to be assigned
('Physics', NULL), -- Head to be assigned
('Biology', NULL), -- Head to be assigned
('Chemistry', NULL), -- Head to be assigned
('History', NULL), -- Head to be assigned
('Philosophy', NULL), -- Head to be assigned
('Linguistics', NULL), -- Head to be assigned
('Art History', NULL), -- Head to be assigned
('Music', NULL), -- Head to be assigned
('Theater', NULL), -- Head to be assigned
('Environmental Science', NULL), -- Head to be assigned
('Sociology', NULL), -- Head to be assigned
('Anthropology', NULL), -- Head to be assigned
('Education', NULL), -- Head to be assigned
('Media Studies', NULL), -- Head to be assigned
('Political Science', NULL), -- Head to be assigned
('Public Health', NULL), -- Head to be assigned
('Economics', NULL), -- Head to be assigned
('International Relations', NULL), -- Head to be assigned
('Statistics', NULL), -- Head to be assigned
('Social Work', NULL); -- Head to be assigned


-- Create Course and Professor Rating Management Database
DROP DATABASE IF EXISTS `course_professor_rating_management`;
CREATE DATABASE course_professor_rating_management;
USE course_professor_rating_management;

-- Create course_ratings table
CREATE TABLE IF NOT EXISTS course_ratings (
    rating_id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT,
    student_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review TEXT,
    rating_date DATE NOT NULL,
    FOREIGN KEY (course_id) REFERENCES course_management.courses(course_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (student_id) REFERENCES student_management.students(student_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Insert sample course ratings
INSERT INTO course_ratings (course_id, student_id, rating, review, rating_date) VALUES
(1, 1, 5, 'Amazing course, very engaging!', '2024-09-15'),
(2, 2, 4, 'Well structured but challenging.', '2024-09-16'),
(3, 3, 4, 'Content was good but too slow.', '2024-09-17'),
(4, 1, 3, 'Very informative lectures, enjoyed the practical work.', '2024-09-24'),
(5, 2, 1, 'The course material was excellent!', '2024-09-25'),
(6, 3, 3, 'Could have been more engaging.', '2024-09-26'),
(7, 4, 2, 'Great project work opportunities.', '2024-09-27'),
(8, 5, 4, 'Loved the hands-on labs!', '2024-09-28'),
(9, 6, 3, 'Interesting but needs better organization.', '2024-09-29'),
(10, 7, 1, 'One of the best courses I’ve taken!', '2024-09-30'),
(1, 8, 4, 'The pace was good, learned a lot.', '2024-09-30'),
(2, 9, 5, 'Fantastic content and structure!', '2024-10-01'),
(3, 10, 5, 'Good course, but could improve on feedback.', '2024-10-02'),
(4, 1, 2, 'Challenging yet rewarding!', '2024-10-03'),
(5, 2, 3, 'The instructor was very helpful.', '2024-10-04'),
(6, 3, 3, 'Some topics were rushed.', '2024-10-05'),
(7, 4, 2, 'Great group projects, learned a lot.', '2024-10-06'),
(8, 5, 2, 'The course exceeded my expectations!', '2024-10-07'),
(9, 6, 3, 'The labs were fantastic.', '2024-10-08'),
(10, 7, 1, 'Content was good, but too many assignments.', '2024-10-09'),
(1, 8, 5, 'Best course for beginners.', '2024-10-10'),
(2, 9, 4, 'Good mix of theory and practice.', '2024-10-11'),
(3, 10, 5, 'Could improve on course material.', '2024-10-12'),
(4, 1, 1, 'The final project was excellent!', '2024-10-13'),
(1, 2, 4, 'Very informative, but a bit fast-paced.', '2024-09-18'),
(2, 3, 5, 'Excellent course! Highly recommend.', '2024-09-19'),
(3, 1, 4, 'Content was okay, but lacked depth.', '2024-09-20'),
(1, 3, 3, 'Good course, but could use more examples.', '2024-09-21'),
(2, 1, 5, 'A must-take course for all students!', '2024-09-22');

-- Create professor_ratings table
CREATE TABLE IF NOT EXISTS professor_ratings (
    rating_id INT AUTO_INCREMENT PRIMARY KEY,
    professor_id INT,
    student_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review TEXT,
    rating_date DATE NOT NULL,
    FOREIGN KEY (professor_id) REFERENCES professor_management.professors(professor_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (student_id) REFERENCES student_management.students(student_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;


-- Insert sample professor ratings
INSERT INTO professor_ratings (professor_id, student_id, rating, review, rating_date) VALUES
(1, 4, 5, 'Excellent professor, very knowledgeable!', '2024-09-15'),
(1, 5, 4, 'Good teaching style but needs to engage more.', '2024-09-16'),
(1, 6, 2, 'Could improve on clarity and support.', '2024-09-17'),
(2, 7, 4, 'Very supportive, but I wanted more feedback.', '2024-09-24'),
(2, 8, 5, 'Incredible knowledge and passion for the subject!', '2024-09-25'),
(2, 3, 3, 'Good lecturer, but could improve on engagement.', '2024-09-26'),
(3, 4, 4, 'Very clear explanations.', '2024-09-27'),
(3, 5, 5, 'Gave excellent real-world examples!', '2024-09-28'),
(3, 6, 3, 'Could be more approachable.', '2024-09-29'),
(10, 7, 5, 'One of the best teachers I’ve had!', '2024-09-30'),
(1, 8, 4, 'Encouraging and motivating!', '2024-09-30'),
(3, 9, 5, 'Exceptional at simplifying complex topics.', '2024-10-01'),
(6, 10, 3, 'Knowledgeable but not very engaging.', '2024-10-02'),
(6, 1, 5, 'Very supportive and helpful with assignments.', '2024-10-03'),
(5, 2, 4, 'Great lectures but a lot of homework.', '2024-10-04'),
(6, 3, 3, 'Interesting material, but delivery could improve.', '2024-10-05'),
(8, 4, 4, 'Enjoyed the class discussions.', '2024-10-06'),
(8, 5, 5, 'Amazing course, highly recommend!', '2024-10-07'),
(9, 6, 4, 'Very detailed feedback on assignments.', '2024-10-08'),
(10, 7, 3, 'Could benefit from more group activities.', '2024-10-09'),
(1, 8, 5, 'Fantastic and inspiring!', '2024-10-10'),
(2, 9, 4, 'Great course structure and pacing.', '2024-10-11'),
(3, 10, 3, 'The content was great, but the pace was slow.', '2024-10-12'),
(4, 1, 5, 'Very engaging and knowledgeable.', '2024-10-13'),
(1, 2, 4, 'Very engaging lectures, but assignments were tough.', '2024-09-18'),
(2, 3, 5, 'Great at explaining complex topics!', '2024-09-19'),
(3, 1, 3, 'Knowledgeable but needs to improve interaction.', '2024-09-20'),
(1, 3, 5, 'One of the best professors I’ve had!', '2024-09-21'),
(2, 1, 2, 'Had difficulty understanding some concepts.', '2024-09-22');

-- We will use this section only for exercise 
/*
-- Create Staff Management Database
DROP DATABASE IF EXISTS `staff_management`;
CREATE DATABASE staff_management;
USE staff_management;

-- Create staff_dept table
CREATE TABLE IF NOT EXISTS staff_dept (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL COLLATE utf8mb4_unicode_ci,
    UNIQUE (dept_name)
) ENGINE=InnoDB;

-- Create staff_members table
CREATE TABLE IF NOT EXISTS staff_members (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    dept_id INT,
    hire_date DATE,
    salary DECIMAL(10, 2) CHECK (salary BETWEEN 1000 AND 100000),
    FOREIGN KEY (dept_id) REFERENCES staff_dept(dept_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Insert records into staff_dept
INSERT INTO staff_dept (dept_name) VALUES
('Finance'),
('Sales'),
('Marketing'),
('Human Resources'),
('Customer Support');

-- Insert records into staff_members with Indian first names
INSERT INTO staff_members (first_name, last_name, dept_id, hire_date, salary) VALUES
('Aarav', 'Sharma', 3, '2022-05-01', 60000.00),
('Anaya', 'Verma', 2, '2023-03-15', 50000.00),
('Rohan', 'Patel', 1, '2021-10-10', 55000.00),
('Isha', 'Nair', 3, '2020-08-22', 70000.00),
('Vikram', 'Singh', 4, '2019-07-05', 45000.00);
*/

