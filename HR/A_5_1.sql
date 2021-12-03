
SELECT department_name, count(employee_id)
FROM Employees e, Departments d
WHERE e.department_id=d.department_id
GROUP BY department_name
HAVING count(employee_id)>=5
ORDER BY count(employee_id) DESC;