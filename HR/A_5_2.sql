
SELECT concat(first_name, ' ', last_name) 'Name', e.job_id, department_name, hire_date, salary, if(salary>=j.lowest_sal AND salary<=j.highest_sal, j.grade_level, null) 'grade_level'
FROM Employees e, Departments d, Job_grades j
WHERE e.department_id=d.department_id AND if(salary>=j.lowest_sal AND salary<=j.highest_sal, j.grade_level, null) is not null;