USE employee;

-- =========================================================
-- Q1: TRIGGER – Log deleted rows from Orders to Order_History
-- =========================================================

-- Create Orders table (if not exists)
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT PRIMARY KEY,
    emp_id INT,
    amount DECIMAL(10,2)
);

-- Create Order_History table (log table)
CREATE TABLE IF NOT EXISTS Order_History (
    order_id INT,
    emp_id INT,
    amount DECIMAL(10,2),
    deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Trigger to log deleted orders
DELIMITER $$

CREATE TRIGGER Log_Order_Delete
AFTER DELETE ON Orders
FOR EACH ROW
BEGIN
    INSERT INTO Order_History (order_id, emp_id, amount)
    VALUES (OLD.order_id, OLD.emp_id, OLD.amount);
END $$

DELIMITER ;

-- Test trigger
-- DELETE FROM Orders WHERE order_id = 1;


-- =========================================================
-- Q2: DCL COMMANDS – GRANT & REVOKE
-- =========================================================

-- Grant SELECT access to junior analyst
GRANT SELECT ON employee.* TO 'junior_analyst'@'localhost';

-- Revoke SELECT access
REVOKE SELECT ON employee.* FROM 'junior_analyst'@'localhost';


-- =========================================================
-- Q3: TCL COMMANDS – COMMIT, ROLLBACK, SAVEPOINT
-- =========================================================

-- Create example Bank table (if needed)
CREATE TABLE IF NOT EXISTS BankAccounts (
    acc_no INT PRIMARY KEY,
    balance DECIMAL(10,2)
);

-- Start transaction
START TRANSACTION;

-- Transfer example
UPDATE BankAccounts SET balance = balance - 5000 WHERE acc_no = 101;
SAVEPOINT Step1;

UPDATE BankAccounts SET balance = balance + 5000 WHERE acc_no = 202;
SAVEPOINT Step2;

-- If any error, rollback
-- ROLLBACK TO Step1;

-- If everything is ok:
COMMIT;
