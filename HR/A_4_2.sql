
SELECT job_id, avg(salary) 'Avg Salary'
FROM Employees
WHERE job_id!='CLERK'
GROUP BY job_id
HAVING avg(salary)>10000
ORDER BY avg(salary) DESC;