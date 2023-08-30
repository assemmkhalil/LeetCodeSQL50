SELECT name, bonus
FROM Employee
LEFT OUTER JOIN Bonus
ON Employee.empId = Bonus.EmpId
WHERE bonus < 1000 OR bonus IS NULL;
/* An employee is selected if they receive a bonus
less than 1000 or don't receive a bonus at all */