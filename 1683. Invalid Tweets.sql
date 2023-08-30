SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) > 15;
-- Using CHAR_LENGTH() to measure length in characters not bytes