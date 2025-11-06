USE employee;

-- =========================================================
-- Q1: STORED PROCEDURE – Fetch employee details by ID
-- =========================================================

DELIMITER $$

CREATE PROCEDURE GetEmployeeByID(IN emp_id_input INT)
BEGIN
    SELECT *
    FROM Employees
    WHERE emp_id = emp_id_input;
END $$

DELIMITER ;

-- Example run
CALL GetEmployeeByID(1);

-- =========================================================
-- Q2: SIMPLE VIEW – Employee Name + Department
-- =========================================================

CREATE VIEW Emp_Department_View AS
SELECT 
    e.emp_name,
    d.department_name
FROM Employees e
JOIN Departments_Info d
    ON e.department_id = d.department_id;

-- Test view
SELECT * FROM Emp_Department_View;

-- =========================================================
-- Q3: COMPLEX VIEW – Employees + Departments + Locations
-- =========================================================

CREATE VIEW Emp_FullDetails_View AS
SELECT
    e.emp_id,
    e.emp_name,
    e.designation,
    e.salary,
    d.department_name,
    l.location_name
FROM Employees e
JOIN Departments_Info d
    ON e.department_id = d.department_id
JOIN Locations l
    ON e.location_id = l.location_id;

-- Test complex view
SELECT * FROM Emp_FullDetails_View;
