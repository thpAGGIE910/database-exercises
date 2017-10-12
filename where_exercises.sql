# WHERE EXERCISE
# Write individual queries to find the following things:
#
# Employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
# Employees whose last name starts with 'E' — 7,330 rows.
# Employees hired in the 90s — 135,214 rows.
# Employees born on Christmas — 842 rows.
# Employees with a 'q' in their last name — 1,873 rows.

use employees;

SELECT 'Find employess with first names "Irena", "Vidya", or "Maya"' AS '';
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT 'Find employees with last names that start with E' AS '';
SELECT *
FROM employees
WHERE last_name LIKE 'E%';

SELECT 'Find employees hired in the 90''s' AS '';
SELECT *
FROM employees
WHERE hire_date LIKE '199%-%-%';

SELECT 'Find employees born on Christmas' AS '';
SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT 'Find employees with a ''q'' in their last name' AS '';
SELECT *
FROM employees
WHERE last_name LIKE '%q%';
