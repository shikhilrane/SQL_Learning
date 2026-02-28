-- Create Database
CREATE DATABASE subquery_example;
USE subquery_example;

-- Create Table
CREATE TABLE students (
    rollno INT PRIMARY KEY,
    name VARCHAR(100),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

-- Insert Data
INSERT INTO students
(rollno, name, marks, grade, city)
VALUES
(101, 'Adam', 78, 'C', 'Pune'),
(102, 'Bob', 93, 'A', 'Mumbai'),
(103, 'Casey', 85, 'B', 'Mumbai'),
(104, 'David', 96, 'A', 'Delhi'),
(105, 'Emma', 92, 'F', 'Delhi'),
(106, 'Farah', 82, 'B', 'Delhi');

-- View Table
SELECT * FROM students;

-- ------------------------------ SubQueries ------------------------------
-- WHERE -------
-- 1. Find maximum marks than average marks
-- 1.1. Normally finding stundent/s who scored more marks than average marks
SELECT AVG(marks)
FROM students;

SELECT name, marks
FROM students
WHERE marks > 87.6667;

-- 1.2. By using subquery, find stundent/s who scored more marks than average marks
SELECT name, marks
FROM students
WHERE marks > (
	SELECT AVG(marks)
	FROM students
);

-- 2. Return all the students from Delhi
SELECT name, city
FROM students
WHERE city IN (
    SELECT city
    FROM students
    WHERE city = 'Delhi'
);

-- 3. Return student of name David
SELECT name, rollno
FROM students
WHERE rollno = (
    SELECT rollno
    FROM students
    WHERE name = 'David'
);

-- 4. Return all with even rollno
SELECT name, rollno
FROM students
WHERE rollno IN (
    SELECT rollno
    FROM students
    WHERE rollno % 2 = 0
);

-- FROM -------
-- Find the max marks from the students of Delhi
SELECT MAX(marks)
FROM (
	SELECT *
	FROM students
	WHERE city = 'Delhi'
)AS delhi_students;

-- SELECT -------
SELECT (SELECT MAX(marks) FROM students), name
FROM students;

-- Only Subqueries through WHERE is widely used, whereas FROM and SELECT is not used widely