CREATE DATABASE ORG;
USE ORG;

-- 1. Creating FIRST table (Main table in which all workers are saved)

CREATE TABLE Worker (
    WORKER_ID INT PRIMARY KEY AUTO_INCREMENT,
    FIRST_NAME VARCHAR(25),
    LAST_NAME VARCHAR(25),
    SALARY INT,
    JOINING_DATE DATETIME,
    DEPARTMENT VARCHAR(25)
);

INSERT INTO Worker 
(FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES
('Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
('Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
('Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
('Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
('Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
('Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
('Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
('Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');
        
SELECT * FROM Worker;


-- 2. Creating SECOND table (Bonus table in which bonuses for workers are stored using FK (Included bonuses for 1,2,3 only and not for 4,5,6,7,8))

CREATE TABLE Bonus (
    WORKER_REF_ID INT,
    BONUS_AMOUNT INT,
    BONUS_DATE DATETIME,
    FOREIGN KEY (WORKER_REF_ID)
        REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) 
VALUES
(1, 5000, '16-02-20'),
(2, 3000, '16-06-11'),
(3, 4000, '16-02-20'),
(1, 4500, '16-02-20'),
(2, 3500, '16-06-11');
        
SELECT * FROM Bonus;


-- 3. Creating THIRD table (Title table in which title(Designation) for every worker is stored using FK)

CREATE TABLE Title (
    WORKER_REF_ID INT,
    WORKER_TITLE VARCHAR(25),
    AFFECTED_FROM DATETIME,
    FOREIGN KEY (WORKER_REF_ID)
        REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) 
VALUES
(1, 'Manager', '2016-02-20 00:00:00'),
(2, 'Executive', '2016-06-11 00:00:00'),
(8, 'Executive', '2016-06-11 00:00:00'),
(5, 'Manager', '2016-06-11 00:00:00'),
(4, 'Asst. Manager', '2016-06-11 00:00:00'),
(7, 'Executive', '2016-06-11 00:00:00'),
(6, 'Lead', '2016-06-11 00:00:00'),
(3, 'Lead', '2016-06-11 00:00:00');
 
SELECT * FROM Title;