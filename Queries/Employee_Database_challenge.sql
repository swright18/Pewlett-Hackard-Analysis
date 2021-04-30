SELECT titles.emp_no,
	   first_name,
	   last_name,
	   title,
	   from_date,
	   to_date
INTO emp_retirement_titles
FROM titles
INNER JOIN employees
ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no
;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title,
INTO unique_title
FROM emp_retirement_titles
ORDER BY emp_no, to_date DESC;


SELECT COUNT(title), title 
INTO retiring_titles
FROM unique_title
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT DISTINCT ON (employees.emp_no) employees.emp_no,
	   first_name,
	   last_name,
	   birth_date,
	   dept_employee.from_date,
	   dept_employee.to_date,
	   title
INTO mentorship_eligibility
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
INNER JOIN dept_employee
ON employees.emp_no = dept_employee.emp_no
WHERE (dept_employee.to_date = '9999-01-01')
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no

SELECT * FROM mentorship_eligibility
