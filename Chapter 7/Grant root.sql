
-- GRANT privileges


-- Create a new user
CREATE USER 'james'@'localhost' IDENTIFIED BY 'james123';

-- Question 1: Grant SELECT privilege on staff_member table
-- to james
GRANT SELECT
ON staff_management.staff_members
TO 'james'@'localhost';

-- Question 2: Grant SELECT, INSERT, and UPDATE on staff_member to USER:james
GRANT SELECT, INSERT, UPDATE
ON staff_management.staff_members
TO 'james'@'localhost';

--  Question 3: Granting All Privileges on a Database to USER:james
GRANT ALL PRIVILEGES ON staff_management.* TO 'james'@'localhost';

-- Select all users from the mysql.user table
SELECT User, Host
FROM mysql.user;

-- Example: Delete the user named 'john' from localhost 
-- DROP USER 'james'@'localhost';

-- SHOW GRANTS FOR CURRENT_USER;


