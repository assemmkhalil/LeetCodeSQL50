WITH single_nums AS (
  SELECT num
  FROM MyNumbers
  GROUP BY num
  HAVING COUNT(num) = 1
) -- The CTE returns all single numbers

SELECT (CASE WHEN num IS NOT NULL
        THEN MAX(num) ELSE NULL END) AS num
FROM single_nums;
-- Select the largest single number, or NULL if there is no single numbers