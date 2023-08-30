SELECT DISTINCT e1.name
FROM Employee e1
INNER JOIN Employee e2
ON e1.id = e2.managerId
GROUP BY e1.id, e1.name
HAVING COUNT(e2.id) >= 5;
/* Self joining the Employee table so that
e1 represent managers and e2 represent subordinates */ 