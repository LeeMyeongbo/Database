
SELECT employee_id, job_id
FROM Employees
UNION
SELECT employee_id, job_id
FROM Job_history;