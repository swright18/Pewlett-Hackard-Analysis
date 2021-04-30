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

DROP TABLE retiring_titles
SELECT DISTINCT ON (unique_title.title) COUNT(1)
	title
INTO retiring_titles
FROM unique_title
GROUP BY title 
ORDER BY COUNT



SELECT * FROM retiring_titles



