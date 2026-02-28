-- Create Database
CREATE DATABASE index_demo;
USE index_demo;

-- Create Table
CREATE TABLE students (
    rollno INT PRIMARY KEY,
    name VARCHAR(100),
    marks INT,
    city VARCHAR(50)
);

-- Insert Sample Data
INSERT INTO students VALUES
(101, 'Adam', 78, 'Pune'),
(102, 'Bob', 93, 'Mumbai'),
(103, 'Casey', 85, 'Mumbai'),
(104, 'David', 96, 'Delhi'),
(105, 'Emma', 92, 'Delhi'),
(106, 'Farah', 82, 'Chennai');

-- View Table
SELECT * FROM students;

-- --------------------------------------------------
-- CREATE INDEX
-- --------------------------------------------------

-- Create Index on name column
CREATE INDEX idx_name
ON students(name);

-- Create Index on city column
CREATE INDEX idx_city
ON students(city);

-- --------------------------------------------------
-- USE INDEX (Search Example)
-- --------------------------------------------------

-- This query will use index internally
SELECT * FROM students WHERE name = 'Bob';

SELECT * FROM students WHERE city = 'Delhi';

-- --------------------------------------------------
-- SHOW INDEXES
-- --------------------------------------------------

SHOW INDEX FROM students;

-- --------------------------------------------------
-- DROP INDEX
-- --------------------------------------------------

DROP INDEX idx_name ON students;
DROP INDEX idx_city ON students;