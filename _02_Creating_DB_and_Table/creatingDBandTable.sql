-- Creation of DB
CREATE DATABASE temp1;
CREATE DATABASE temp2;

-- Delete DB
DROP DATABASE temp2;

-- USE of DB
USE temp1;

-- Create table
CREATE TABLE adminPanel(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

-- Adding values in created table
INSERT INTO adminPanel VALUES (
	1, "Shikhil", 29
);

-- Show table
SELECT * FROM adminPanel;

-- Create and Delete table
CREATE TABLE management(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

DROP TABLE management;