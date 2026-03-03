USE ORG;
SELECT * FROM Worker;
SELECT * FROM Bonus;
SELECT * FROM Title;


-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>. (Make use of ALIAS to fetch FIRST_NAME from Worker table)
SELECT FIRST_NAME AS WORKER_NAME FROM Worker;

-- Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case. (Fetch FIRST_NAME in Upper Case )
SELECT UPPER(FIRST_NAME) FROM Worker;

-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table. (Fetch unique Departments from Worker table)
-- Using DISTINCT
SELECT DISTINCT Department FROM Worker;

-- Using GROUP BY
SELECT Department FROM Worker
GROUP BY Department;


-- Q-4. Write an SQL query to print the first three characters of FIRST_NAME from Worker table. (Print first 3 characters of FIRST_NAME from Worker table)
SELECT SUBSTRING(FIRST_NAME, 1, 3) FROM Worker;


-- Q-5. Write an SQL query to find the position of the alphabet (‘b’) in the first name column ‘Amitabh’ from Worker table. (Fetch position of 'A' worker where FIRST_NAME is Amitabh from worker table)
SELECT LOCATE('A', FIRST_NAME, 2)
FROM Worker
WHERE FIRST_NAME = 'AMITABH';


-- Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side. (Remove extra spaces from right)
SELECT RTRIM(FIRST_NAME), LENGTH(FIRST_NAME) FROM Worker; -- Removes Whitespaces from right


-- Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side. (Remove extra spaces from left)
SELECT LTRIM(FIRST_NAME) FROM Worker; -- Removes Whitespaces from left


-- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length. (Find Length)
SELECT DISTINCT Department, LENGTH(Department) FROM Worker;


-- Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’. (Replace 'a' with 'A' in FIRST_NAME)
SELECT REPLACE(FIRST_NAME, 'a', 'A') FROM Worker;


-- Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. (Concat FIRST_NAME, ' ', LAST_NAME to form COMPLETE_NAME)
-- A space char should separate them.
SELECT CONCAT(FIRST_NAME, " ", LAST_NAME) AS COMPLETE_NAME FROM Worker;


-- Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending. (Order by the FIRST_NAME)
SELECT * FROM Worker
ORDER BY FIRST_NAME ASC;


-- Q-12. Write an SQL query to print all Worker details from the Worker table order by 
-- FIRST_NAME Ascending and DEPARTMENT Descending.
SELECT * FROM Worker
ORDER BY FIRST_NAME ASC, Department DESC;



-- Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table. (Print details of Vipul and Satish)
-- Using IN
SELECT * FROM Worker
WHERE FIRST_NAME IN ('Vipul', 'Satish'); -- Most Reliable

-- Using OR
SELECT * FROM Worker
WHERE FIRST_NAME = 'Vipul' OR FIRST_NAME = 'Satish';


-- Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table. (Print details of all Worker excluding Vipul and Satish)
SELECT * FROM Worker
WHERE FIRST_NAME NOT IN ('Vipul', 'Satish');


-- Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin*”. (Return worker who has Department as Admin (* = After Admin there can be any character(s)))
-- It will Strictly check for 'Admin'
SELECT * FROM Worker
WHERE Department = 'Admin';

-- It will check for 'Admin' and if any other character present after Admin
SELECT * FROM Worker
WHERE Department LIKE 'Admin%';


-- Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
SELECT * FROM Worker
WHERE FIRST_NAME LIKE '%a%';


-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
SELECT * FROM Worker
WHERE FIRST_NAME LIKE '%a';

-- Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
SELECT * FROM Worker
WHERE FIRST_NAME LIKE '_____h';


-- Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000. (Salary between 100000 to 500000)
SELECT * FROM Worker
WHERE SALARY BETWEEN 100000 AND 500000;


-- Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014. (Joined in Feb 2024)
SELECT * FROM Worker
WHERE YEAR(JOINING_DATE) = 2014 AND MONTH(JOINING_DATE) = 2 AND DAY(JOINING_DATE) = 20;


-- Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’. (Count number of workers as Admin)
SELECT COUNT(Department), FIRST_NAME FROM Worker
WHERE Department = 'Admin'
GROUP BY FIRST_NAME;


-- Q-22. Write an SQL query to fetch worker full names with salaries >= 50000 and <= 100000. (Fullname of workers whose salary is between 50000 to 100000)
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME FROM Worker
WHERE SALARY BETWEEN 50000 AND 100000;


-- Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
SELECT Department, COUNT(WORKER_ID)
FROM Worker
GROUP BY Department
ORDER BY COUNT(WORKER_ID) DESC;


-- Q-24. Write an SQL query to print details of the Workers who are also Managers.
SELECT w.*, t.WORKER_TITLE
FROM Worker AS w
INNER JOIN Title AS t
ON w.WORKER_ID = t.WORKER_REF_ID
WHERE t.WORKER_TITLE = 'Manager';
-- This query will generate a 'join table' that will have all the field of Worker (because w.*) and WORKER_TITLE of Title table (because t.WORKER_TITLE)


-- Q-25. Write an SQL query to fetch number (more than 1) of same titles in the ORG of different types. (Return number of WORK_TITLE whose count is greater than 1 from table Title)
SELECT WORKER_TITLE, COUNT(*)
FROM Title
GROUP BY WORKER_TITLE
HAVING COUNT(*) > 1;

-- Q-26. Write an SQL query to show only odd rows from a table.
-- select * from worker where MOD (WORKER_ID, 2) != 0;


-- Q-27. Write an SQL query to show only even rows from a table. 


-- Q-28. Write an SQL query to clone a new table from another table.


-- Q-29. Write an SQL query to fetch intersecting records of two tables.


-- Q-30. Write an SQL query to show records from one table that another table does not have.
-- MINUS


-- Q-31. Write an SQL query to show the current date and time.
-- DUAL


-- Q-32. Write an SQL query to show the top n (say 5) records of a table order by descending salary.


-- Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.


-- Q-34. Write an SQL query to determine the 5th highest salary without using LIMIT keyword.

 
-- Q-35. Write an SQL query to fetch the list of employees with the same salary.


-- Q-36. Write an SQL query to show the second highest salary from a table using sub-query.


-- Q-37. Write an SQL query to show one row twice in results from a table.


-- Q-38. Write an SQL query to list worker_id who does not get bonus.


-- Q-39. Write an SQL query to fetch the first 50% records from a table.


-- Q-40. Write an SQL query to fetch the departments that have less than 4 people in it.


-- Q-41. Write an SQL query to show all departments along with the number of people in there.


-- Q-42. Write an SQL query to show the last record from a table.


-- Q-43. Write an SQL query to fetch the first row of a table.


-- Q-44. Write an SQL query to fetch the last five records from a table.


-- Q-45. Write an SQL query to print the name of employees having the highest salary in each department.


-- Q-46. Write an SQL query to fetch three max salaries from a table using co-related subquery


-- DRY RUN AFTER REVISING THE CORELATED SUBQUERY CONCEPT FROM LEC-9.


-- Q-47. Write an SQL query to fetch three min salaries from a table using co-related subquery


-- Q-48. Write an SQL query to fetch nth max salaries from a table.


-- Q-49. Write an SQL query to fetch departments along with the total salaries paid for each of them.


-- Q-50. Write an SQL query to fetch the names of workers who earn the highest salary.