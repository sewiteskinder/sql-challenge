SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        e.sex,
        s.salary
FROM employees as e
LEFT JOIN salaries as s
ON (e.emp_no = s.emp_no)
ORDER BY e.emp_no ;

SELECT  e.first_name,
		e.last_name,
		e.hire_date
FROM employees as e
WHERE e.hire_date BETWEEN '1/1/1986' AND '12/31/1986' ;

SELECT  dm.dept_no,
		d.dept_name,
		e.emp_no,
		e.last_name,
		e.first_name
FROM dept_manager as dm , employees as e , departments as d
WHERE dm.emp_no = e.emp_no AND dm.dept_no = d.dept_no ;

SELECT  de.dept_no,
		e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM dept_emp as de , employees as e , departments as d
WHERE de.dept_no = d.dept_no AND de.emp_no = e.emp_no ;

SELECT  e.first_name,
		e.last_name,
		e.sex
FROM employees as e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%' ;

SELECT  de.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM dept_emp as de , employees as e , departments as d
WHERE de.emp_no = e.emp_no AND de.dept_no = d.dept_no AND d.dept_name = 'Sales' ;

SELECT  de.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM employees as e
LEFT JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
LEFT JOIN departments as d
ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development' ;

SELECT e.last_name, COUNT(e.last_name)
FROM employees as e 
GROUP BY e.last_name
ORDER BY COUNT(e.last_name) DESC ;

