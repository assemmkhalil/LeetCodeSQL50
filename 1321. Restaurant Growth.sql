WITH daily_spending AS (
    SELECT visited_on,
        SUM(amount) AS total_amount
    FROM Customer
    GROUP BY visited_on
), -- The 1st CTE sums the total amount spent by all customers each day

moving_avg AS (
    SELECT d1.visited_on,
        SUM(d2.total_amount) AS amount,
        ROUND(SUM(d2.total_amount) / 7, 2) AS average_amount
    FROM daily_spending d1
    INNER JOIN daily_spending d2
    ON DATEDIFF(d1.visited_on, d2.visited_on) BETWEEN 0 AND 6
    GROUP BY d1.visited_on
)
/* The 2nd CTE summs the total daily spending and calculates the average spending
in the records within the 7-day window (where the difference is between 0 and 6) */

SELECT *
FROM moving_avg
WHERE visited_on >= (
    SELECT MIN(visited_on)
    FROM daily_spending) + 6  
ORDER BY visited_on;
/* SELECT the total amount spent and the moving avg from the second
CTE, starting from the seventh day (first date + 6) to ensure that
there are enough preceding days for a full seven-day window */