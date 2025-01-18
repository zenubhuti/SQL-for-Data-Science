-- REVOKE privileges

SHOW GRANTS FOR 'james'@'localhost';

-- Question 2: REVOKE ALL PRIVILEGES on  staff_management database to USER:james
REVOKE ALL PRIVILEGES 
ON staff_management.* 
FROM 'james'@'localhost';
-- Makes changes to user privileges take effect immediately
FLUSH PRIVILEGES;



-- Question 1: REVOKE INSERT and DELETE on staff_members table to USER:james
REVOKE INSERT, UPDATE
ON staff_management.staff_members 
FROM 'james'@'localhost';
-- Makes changes to user privileges take effect immediately
FLUSH PRIVILEGES;

