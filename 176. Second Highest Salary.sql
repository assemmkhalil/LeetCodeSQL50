SELECT (
    SELECT DISTINCT Salary
    FROM Employee
    ORDER BY Salary DESC
    LIMIT 1
    OFFSET 1
) AS SecondHighestSalary;
-- Select the salary that is the second highest distinct one, else return null