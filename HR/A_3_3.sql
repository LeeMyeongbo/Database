
SELECT concat(first_name, ' ', last_name) 'Name', hire_date, DATE_FORMAT(hire_date, '%W') 'Day of the week'
FROM Employees
ORDER BY DATE_FORMAT(hire_date, '%w');