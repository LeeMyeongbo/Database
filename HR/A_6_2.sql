
SELECT concat(first_name, ' ', last_name) 'Name', salary, e.department_id, job_id
FROM Employees e, (SELECT department_id, avg(salary) s FROM Employees GROUP BY department_id) t
WHERE e.department_id=t.department_id AND e.salary>t.s;