SELECT s.user_id, 
    ROUND(AVG(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END), 2) AS confirmation_rate
-- Rate = no. of 'confirmed' (1s) / total no. of requests (1s and 0s)
FROM Signups s
LEFT OUTER JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id;