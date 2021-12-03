
SELECT e.employee_id, e.job_id
FROM Employees e, Job_history j
WHERE e.employee_id=j.employee_id AND e.job_id=j.job_id