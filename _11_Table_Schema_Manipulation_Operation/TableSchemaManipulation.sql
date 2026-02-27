CREATE DATABASE schema_manipulation;
USE schema_manipulation;

CREATE TABLE schema_table(
    rollnumber INT PRIMARY KEY,
    name VARCHAR(100),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(100)
);

INSERT INTO schema_table
(rollnumber, name, marks, grade, city)
VALUES
(101, 'Alice', 85, 'A', 'Mumbai'),
(102, 'Bob', 72, 'B', 'Delhi'),
(103, 'Charlie', 90, 'A', 'Pune'),
(104, 'Diana', 66, 'C', 'Bangalore'),
(105, 'Ethan', 78, 'B', 'Hyderabad'),
(106, 'Fatima', 95, 'A', 'Chennai');

SELECT * FROM schema_table;

--------------------------------- Schema manipulation operations starts here ---------------------------------
-- ALTER
-- 1. ADD COLUMN :
    ALTER TABLE schema_table
    ADD COLUMN age INT NOT NULL DEFAULT 18;

    UPDATE schema_table
    SET age = 21
    WHERE rollnumber = 101;

    UPDATE schema_table
    SET age = 22
    WHERE rollnumber = 102;

    UPDATE schema_table
    SET age = 20
    WHERE rollnumber = 103;

    UPDATE schema_table
    SET age = 23
    WHERE rollnumber = 104;

    UPDATE schema_table
    SET age = 19
    WHERE rollnumber = 105;

    UPDATE schema_table
    SET age = 24
    WHERE rollnumber = 106;

-- 2. MODIFY COLUMN (modify column's datatype and constraint) :
    ALTER TABLE schema_table
    MODIFY COLUMN age VARCHAR(2);

    INSERT INTO schema_table
    (rollnumber,name,marks,age)
    VALUES
    (107, 'George', 82, '100');   -- As we have mentioned age would be VARCHAR(2) but we put 100 so it will give an error, so in next step we will change the datatype

-- 3. CHANGE COLUMN (change column name, datatype and constraint):
    ALTER TABLE schema_table
    CHANGE COLUMN age renameAge INT;

    UPDATE schema_table
    SET renameAge = 100
    WHERE rollnumber = 107;

-- 4. DROP COLUMN (Use to delete column) :
    ALTER TABLE schema_table
    DROP COLUMN renameAge;

-- 5. RENAME TO (rename table) :
    ALTER TABLE schema_table
    RENAME TO new_manipulation_table;

SELECT * FROM new_manipulation_table;




-- TRUNCATE
TRUNCATE TABLE new_manipulation_table;