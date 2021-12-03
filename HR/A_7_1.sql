
SELECT employee_id, job_id, department_id
FROM Employees
UNION ALL
SELECT employee_id, job_id, department_id
FROM Job_history
ORDER BY employee_id;