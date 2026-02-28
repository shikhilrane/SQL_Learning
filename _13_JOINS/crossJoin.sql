-- Create Database
CREATE DATABASE crossJoin_example;
USE crossJoin_example;

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

-- Cross Join
SELECT *
FROM student AS std
CROSS JOIN course AS crc;