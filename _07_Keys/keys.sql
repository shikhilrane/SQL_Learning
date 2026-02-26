-- Create Database
CREATE DATABASE keyDemo;
USE keyDemo;

-- Table 1: Cities (Parent Table)
CREATE TABLE cities (
    id INT PRIMARY KEY,
    city_name VARCHAR(50)
);

-- Insert data into cities
INSERT INTO cities VALUES
(1, 'Pune'),
(2, 'Mumbai'),
(3, 'Delhi');

-- Table 2: Students (Child Table)
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    city_id INT,									-- Creating Column to store id of city for any particular student
    FOREIGN KEY (city_id) REFERENCES cities(id) 	-- Assigning rule on column
);

-- Insert data into students
INSERT INTO students VALUES
(1, 'Karan', 1),
(2, 'Arjun', 2),
(3, 'Ram', 1),
(4, 'Shyam', 3);

-- View Data
SELECT * FROM cities;
SELECT * FROM students;