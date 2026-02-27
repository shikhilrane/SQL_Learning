CREATE DATABASE cascade_demo;
USE cascade_demo;

-- Parent Table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Child Table with CASCADE
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id)
    REFERENCES departments(dept_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Insert into parent
INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR');

-- Insert into child
INSERT INTO employees VALUES
(101, 'Alice', 1),
(102, 'Bob', 1),
(103, 'Charlie', 2);

SELECT * FROM departments;
SELECT * FROM employees;

-- When we delete dept_id = 1 from parent table, all employees having dept_id = 1 in child table will also be automatically deleted (ON DELETE CASCADE)
DELETE FROM departments WHERE dept_id = 1;

-- When we update dept_id = 2 to 10 in parent table, all employees having dept_id = 2 in child table will also be automatically updated to 10 (ON UPDATE CASCADE)
UPDATE departments
SET dept_id = 10
WHERE dept_id = 2;