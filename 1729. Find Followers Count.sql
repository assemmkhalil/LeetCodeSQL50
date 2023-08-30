SELECT user_id,
    COUNT(follower_id) AS followers_count  -- No. of followers
FROM Followers
GROUP BY user_id  -- For each user
ORDER BY user_id;