WITH consecutive_logging AS (
    SELECT player_id,
    DATEDIFF(event_date, MIN(event_date) OVER(PARTITION BY player_id)) = 1 AS cons
    FROM Activity
)
/* The CTE flags each row that represents the second
consecutive login day if the difference between the date
of that row and the day the player first logged in is 1 */

SELECT ROUND(SUM(cons) / COUNT(DISTINCT player_id), 2) AS fraction
FROM consecutive_logging;