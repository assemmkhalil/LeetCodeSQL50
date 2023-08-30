WITH friends_count AS (
    SELECT id,
        COUNT(*) AS num
    FROM (  -- Capturing all friendship relationships
        SELECT requester_id AS id,
            accepter_id AS friend_id
        FROM RequestAccepted
        UNION ALL
        SELECT accepter_id AS id,
            requester_id AS friend_id
        FROM RequestAccepted) AS all_friends
    GROUP BY id
)

SELECT id, num
FROM friends_count
WHERE num = (SELECT MAX(num)
            FROM friends_count);
-- Selecting all people with the same most number of friends