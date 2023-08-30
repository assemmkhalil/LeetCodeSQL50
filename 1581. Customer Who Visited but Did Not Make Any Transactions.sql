SELECT c.customer_id,
  COUNT(v.visit_id) AS count_no_trans
FROM Visits v
LEFT OUTER JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE transaction_id IS NULL
GROUP BY c.customer_id;
/* After the left join a customer with null transaction id
indicates that they visited without making any transaction */