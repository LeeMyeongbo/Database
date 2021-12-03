
SELECT concat(first_name, ' ', last_name) 'Name', e.job_id, salary, hire_date
FROM Employees e, (SELECT job_id, min(salary) s FROM Employees GROUP BY job_id) t
WHERE e.job_id=t.job_id AND e.salary=t.s;