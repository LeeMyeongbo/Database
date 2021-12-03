
SELECT concat(first_name, ' ', last_name) 'Name', job_id, salary
FROM Employees
WHERE salary > (SELECT salary FROM Employees WHERE last_name='Tucker');