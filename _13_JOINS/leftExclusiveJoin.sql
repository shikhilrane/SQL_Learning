-- Create Database
CREATE DATABASE leftExclusive_example;
USE leftExclusive_example;

-- Create Tables
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE course (
    student_id INT,
    course VARCHAR(100)
);

-- Insert Data
INSERT INTO student VALUES
(101, 'adam'),
(102, 'bob'),
(103, 'casey');

INSERT INTO course VALUES
(102, 'english'),
(105, 'math'),
(103, 'science'),
(107, 'computer science');

-- View tables
SELECT * FROM student;
SELECT * FROM course;

-- Left Exclusive Join
SELECT *
FROM student AS std
LEFT JOIN course AS crc
ON std.student_id = crc.student_id
WHERE crc.student_id IS NULL;