use fintrust_;

-- FINTRUST DIGITAL BANK
-- WEEK 4 – PART B: FINAL SQL ANALYSIS


-- QUERY 1: MONTHLY TRANSACTION PERFORMANCE
-- Business Question:
-- How did transaction volume and value change month-over-month?


WITH monthly_activity AS (
    SELECT
        DATE_FORMAT(Transaction_Date, '%Y-%m') AS Month,
        COUNT(*) AS Total_Transactions,
        ROUND(SUM(Amount_NGN), 2) AS Total_Transaction_Value
    FROM fintrust_transaction
    GROUP BY DATE_FORMAT(Transaction_Date, '%Y-%m')
),
monthly_comparison AS (
    SELECT
        Month,
        Total_Transactions,
        Total_Transaction_Value,
        LAG(Total_Transactions) OVER (ORDER BY Month)
            AS Previous_Month_Transactions,
        LAG(Total_Transaction_Value) OVER (ORDER BY Month)
            AS Previous_Month_Value
    FROM monthly_activity
)
SELECT
    Month,
    Total_Transactions,
    Previous_Month_Transactions,
    ROUND(
        (Total_Transactions - Previous_Month_Transactions)
        * 100.0 / Previous_Month_Transactions,
        2
    ) AS Transaction_Volume_MoM_Percent,
    Total_Transaction_Value,
    Previous_Month_Value,
    ROUND(
        (Total_Transaction_Value - Previous_Month_Value)
        * 100.0 / Previous_Month_Value,
        2
    ) AS Transaction_Value_MoM_Percent
FROM monthly_comparison
ORDER BY Month;

-- QUERY 2: CUSTOMER SEGMENT PERFORMANCE
-- Business Question:
-- Which customer segments generate the greatest value and
-- transaction activity after accounting for segment size?


WITH segment_activity AS (
    SELECT
        c.Customer_Segment,
        COUNT(DISTINCT c.Customer_ID) AS Total_Customers,
        COUNT(t.Transaction_ID) AS Total_Transactions,
        ROUND(SUM(t.Amount_NGN), 2) AS Total_Transaction_Value
    FROM fintrust_customer c
    JOIN fintrust_transaction t
        ON c.Customer_ID = t.Customer_ID
    GROUP BY c.Customer_Segment
)
SELECT
    Customer_Segment,
    Total_Customers,
    Total_Transactions,
    Total_Transaction_Value,
    ROUND(
        Total_Transactions * 1.0 / Total_Customers,
        2
    ) AS Transactions_Per_Customer,
    ROUND(
        Total_Transaction_Value / Total_Customers,
        2
    ) AS Transaction_Value_Per_Customer
FROM segment_activity
ORDER BY Transaction_Value_Per_Customer DESC;


-- QUERY 3: TRANSACTION FAILURE HOTSPOTS
-- Business Question:
-- Which channel and transaction-type combinations have
-- the highest transaction failure rates?


SELECT
    Channel,
    Transaction_Type,
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
    ) AS Failure_Rate_Percent
FROM fintrust_transaction
GROUP BY
    Channel,
    Transaction_Type
HAVING COUNT(*) >= 20
ORDER BY Failure_Rate_Percent DESC;



-- QUERY 4: RISK REVIEW BY TRANSACTION VALUE
-- Business Question:
-- Does risk-review activity increase as transaction value rises?


WITH amount_bands AS (
    SELECT
        Transaction_ID,
        Amount_NGN,
        Risk_Review_Flag,
        CASE
            WHEN Amount_NGN < 10000 THEN 'Below 10K'
            WHEN Amount_NGN < 50000 THEN '10K - 49,999'
            WHEN Amount_NGN < 100000 THEN '50K - 99,999'
            WHEN Amount_NGN < 200000 THEN '100K - 199,999'
            ELSE '200K and Above'
        END AS Amount_Band
    FROM fintrust_transaction
)
SELECT
    Amount_Band,
    COUNT(*) AS Total_Transactions,
    ROUND(AVG(Amount_NGN), 2) AS Average_Transaction_Value,
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
    ) AS Risk_Review_Rate_Percent
FROM amount_bands
GROUP BY Amount_Band
ORDER BY
    CASE Amount_Band
        WHEN 'Below 10K' THEN 1
        WHEN '10K - 49,999' THEN 2
        WHEN '50K - 99,999' THEN 3
        WHEN '100K - 199,999' THEN 4
        WHEN '200K and Above' THEN 5
    END;


             