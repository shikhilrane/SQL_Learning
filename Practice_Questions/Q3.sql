CREATE DATABASE myClassQ3;
USE myClassQ3;

CREATE TABLE students (
    rollnumber INT PRIMARY KEY,
    name VARCHAR(100),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(100)
);

INSERT INTO students
(rollnumber, name, marks, grade, city)
VALUES
(101, 'Alice', 85, 'A', 'Mumbai'),
(102, 'Bob', 72, 'B', 'Delhi'),
(103, 'Charlie', 90, 'A', 'Pune'),
(104, 'Diana', 66, 'C', 'Bangalore'),
(105, 'Ethan', 78, 'B', 'Hyderabad'),
(106, 'Fatima', 95, 'A', 'Chennai');

SELECT * FROM students;

--------------------------------- Questions ---------------------------------
-- Q1. Change the name of column "name" to "full_name"
ALTER TABLE students
CHANGE COLUMN name full_name VARCHAR(25);

-- Q2. Delete all the students who scored marks less than 80
DELETE FROM students
WHERE marks < 80;

-- Q3. Delete the column for grade
ALTER TABLE students
DROP COLUMN grade