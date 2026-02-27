--------------------------------------------------- Create and Use of DB, Creation of Table for Operation ---------------------------------------------------
CREATE DATABASE myOffice;
USE myOffice;

CREATE TABLE employees (
    employeeId INT PRIMARY KEY,
    name VARCHAR(100),
    salary INT NOT NULL,
    department VARCHAR(20),
    city VARCHAR(100)
);

INSERT INTO employees
(employeeId, name, salary, department, city)
VALUES
(101, 'Alice', 85000, 'IT', 'Mumbai'),
(102, 'Bob', 72000, 'HR', 'Delhi'),
(103, 'Charlie', 90000, 'Admin', 'Pune'),
(104, 'Diana', 96000, 'IT', 'Bangalore'),
(105, 'Ethan', 78000, 'Management', 'Hyderabad'),
(106, 'Fatima', 95000, 'HR', 'Chennai');


--------------------------------------------------- Manipulation Operation ---------------------------------------------------
-- 1. Update
    UPDATE employees
    SET department = 'Human Resource'
    WHERE department = 'HR';

    UPDATE employees
    SET salary = 150000
    WHERE employeeId = 104;

-- 2. Delete
    DELETE FROM employees
    WHERE salary < 80000;

SELECT * FROM employees;