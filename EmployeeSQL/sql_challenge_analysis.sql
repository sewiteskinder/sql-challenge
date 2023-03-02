-- list the employee number, last name, first name, sex, and salary of each employee using a JOIN
SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        e.sex,
        s.salary
FROM employees as e
LEFT JOIN salaries as s
ON (e.emp_no = s.emp_no)
ORDER BY e.emp_no ;

-- list the first name, last name, and hire date for employees that were hired in 1986
SELECT  e.first_name,
		e.last_name,
		e.hire_date
FROM employees as e
WHERE e.hire_date BETWEEN '1/1/1986' AND '12/31/1986' ;

-- list the manager for each department along with their department number, department name, employee number, first name, and last name
SELECT  dm.dept_no,
		d.dept_name,
		e.emp_no,
		e.last_name,
		e.first_name
FROM dept_manager as dm , employees as e , departments as d
WHERE dm.emp_no = e.emp_no AND dm.dept_no = d.dept_no ;

-- list the department number for each employee along with their employee number, last name, first name, and department name
SELECT  de.dept_no,
		e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM dept_emp as de , employees as e , departments as d
WHERE de.dept_no = d.dept_no AND de.emp_no = e.emp_no ;

-- list the first name, last name, and sex of each employee with the first name 'Hercules' and last name beginning with the letter 'B' 
-- note: you will have to use a Wildcard
SELECT  e.first_name,
		e.last_name,
		e.sex
FROM employees as e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%' ;

-- list each employee from the 'Sales' department along with their employee number, last name, and first name
SELECT  de.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM dept_emp as de , employees as e , departments as d
WHERE de.emp_no = e.emp_no AND de.dept_no = d.dept_no AND d.dept_name = 'Sales' ;

-- list each employee from the 'Sales' and 'Development' departments (aggregate list of both) including their employee number, last name, and first name
-- note: use JOINs to be able to access all the necessary information 
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

-- list all of the employees last names with frequency counts running in descending order (how many employees share each last name)
SELECT e.last_name, COUNT(e.last_name)
FROM employees as e 
GROUP BY e.last_name
ORDER BY COUNT(e.last_name) DESC ;

