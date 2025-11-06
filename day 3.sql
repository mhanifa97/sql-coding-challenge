CREATE DATABASE UniversityDB;

USE UniversityDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Department VARCHAR(50),
    GPA DECIMAL(3,2),
    Email VARCHAR(100)
);

INSERT INTO Students (StudentID, StudentName, Department, GPA, Email) VALUES
(1, 'Arun', 'CSE', 8.5, 'arun@gmail.com'),
(2, 'Priya', 'ECE', 7.9, NULL),
(3, 'Kumar', 'IT', 9.1, 'kumar@yahoo.com'),
(4, 'Meena', 'CSE', 8.0, NULL),
(5, 'Rahul', 'EEE', 7.5, 'rahul@outlook.com'),
(6, 'Anu', 'IT', 9.3, 'anu@gmail.com');

SELECT DISTINCT Department FROM Students;

SELECT * FROM Students WHERE GPA > 8.0;

SELECT * FROM Students WHERE Email IS NULL;

SELECT * FROM Students WHERE Email IS NOT NULL;

SELECT * FROM Students WHERE Department IN ('CSE', 'IT');

SELECT * FROM Students WHERE GPA BETWEEN 8.0 AND 9.0;

SELECT * FROM Students WHERE GPA NOT BETWEEN 8.0 AND 9.0;
