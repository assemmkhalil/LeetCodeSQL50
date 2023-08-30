SELECT
    IF(MOD(id, 2) != 0,  -- If the id is odd
        IF(id = (  -- Check if it's the last student
            SELECT MAX(id)
            FROM seat),
            id,  -- If so, return the id unchanged
        id + 1),  -- If not, return the next id
    id - 1) as id,  -- If the id is even, return the previous id
    student
FROM Seat
ORDER BY id;