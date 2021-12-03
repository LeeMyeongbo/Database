
SELECT employee_id, concat(first_name, ' ', last_name) 'Name', job_id, hire_date
FROM Employees
WHERE department_id=(SELECT department_id FROM Departments WHERE location_id=(SELECT location_id FROM Locations WHERE city LIKE 'O%'));