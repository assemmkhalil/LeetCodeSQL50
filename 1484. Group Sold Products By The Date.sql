SELECT sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') as products
    -- Combine all unique products, sorted lexicographically, separated by ','
FROM Activities
GROUP BY sell_date;
