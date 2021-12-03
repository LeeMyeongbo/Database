
SELECT 'Han-bit', concat(first_name, ' ', last_name) 'Name', job_id, department_name, city
FROM Employees e, Departments d, Locations l
WHERE e.department_id=d.department_id AND d.location_id=l.location_id AND city='Oxford';