
SELECT concat(upper(left(first_name, 1)), lower(substr(first_name, 2)), ' ', upper(left(last_name, 1)), lower(substr(last_name, 2)), ' is a ', upper(job_id)) 'Employee JOBs'
FROM Employees
WHERE last_name LIKE '%s';