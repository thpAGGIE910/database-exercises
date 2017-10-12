# WHERE EXERCISE
# Write individual queries to find the following things:
#
# Employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
# Employees whose last name starts with 'E' — 7,330 rows.
# Employees hired in the 90s — 135,214 rows.
# Employees born on Christmas — 842 rows.
# Employees with a 'q' in their last name — 1,873 rows.

use employees;

SELECT 'Find employees with first names "Irena", "Vidya", or "Maya"' AS '';
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT 'Find employees with last names that start with ''E''' AS '';
SELECT *
FROM employees
WHERE last_name LIKE 'E%';

SELECT 'Find employees hired in the 90''s' AS '';
SELECT *
FROM employees
WHERE hire_date LIKE '199%';

SELECT 'Find employees born on Christmas' AS '';
SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT 'Find employees with a ''q'' in their last name' AS '';
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

# WHERE CONTINUED EXERCISE
# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
# Now add a condition to find everybody with those names who is also male — 441 rows.
# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
# Find all employees hired in the 90s and born on Christmas — 362 rows.
# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.

SELECT 'Find employees with first names "Irena", "Vidya", or "Maya"' AS '';
SELECT *
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT 'Find MALE employees with first names "Irena", "Vidya", or "Maya"' AS '';
SELECT *
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';

SELECT 'Find employees with last names that start or end with an ''E''' AS '';
SELECT *
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%e';

SELECT 'Find employees with last names that start AND end with an ''E''' AS '';
SELECT *
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%e';

SELECT 'Find employees hired in the ''90s and born on Christmas' AS '';
SELECT *
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25';

SELECT 'Find employees with last names with ''q'', but NOT ''qu''' AS '';
SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
