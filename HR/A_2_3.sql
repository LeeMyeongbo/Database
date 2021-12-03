
SELECT concat(first_name, ' ', last_name) 'Name', salary, job_id, commission_pct
FROM Employees
WHERE commission_pct is not null
ORDER BY salary DESC, commission_pct DESC;