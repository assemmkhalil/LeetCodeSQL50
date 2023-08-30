SELECT p.product_name, s.year, s.price
FROM Sales s
INNER JOIN Product p
ON s.product_id = p.product_id
GROUP BY s.sale_id;
/* The inner join returns only products that have matching data in
both tables, ensuring there will be no products without names */ 