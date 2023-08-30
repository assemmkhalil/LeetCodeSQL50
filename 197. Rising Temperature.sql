SELECT w1.id AS Id
FROM Weather w1
INNER JOIN Weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
AND w1.temperature > w2.temperature;
/* The weather table is self joined so that the date in each
row in w1 is greater than that of w2 by 1, and the temperature
today (w1) is greater than the temperature yesterday (w2) */