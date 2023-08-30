SELECT activity_date AS day,
    COUNT(DISTINCT user_id) AS active_users 
FROM Activity
WHERE ((activity_date >= '2019-06-28') AND (activity_date <= '2019-07-27'))
-- 30 days ending 2019-07-27 
GROUP BY day;