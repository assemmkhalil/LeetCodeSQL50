SELECT p.product_id,
    ROUND(SUM(p.price * u.units) / SUM(u.units), 2) AS average_price
FROM Prices p
INNER JOIN UnitsSold u
ON p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
/* Joining the two tables so that the units sold can be
multiplied by the corresponding price for that period of time */