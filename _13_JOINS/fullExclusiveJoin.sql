-- Create Database
CREATE DATABASE fullExclusive_example;
USE fullExclusive_example;

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

-- Insert Data into student table
INSERT INTO student VALUES
(101, 'adam'),
(102, 'bob'),
(103, 'casey');

-- Insert Data into course table
INSERT INTO course VALUES
(102, 'english'),
(105, 'math'),
(103, 'science'),
(107, 'computer science');

-- View Tables
SELECT * FROM student;
SELECT * FROM course;

-- Full Exclusive Join
SELECT *
FROM student
LEFT JOIN course
ON student.student_id = course.student_id
WHERE course.student_id IS NULL

UNION

SELECT *
FROM student
RIGHT JOIN course
ON student.student_id = course.student_id
WHERE student.student_id IS NULL;