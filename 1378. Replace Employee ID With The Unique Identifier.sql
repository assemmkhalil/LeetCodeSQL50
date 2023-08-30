SELECT name, unique_id
FROM Employees e
LEFT OUTER JOIN EmployeeUNI eu
ON e.id = eu.id;
/* The left join returns null if the employee doesn't have
a unique ID, eliminating the need for setting a condition */