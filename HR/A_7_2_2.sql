
SELECT employee_id, job_id, start_date, end_date
FROM Job_history
WHERE employee_id=(SELECT e.employee_id FROM Employees e, Job_history j WHERE e.employee_id=j.employee_id AND e.job_id=j.job_id LIMIT 1)