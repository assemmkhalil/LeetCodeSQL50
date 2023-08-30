SELECT contest_id,
    ROUND(  -- Divide the no. of registered users by the total no. of users
        (COUNT(DISTINCT user_id) / (SELECT COUNT(*) FROM Users)) * 100,
        2) AS percentage
FROM Register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id;