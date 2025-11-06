-- =========================================================
-- Day 33 – Functions (Day 6 Challenge)
-- =========================================================

USE employee;

-- =========================================================
-- Q1: STRING FUNCTIONS
-- =========================================================

-- 1. UPPER()
SELECT emp_name, UPPER(emp_name) AS UpperName
FROM Employees;

-- 2. LOWER()
SELECT emp_name, LOWER(emp_name) AS LowerName
FROM Employees;

-- 3. SUBSTRING()
SELECT emp_name, SUBSTRING(emp_name, 1, 3) AS FirstThreeChars
FROM Employees;

-- 4. CONCAT()
SELECT CONCAT(emp_name, ' - ', designation) AS FullDetails
FROM Employees;

-- =========================================================
-- Q2: DATE FUNCTIONS
-- =========================================================

-- Tenure in days
SELECT emp_name,
       date_of_joining,
       DATEDIFF(NOW(), date_of_joining) AS Tenure_Days
FROM Employees;

-- Tenure in years
SELECT emp_name,
       date_of_joining,
       ROUND(DATEDIFF(NOW(), date_of_joining)/365, 2) AS Tenure_Years
FROM Employees;

-- =========================================================
-- Q3: USER DEFINED FUNCTION (UDF)
-- =========================================================

DELIMITER $$

CREATE FUNCTION GetFullName(firstName VARCHAR(50), lastName VARCHAR(50))
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    RETURN CONCAT(firstName, ' ', lastName);
END $$

DELIMITER ;

-- Test UDF
SELECT GetFullName('Sheik', 'Hanifa') AS FullName;
