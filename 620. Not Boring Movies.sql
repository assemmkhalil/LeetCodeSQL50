SELECT *
FROM Cinema
WHERE MOD(id, 2) != 0 AND description != 'boring'
ORDER BY rating DESC;
-- If the remainder of the id divided by 2 is 0 then the id is even