SELECT DISTINCT employee_id, department_id
FROM Employee
WHERE employee_id IN (
    SELECT employee_id
    FROM Employee
    GROUP BY employee_id
    HAVING COUNT(*) = 1
)  -- Select the department of employees who belong to one department
OR primary_flag = 'Y'  -- As for multi-department employees, select the primary dept
ORDER BY employee_id;