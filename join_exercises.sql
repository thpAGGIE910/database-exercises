USE employees;

SELECT
  d.dept_name                            AS 'Department Name',
  CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
  JOIN dept_manager dm ON d.dept_no = dm.dept_no
  JOIN employees e ON dm.emp_no = e.emp_no
WHERE dm.to_date LIKE '9%'
ORDER BY d.dept_name ASC;

SELECT
  d.dept_name                            AS 'Department Name',
  CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
  JOIN dept_manager dm ON d.dept_no = dm.dept_no
  JOIN employees e ON dm.emp_no = e.emp_no
WHERE dm.to_date LIKE '9%' AND e.gender LIKE 'f'
ORDER BY d.dept_name ASC;

SELECT
  t.title        AS Title,
  COUNT(t.title) AS Count
FROM titles t
  JOIN employees e ON t.emp_no = e.emp_no
  JOIN dept_emp de ON e.emp_no = de.emp_no
  JOIN departments d ON de.dept_no = d.dept_no
WHERE t.to_date LIKE '9%' AND de.to_date LIKE '9%' AND d.dept_name LIKE 'customer service'
GROUP BY Title
ORDER BY Title ASC;

SELECT
  d.dept_name                            AS 'Department Name',
  CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
  s.salary                               AS Salary
FROM departments AS d
  JOIN dept_manager dm ON d.dept_no = dm.dept_no
  JOIN employees e ON dm.emp_no = e.emp_no
  JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date LIKE '9%' AND s.to_date LIKE '9%'
ORDER BY d.dept_name ASC;

SELECT
  CONCAT(e1.first_name, ' ', e1.last_name) AS 'Employee Name',
  d.dept_name                              AS 'Department Name',
  CONCAT(e2.first_name, ' ', e2.last_name) AS 'Manager Name'
FROM employees e1
  JOIN dept_emp de ON e1.emp_no = de.emp_no
  JOIN departments d ON de.dept_no = d.dept_no
  JOIN dept_manager dm ON d.dept_no = dm.dept_no
  JOIN employees e2 ON dm.emp_no = e2.emp_no
WHERE de.to_date >= curdate() AND dm.to_date >= curdate();
# WHERE de.to_date > curdate()
#       and e2.emp_no IN (
#           SELECT dm.emp_no FROM dept_manager WHERE dm.to_date > curdate()
#       ) ORDER BY d.dept_name, e1.first_name;