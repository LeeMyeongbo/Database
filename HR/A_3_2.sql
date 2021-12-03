
SELECT concat(first_name, ' ', last_name) 'Name', salary, salary*12 "Annual Salary", if(commission_pct is null, 'Salary only', 'Salary + Commission') 'Commission ?'
FROM Employees
ORDER BY salary DESC;