WITH Categories AS (
    SELECT 'Low Salary' AS category
    UNION
    SELECT 'Average Salary' AS category
    UNION
    SELECT 'High Salary' AS category
), -- The Categories CTE lists the three categories

Counts AS (
    SELECT 
        (CASE WHEN income < 20000 THEN 'Low Salary'
        WHEN income >= 20000 AND income <= 50000 THEN 'Average Salary'
        WHEN income > 50000 THEN 'High Salary' END) AS category,
        COUNT(account_id) AS accounts_count
    FROM Accounts
    GROUP BY category
)
/* The Counts CTE assigns the correct category for each account, 
and the total number of accounts in each category */

SELECT 
    ca.category,
    COALESCE(co.accounts_count, 0) AS accounts_count
FROM Categories ca
LEFT OUTER JOIN Counts co
ON ca.category = co.category;
/* Left joining the Categories CTE with the Counts CTE
to ensure all categories will appear in the query */