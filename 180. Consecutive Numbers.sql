WITH consecutive_nums AS (
    SELECT
        num,
        LEAD(num, 1) OVER (ORDER BY id) AS next_1st_num,
        LEAD(num, 2) OVER (ORDER BY id) AS next_2nd_num
    FROM Logs
) -- The CTE extracts the first and second consecutive numbers

SELECT DISTINCT num AS ConsecutiveNums
FROM consecutive_nums
WHERE num = next_1st_num AND num = next_2nd_num;