SELECT p.project_id,
    ROUND(AVG(e.experience_years), 2) AS average_years
FROM Project p
LEFT OUTER JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id;
/* The left join ensures all projects will show up in the query
even if there were no employees working on them */