-- Write a query to find avg marks in each city in ascending order
CREATE DATABASE Q2;
USE Q2;

CREATE TABLE Q2_table(
    id INT PRIMARY KEY,
    city VARCHAR(50),
    marks INT NOT NULL
);

INSERT INTO Q2_table (id,city,marks)
VALUES
(1,'Mumbai',64),
(2,'Delhi', 56),
(3,'Pune',75),
(4,'Mumbai',95),
(5,'Delhi', 81),
(6,'Mumbai',72),
(7,'Pune',91);

SELECT city, AVG(marks)
FROM Q2_table
GROUP BY city;