WITH Cumulative AS (
    SELECT person_name, 
        SUM(weight) OVER (ORDER BY turn) AS total_weight
    FROM Queue
) -- The CTE calculates the cumulative weight of passengers sorted by turns

SELECT person_name
FROM Cumulative
WHERE total_weight <= 1000
ORDER BY total_weight DESC
LIMIT 1;
/* Listing passengers whose weight is within the limit,
by their cumulative weight and selecting the first one */