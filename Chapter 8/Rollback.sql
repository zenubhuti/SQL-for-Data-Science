-- ROLLBACK transcation

-- Select the database to use
USE staff_management;

-- Enable safe updates (optional, set to 0 to disable)
SET SQL_SAFE_UPDATES = 0;

-- Start a transaction
START TRANSACTION;

-- Statement 1: Substract 10000 from employee_id=2
UPDATE staff_members
SET salary=salary-10000
WHERE employee_id=2;

-- Statement 2: Add 10000 from employee_id=5
UPDATE staff_members
SET salary=salary+10000
WHERE employee_id=5;

-- Statement 3: Update salary employee_id=2 by adding 33333 (Error)
UPDATE staff_members
SET salery=salary+33333 -- (spell error)
WHERE employee_id=2;


-- Rollback the transaction to undo the changes
ROLLBACK;

