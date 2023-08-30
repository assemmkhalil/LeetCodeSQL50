(SELECT u.name AS results
FROM Users u
INNER JOIN MovieRating mr
ON u.user_id = mr.user_id
GROUP BY u.user_id
ORDER BY COUNT(*) DESC, u.name
LIMIT 1) -- Select the user with the highest no. of movie ratings

UNION ALL

(SELECT m.title AS results
FROM Movies m
INNER JOIN MovieRating mr
ON m.movie_id = mr.movie_id
WHERE YEAR(mr.created_at) = 2020 AND MONTH(mr.created_at) = 2
GROUP BY mr.movie_id
ORDER BY AVG(mr.rating) DESC, m.title
LIMIT 1); -- Select the movie with the highest avg rating in Feb 2020
