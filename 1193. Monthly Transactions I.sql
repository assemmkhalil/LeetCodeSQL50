SELECT CONCAT(YEAR(trans_date),
    '-',
    LPAD(MONTH(trans_date), 2, '0')) AS month,  -- To ensure it consists of 2 digits
    country,
    COUNT(id) AS trans_count,
    SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY month, country;
