SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (
    SELECT COUNT(product_key)
    FROM Product
);
/* To ensure the customer have bought all the products,
the number of unique products they bought must be equal
to the total number of products in the Product table */