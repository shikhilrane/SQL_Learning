-------------------------------------------------- Important Datatypes ------------------------------------------------------------------
-- Create DB and use it
CREATE DATABASE importantDataTypes;
USE importantDataTypes;

-- Create Table in created DB
CREATE TABLE important_datatypes_table (
    id INT,
    big_number BIGINT,
    salary DECIMAL(10,2),
    name VARCHAR(100),
    gender CHAR(1),
    description TEXT,
    birth_date DATE,
    created_at DATETIME,
    updated_at TIMESTAMP,
    is_active BOOLEAN
);

-- Insert Sample Data
INSERT INTO important_datatypes_table
VALUES (
    1,
    9876543210,
    75000.50,
    'Shikhil',
    'M',
    'Java Full Stack Developer',
    '1996-04-10',
    '2025-02-26 18:30:00',
    CURRENT_TIMESTAMP,
    TRUE
);

-- Show created Table
SELECT * FROM important_datatypes_table;


-------------------------------------------------- SIGNED and UNSIGNED Numerics ------------------------------------------------------------------
-- Create DB and use it
CREATE DATABASE companyDatabase;
USE companyDatabase;

-- Create Table in created DB
CREATE TABLE employees (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,  -- ID kabhi negative nahi hota
    age TINYINT UNSIGNED,                        -- Age negative nahi hoti
    experience_years TINYINT UNSIGNED,           -- Experience bhi negative nahi hota
    salary DECIMAL(10,2) UNSIGNED,               -- Salary negative nahi hoti
    bonus DECIMAL(8,2) UNSIGNED,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample values within valid ranges
INSERT INTO employees (age, experience_years, salary, bonus, name, email) VALUES (29, 5, 75000.50, 5000.00, 'Shikhil', 'shikhil@gmail.com'); -- id is auto-generated, and is_active and created_at use their default values.

-- View inserted data
SELECT * FROM employees;