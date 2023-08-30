SELECT x, y, z,
(IF(x + y > z AND y + z > x AND x + z > y, 'Yes', 'No')) AS triangle
FROM Triangle;
/* Based on the triangle inequality theorem, the sum of any
two sides of a triangle is greater than the third side */