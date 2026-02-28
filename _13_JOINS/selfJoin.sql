-- Create Database
CREATE DATABASE selfJoin_example;
USE selfJoin_example;

-- Create Employee Table
CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    manager_id INT
);

-- Insert Data
INSERT INTO employee VALUES
(1, 'Adam', NULL),
(2, 'Bob', 1),
(3, 'Casey', 1);

-- View tables
SELECT * FROM employee;

-- Self Join
SELECT e.name, m.name
FROM employee e
JOIN employee m
ON e.manager_id = m.id;