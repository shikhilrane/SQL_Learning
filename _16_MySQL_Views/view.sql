-- Create Database
CREATE DATABASE view_example;
USE view_example;

-- Create Table
CREATE TABLE students (
    rollno INT PRIMARY KEY,
    name VARCHAR(100),
    marks INT,
    city VARCHAR(50)
);

-- Insert Data
INSERT INTO students VALUES
(101, 'Adam', 78, 'Pune'),
(102, 'Bob', 93, 'Mumbai'),
(103, 'Casey', 85, 'Mumbai'),
(104, 'David', 96, 'Delhi'),
(105, 'Emma', 92, 'Delhi');

-- View Table
SELECT * FROM students;



--------------------------------------------------
-- Create View (With Specific Columns)
--------------------------------------------------

CREATE VIEW nameAndCity AS
SELECT name, city FROM students;

-- Use View
SELECT * FROM nameAndCity;

--------------------------------------------------
-- Create View (Students who scored above 90)
--------------------------------------------------

CREATE VIEW top_students AS
SELECT name, marks
FROM students
WHERE marks > 90;

-- Use View
SELECT * FROM top_students;

--------------------------------------------------
-- Create View (Delhi Students Only)
--------------------------------------------------

CREATE VIEW delhi_students AS
SELECT rollno, name
FROM students
WHERE city = 'Delhi';

-- Use View
SELECT * FROM delhi_students;



--------------------------------------------------
-- Drop View
--------------------------------------------------

DROP VIEW delhi_students;