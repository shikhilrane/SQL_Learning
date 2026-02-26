-- Step 1 : Create a table inside created DB to store employee info (id,name and salary)
CREATE DATABASE employeeInformation;
USE employeeInformation;

CREATE TABLE employeeTable(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary BIGINT
);

-- Step 2 : Add following information in DB
INSERT INTO employeeTable
(id,name,salary)
VALUES
(1, 'adam', 25000),
(2, 'bob', 30000),
(3, 'casey', 40000);

-- Step 3 : Select and view all your data
SELECT * FROM employeeTable;