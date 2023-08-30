SELECT d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
FROM Employee e
INNER JOIN Department d
ON e.departmentId = d.id
WHERE (SELECT COUNT(DISTINCT salary)
    FROM Employee e2
    WHERE e2.salary > e.salary
    AND e2.departmentId = e.departmentId) < 3;
/* Select where the number of employees within the same department
who have a higher salary than the current employee, is less than 3
(which means they are from the top 3 earners) */
