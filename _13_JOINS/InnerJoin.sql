-- Create Database
CREATE DATABASE innerJoin_example;
USE innerJoin_example;

-- Create Student Table
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Create Course Table
CREATE TABLE course (
    student_id INT,
    course VARCHAR(100)
);

-- Insert data into student table
INSERT INTO student (student_id, name) VALUES
(101, 'adam'),
(102, 'bob'),
(103, 'casey');

-- Insert data into course table
INSERT INTO course (student_id, course) VALUES
(102, 'english'),
(105, 'math'),
(103, 'science'),
(107, 'computer science');

-- View tables
SELECT * FROM student;
SELECT * FROM course;

-- INNER JOIN
SELECT *
FROM student
INNER JOIN course
ON student.student_id = course.student_id;

-- INNER JOIN using ALIAS
SELECT *
FROM student AS s
INNER JOIN course AS c
ON s.student_id = c.student_id;