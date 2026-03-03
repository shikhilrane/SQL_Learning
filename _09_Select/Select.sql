--------------------------------- Creating DB, Using DB, Creating Table, and insert values in table for SELECT Operation ---------------------------------
CREATE DATABASE myCollege;
USE myCollege;

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

-- --------------------------------- Select Commands ---------------------------------
-- 1. Basic
    -- 1.1. Select few
        SELECT name, marks FROM students;
    -- 1.2. Select ALL
        SELECT * FROM students;
    -- 1.3. Select DISTINCT values
        SELECT DISTINCT grade FROM students;


-- 2. WHERE Clause
    -- 2.0 SELECT where CONDITION
        SELECT * FROM students WHERE marks>80;
        SELECT * FROM students WHERE city="Mumbai";
    -- 2.1 AND Operator
        SELECT * FROM students WHERE marks>80 AND city="Mumbai";
    -- 2.1 OR Operator
        SELECT * FROM students WHERE marks>80 OR city="Hyderabad";
    -- 2.2 BETWEEN Operator
        SELECT * FROM students WHERE marks BETWEEN 70 AND 80;
    -- 2.3 IN Operator
        SELECT * FROM students WHERE city IN ("Mumbai", "Delhi");
    -- 2.4 NOT IN Operator
        SELECT * FROM students WHERE city NOT IN ("Mumbai", "Delhi");
    -- 2.5 LIKE
        SELECT * FROM students WHERE city LIKE ("De%") -- It will return all the cities that contain at least "de" and after "de" there can be any characters
        SELECT * FROM students WHERE city LIKE ("%De%") -- It will return all the cities that contain at least "de" and before and after "de" there can be any characters

-- 3. LIMIT Clause
    SELECT * FROM students LIMIT 4;


-- 4. ORDER BY Clause
    SELECT * FROM students ORDER BY city ASC;
    SELECT * FROM students ORDER BY city DESC;


-- Aggregate Functions
    -- 1. COUNT()
        SELECT COUNT(*) FROM students;
    -- 2. MAX()
        SELECT MAX(marks) FROM students;
    -- 3. MIN()
        SELECT MIN(marks) FROM students;
    -- 4. SUM()
        SELECT SUM(marks) FROM students;
    -- 5. AVG()
        SELECT AVG(marks) FROM students;

-- String Functions
    -- 1. UPPER()
        SELECT UPPER(name) FROM students;
    -- 2. LOWER()
        SELECT LOWER(name) FROM students;
    -- 3. SUBSTRING()
        SELECT SUBSTRING(name,1,3) FROM students;
    -- 4. INSTR()
        SELECT INSTR(name, 'A')
        FROM students
        WHERE name = 'Diana';   -- Use to find location of 'A' in name Diana
    -- 5. LOCATE()
        SELECT LOCATE('A', name, 4)
        FROM students
        WHERE name = 'Diana';   -- Use to find location of 'A' in name Diana from 4th character
    -- 6. RTRIM()
        SELECT RTRIM(name) FROM students; -- Removes Whitespaces from right if present
    -- 7. LTRIM()
        SELECT LTRIM(name) FROM students; -- Removes Whitespaces from left if present
    -- 8. LENGTH()
        SELECT name, LENGTH(name) FROM students;
    -- 9. REPLACE()
        SELECT REPLACE(name, 'a', 'A') FROM students;
    -- 10. CONCAT()
        SELECT CONCAT(name, ' ', city) AS NameAndCity FROM students;

-- DISTINCT Keyword
    SELECT DISTINCT(city) FROM students;

-- 5. GROUP BY clause
    -- 1. Group by city
        SELECT city, COUNT(marks)
        FROM students
        GROUP BY city;
    -- 2. Group by grade
        SELECT grade, COUNT(name)
        FROM students
        GROUP BY grade;
    -- 3. Average marks city-wise
        SELECT city, AVG(marks)
        FROM students
        GROUP BY city;
    -- 4. Maximum marks grade-wise
        SELECT grade, MAX(marks)
        FROM students
        GROUP BY grade;
    -- 5. Group by grade and city
        SELECT grade, city, COUNT(name)
        FROM students
        GROUP BY grade, city;


-- 6. HAVING Clause
    SELECT city, COUNT(rollnumber)
    FROM students
    GROUP BY city
    HAVING MAX(marks)>90;


-- 7. General Order
    SELECT city
    FROM students
    WHERE grade = "A"
    GROUP BY city
    HAVING MAX(marks)>80
    ORDER BY city ASC;