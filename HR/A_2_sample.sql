SELECT concat(first_name, ' ', last_name) 'Name', salary
FROM Employees
WHERE salary<7000 OR salary>10000
ORDER BY salary;