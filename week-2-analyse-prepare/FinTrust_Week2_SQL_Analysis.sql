CREATE DATABASE fintrust_;
USE fintrust_;

-- checks the data type
DESCRIBE fintrust_customer;

-- checks whether a column has a duplicate
SELECT ï»¿Customer_ID, COUNT(*)
FROM fintrust_customer
GROUP BY ï»¿Customer_ID
HAVING COUNT(*) > 1;

-- check it has a null values
SELECT *
FROM fintrust_customer
WHERE ï»¿Customer_ID IS NULL OR ï»¿Customer_ID = '';

-- changing the datatype  from text format to varchar
ALTER TABLE fintrust_customer
MODIFY ï»¿Customer_ID VARCHAR(20) NOT NULL;

-- add primary key to the customer_id column
ALTER TABLE fintrust_customer
ADD PRIMARY KEY (ï»¿Customer_ID);

DESCRIBE fintrust_customer;

-- change column name 
ALTER TABLE fintrust_customer
CHANGE COLUMN `ï»¿Customer_ID` 
Customer_ID VARCHAR(20);

-- renaming a tablename
ALTER TABLE fintrust_transaction_clean_data
RENAME TO fintrust_transaction;

-- changing the column name
ALTER TABLE fintrust_transaction
CHANGE COLUMN `ï»¿Transaction_ID`
Transaction_ID VARCHAR(25) NOT NULL;

-- adding primary key to the transaction table
ALTER TABLE fintrust_transaction
ADD PRIMARY KEY (Transaction_ID);

-- modifying the data type
ALTER TABLE fintrust_transaction
MODIFY Customer_ID VARCHAR(20) NOT NULL;

ALTER TABLE fintrust_transaction
ADD COLUMN Transaction_Time_New TIME;

SET SQL_SAFE_UPDATES = 0;
UPDATE fintrust_transaction
SET Transaction_Time_New =
    STR_TO_DATE(Transacttion_Time, '%h:%i %p');
    
    -- drop unwanted column
alter table fintrust_transaction
drop column   Transacttion_Time;  
alter table fintrust_transaction
drop column MyUnknownColumn ; 

-- total customers
SELECT COUNT(*) AS Total_Customers
FROM fintrust_customer;
-- total transactions
SELECT COUNT(*) AS Total_Transactions
FROM fintrust_transaction;

ALTER TABLE fintrust_customer
CHANGE COLUMN `ï»¿Customer_ID`
Customer_ID VARCHAR(20) NOT NULL;

-- CUSTOMER BEHAVIOUR
-- Customer segment performance and engagement
-- Assesses how actively different customer segments use the bank’s services and where engagement is concentrated
SELECT
    c.Customer_Segment,
    COUNT(t.Transaction_ID) AS Total_Transactions
FROM fintrust_customer c
JOIN fintrust_transaction t
    ON c.Customer_ID = t.Customer_ID
GROUP BY c.Customer_Segment
ORDER BY Total_Transactions DESC;


-- Customer base composition
-- Shows how the customer base is distributed across key customer segments
SELECT
    Customer_Segment,
    COUNT(*) AS Total_Customers,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM fintrust_customer),
        2
    ) AS Percentage_of_Customers
FROM fintrust_customer
GROUP BY Customer_Segment
ORDER BY Total_Customers DESC;

-- ACCOUNT ANALYSIS
-- Identifies the distribution of customers across account types, highlighting the most widely adopted account products and supporting customer and product management decisions.
SELECT
    Account_Type,
    COUNT(*) AS Total_Customers,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM fintrust_customer),
        2
    ) AS Percentage_of_Customers
FROM fintrust_customer
GROUP BY Account_Type
ORDER BY Total_Customers DESC;

-- TREND ANALYSIS OVER TIME
-- How do transaction volumes and values change over time?
SELECT
    Transaction_Date,
    COUNT(Transaction_ID) AS Transaction_Volume,
    ROUND(SUM(Amount_NGN), 2) AS Transaction_Value
FROM fintrust_transaction
GROUP BY Transaction_Date
ORDER BY Transaction_Date;

-- MONETARY SCALE
-- Which customers contribute to the highest transaction value?
SELECT
    c.Customer_ID,
    c.Customer_Name,
    c.Customer_Segment,
    COUNT(t.Transaction_ID) AS Total_Transactions,
    ROUND(SUM(t.Amount_NGN), 2) AS Total_Transaction_Value,
    ROUND(AVG(t.Amount_NGN), 2) AS Average_Transaction_Value
FROM fintrust_customer c
JOIN fintrust_transaction t
    ON c.Customer_ID = t.Customer_ID
GROUP BY
    c.Customer_ID,
    c.Customer_Name,
    c.Customer_Segment
ORDER BY Total_Transaction_Value DESC
LIMIT 10;

-- CHANNEL PERFORMANCE
-- Which transaction channels experience higher failure rates?
SELECT
    Channel,
    COUNT(*) AS Total_Transactions,
    SUM(
        CASE
            WHEN Transaction_Status = 'Failed' THEN 1
            ELSE 0
        END
    ) AS Failed_Transactions,
    ROUND(
        SUM(
            CASE
                WHEN Transaction_Status = 'Failed' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Failure_Rate
FROM fintrust_transaction
GROUP BY Channel
ORDER BY Failure_Rate DESC;

-- RISK REVIEW PATTERNS
-- Which transaction channels show patterns associated with transactions flagged for risk review?
SELECT
    Channel,
    COUNT(*) AS Total_Transactions,
    SUM(
        CASE
            WHEN Risk_Review_Flag = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Risk_Review_Transactions,
    ROUND(
        SUM(
            CASE
                WHEN Risk_Review_Flag = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Risk_Review_Rate
FROM fintrust_transaction
GROUP BY Channel
ORDER BY Risk_Review_Rate DESC;
