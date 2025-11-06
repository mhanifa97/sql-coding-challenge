CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    CourseID INT
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100)
);

INSERT INTO Students (StudentID, StudentName, CourseID) VALUES
(1, 'Arun', 101),
(2, 'Priya', 102),
(3, 'Kumar', 103),
(4, 'Meena', NULL);

INSERT INTO Courses (CourseID, CourseName) VALUES
(101, 'Computer Science'),
(102, 'Electronics'),
(103, 'Information Technology'),
(104, 'Mechanical');


SELECT 
    Students.StudentName, 
    Courses.CourseName
FROM Students
INNER JOIN Courses
ON Students.CourseID = Courses.CourseID;

SELECT 
    Students.StudentName, 
    Courses.CourseName
FROM Students
LEFT JOIN Courses
ON Students.CourseID = Courses.CourseID;

SELECT 
    Students.StudentName, 
    Courses.CourseName
FROM Students
RIGHT JOIN Courses
ON Students.CourseID = Courses.CourseID;

CREATE TABLE CurrentEmployees (
    EmpName VARCHAR(100)
);

CREATE TABLE PastEmployees (
    EmpName VARCHAR(100)
);

INSERT INTO CurrentEmployees (EmpName) VALUES
('Arun'), ('Priya'), ('Kumar');

INSERT INTO PastEmployees (EmpName) VALUES
('Priya'), ('Meena'), ('Sathish');

SELECT EmpName FROM CurrentEmployees
UNION
SELECT EmpName FROM PastEmployees;

SELECT EmpName FROM CurrentEmployees
UNION ALL
SELECT EmpName FROM PastEmployees;
