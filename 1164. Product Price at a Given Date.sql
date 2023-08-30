WITH Prices AS (
    SELECT *,
        RANK() OVER (PARTITION BY product_id ORDER BY change_date DESC) AS change_rank
    FROM Products
    WHERE change_date <= '2019-08-16'
)
-- The CTE ranks products based on change_date only up to the given date

SELECT p.product_id,
    COALESCE(pr.new_price, 10) AS price
FROM Products p
LEFT OUTER JOIN Prices pr
ON p.product_id = pr.product_id AND pr.change_rank = 1
GROUP BY p.product_id;
/* After the left join if a product have a null new_price value then its price
didn't change up to the given date, thus it's given the default price (10) */