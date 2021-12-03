SELECT concat(first_name, ' ', last_name) 'Name', job_id 'Job', salary 'Salary', salary*12+100 'Increased Ann_Salary', (salary+100)*12 'Increased Salary'
FROM Employees;
