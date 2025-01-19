
-- COMMIT transcation 

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


-- Statement 2: Create Savepoint
SAVEPOINT SP1;


-- Statement 3: Add 10000 from employee_id=5
UPDATE staff_members
SET salary=salary+10000
WHERE employee_id=5;

-- Statement 4: Create Savepoint
SAVEPOINT SP2;

-- Statement 4.1
-- Statement 4.2
-- Statement 4.3

-- Statement 5: Update salary employee_id=2 by adding 33333 (Error)
UPDATE staff_members
SET salary=salary+33333 -- (fixed error )
WHERE employee_id=2;

-- Statement 6: Rollback the transaction to undo the changes
ROLLBACK TO SAVEPOINT SP2;


-- Statement 7: Commit the transaction to make the changes permanent
COMMIT;
