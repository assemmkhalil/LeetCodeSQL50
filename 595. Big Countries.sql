ELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;
-- A country is big if it matches either or both of the area or population criteria