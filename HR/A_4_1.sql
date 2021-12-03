
SELECT department_id, concat('$', FORMAT(sum(salary), 0)) 'Sum Salary', concat('$', FORMAT(avg(salary), 1)) 'Avg Salary', concat('$', FORMAT(max(salary), 0)) 'Max Salary', concat('$', FORMAT(min(salary), 0)) 'Min Salary'
FROM Employees
WHERE department_id is not null
GROUP BY department_id
ORDER BY department_id;