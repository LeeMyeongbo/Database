
SELECT employee_id, concat(last_name, ' ', first_name) 'Name', salary, round(salary*1.123, 0) 'Increased Salary'
FROM Employees
WHERE department_id=60;