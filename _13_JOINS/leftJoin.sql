-- Create Database
CREATE DATABASE leftJoin_example;
USE leftJoin_example;

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

-- Left Join
SELECT *
FROM student AS std
LEFT JOIN course AS crc
ON std.student_id = crc.student_id;