
SELECT concat(e1.first_name, ' ', e1.last_name, ' report to ', ifnull(concat(upper(e2.first_name), ' ', upper(e2.last_name)), ' ')) 'Employee vs Manager'
FROM Employees e1 LEFT OUTER JOIN Employees e2 ON e1.manager_id=e2.employee_id;