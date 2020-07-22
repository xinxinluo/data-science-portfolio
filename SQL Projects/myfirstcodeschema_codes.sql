-- Walk Through:  HOW TO CREATE SCHEMA/DATABASE AND TABLE

CREATE SCHEMA myfirstcodeschema; -- creating schema
USE myfirstcodeschema; -- specifying the schema to use;
CREATE TABLE myfirstcodetable (
	myfirstcodetable_id BIGINT NOT NULL,
    my_character_field VARCHAR(50),
    my_text_field TEXT, 
    my_created_at TIMESTAMP
    ); 


-- Practice 1: HOW TO CREATE SCHEMA/TABLES

CREATE SCHEMA toms_marketing_stuff; -- created a new schema/database 
USE toms_marketing_stuff; -- specifying the schema to use
CREATE TABLE publishers (
	publisher_id INT NOT NULL,
    publisher_name VARCHAR(65) NOT NULL, 
    PRIMARY KEY (publisher_id) -- identify the primary key in the table, which is unique and never repeat. 
    ); 
    
SELECT * FROM publishers; -- check to see what is in the table name publishers 

CREATE TABLE publisher_spend (
	publisher_spend_id VARCHAR(65) NOT NULL, -- all tables should have their own primary key; 
    publisher_id INT NOT NULL,
    month_ DATE NOT NULL,
    spend DECIMAL (10,2),
 PRIMARY KEY (publisher_spend_id) 
    ); 

SELECT * FROM publisher_spend;

-- Practice 2:  HOW TO DROP/ADD TABLE AND COLUMN
USE candystore;
SELECT * FROM employees; -- what begins

ALTER TABLE employees
DROP COLUMN hourly_wage; -- dropping an unwanted column; 

ALTER TABLE employees
ADD COLUMN ave_customer_rating DECIMAL (10,1) NOT NULL; 

SELECT * FROM employees; -- what ends


-- Walk Through: HOW TO INSERT AND UPDATING RECORDS;

USE thriftshop; -- sets the schema
SELECT * FROM inventory; -- see what to start with 
INSERT INTO inventory (inventory_id, item_name,number_in_stock) VALUES 
(10, 'wolf skin hat', 1); -- single insert 
SELECT * FROM inventory; -- see what to end with 

INSERT INTO inventory VALUES
(11, 'fur fox skin', 1), 
(12, 'plaid button up skirt', 8), 
(13, 'flannel zebra jammies', 6); -- batch insert 

SELECT * FROM inventory; -- see what to end with 

-- Practice 2: INSERTING AND UPDATNG NEW RECORDS;
USE candystore;
SELECT * FROM employees;

INSERT INTO employees VALUES
(7, 'Charles', 'Munger', '2020-03-15', 'Clert', 0.0), 
(8, 'William', 'Gates', '2020-03-15', 'Clert', 0.0); -- batch insert

UPDATE employees
SET ave_customer_rating = 4.8
WHERE employee_id = 1;

UPDATE employees
SET ave_customer_rating = 4.6
WHERE employee_id = 2;

UPDATE employees
SET ave_customer_rating =4.75
WHERE employee_id = 3;

UPDATE employees
SET ave_customer_rating = 4.9
WHERE employee_id = 4;

UPDATE employees
SET ave_customer_rating = 4.75
WHERE employee_id = 5;


UPDATE employees
SET ave_customer_rating = 4.2
WHERE employee_id = 6;


UPDATE employees
SET ave_customer_rating = 5.0
WHERE employee_id = 7;

UPDATE employees
SET ave_customer_rating = 5.0
WHERE employee_id = 8;

UPDATE employees 
SET ave_customer_rating = 
CASE WHEN  employee_id = 1 THEN 4.8
ELSE 0.0 END ;  

SELECT * FROM employees;

-- Walk Through: DELETING AND TRUNCATING RECORDS 
USE thriftshop;
SELECT * FROM inventory;
DELETE FROM inventory 
WHERE inventory_id = 7;  -- deleting row 7;

SELECT * FROM customers; 
TRUNCATE TABLE customers; -- removing all records from a table;preserve the table structure. 


-- PRACTICE 4: DELETING RECORDS AND TRUNCATING RECORDS
USE candystore; 
SELECT * FROM employees; 

DELETE FROM employees 
WHERE employee_id=4; -- deleting row 4 

SELECT * FROM customer_reviews; 
TRUNCATE TABLE customer_reviews;-- changes are finalized 




