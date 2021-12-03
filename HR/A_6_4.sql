
SELECT concat(first_name, ' ', last_name) 'Name', job_id, salary, e.department_id, round(t.s, 0) 'Department Avg Salary'
FROM Employees e LEFT JOIN (SELECT department_id, avg(salary) s FROM Employees GROUP BY department_id) t ON e.department_id=t.department_id;