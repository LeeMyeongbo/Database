
SELECT sysdate();
SELECT concat(first_name, ' ', last_name) 'Name', employee_id, hire_date
FROM Employees
WHERE hire_date>='1995-05-20' AND hire_date<='1996-05-20'
ORDER BY hire_date;