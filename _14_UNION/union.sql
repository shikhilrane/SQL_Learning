-- Create Database
CREATE DATABASE union_example;
USE union_example;

-- Create Table students_2023
CREATE TABLE students_2023 (
    id INT,
    name VARCHAR(100)
);

-- Create Table students_2024
CREATE TABLE students_2024 (
    id INT,
    name VARCHAR(100)
);

-- Insert Data into students_2023
INSERT INTO students_2023 VALUES
(1, 'Adam'),
(2, 'Bob'),
(3, 'Casey');

-- Insert Data into students_2024
INSERT INTO students_2024 VALUES
(1, 'Franklin'),    -- Created with same ID of students_2023 but it will be different, so it will be get repeated in UNION
(3, 'Casey'),       -- Created with same ID and same name of students_2023 so it won't be get repeated in UNION
(4, 'David'),
(5, 'Emma'),
(6, 'Bob');         -- Created with same name of students_2023 but it will be different, so it will be get repeated in UNION

-- View Tables
SELECT * FROM students_2023;
SELECT * FROM students_2024;

-- --------------------------------------------------
-- UNION (Removes Duplicate Records)
-- --------------------------------------------------

SELECT id, name FROM students_2023
UNION
SELECT id, name FROM students_2024;

-- --------------------------------------------------
-- UNION ALL (Keeps Duplicate Records)
-- --------------------------------------------------

SELECT id, name FROM students_2023
UNION ALL
SELECT id, name FROM students_2024;