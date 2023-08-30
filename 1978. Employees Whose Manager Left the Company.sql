SELECT employee_id
FROM Employees
WHERE salary < 30000  -- The salary is strictly less than 30000
    AND manager_id NOT IN (  -- And the manager left the company
        SELECT employee_id
        FROM Employees
)
ORDER BY employee_id;