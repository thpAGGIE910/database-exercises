USE employees;

SELECT
  emp.first_name,
  emp.last_name
FROM employees emp
WHERE emp.hire_date IN (
  SELECT e.hire_date
  FROM employees e
  WHERE e.emp_no = 101010
);

SELECT t.title
FROM titles t
WHERE t.emp_no IN (
  SELECT e.emp_no
  FROM employees e
  WHERE e.first_name LIKE 'aamod')
ORDER BY t.title;

SELECT
  e.first_name,
  e.last_name
FROM employees e
WHERE e.emp_no IN
      (SELECT dm.emp_no
       FROM dept_manager AS dm
       WHERE dm.to_date >= CURDATE()) AND e.gender = 'F';

SELECT d.dept_name
FROM departments d
WHERE d.dept_no IN (
  SELECT dm.dept_no
  FROM dept_manager dm
  WHERE dm.emp_no IN (
    SELECT e.emp_no
    FROM employees e
    WHERE e.gender = 'F') AND dm.to_date >= CURDATE());