# Create a new file called order_by_exercises.sql and copy in the contents of your where_exercises.sql.
# Modify your first query to order by first name. The first result should be Irena Majewski and the last result should be Vidya Schaft.
# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
# Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
# Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
# Now reverse the sort order for both queries.
# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.

USE employees;

SELECT 'Find employees with first names "Irena", "Vidya", or "Maya" ordered by first name' AS '';
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
ORDER BY first_name;

SELECT 'Find employees with first names "Irena", "Vidya", or "Maya" ordered by last name and then first name' AS '';
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
ORDER BY last_name, first_name;

SELECT 'Find employees with first names "Irena", "Vidya", or "Maya" ordered by first name and then last name' AS '';
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
ORDER BY first_name, last_name;

SELECT 'Find MALE employees with first names "Irena", "Vidya", or "Maya"' AS '';
SELECT *
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';

SELECT 'Find employees with last names that start or end with an ''E''' AS '';
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT 'Find employees with last names that start AND end with an ''E''' AS '';
SELECT *
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT 'Find employees hired in the ''90s and born on Christmas ordered by the oldest employee who was hired last' AS '';
SELECT emp_no, first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;

SELECT 'Find employees with last names with ''q'', but NOT ''qu''' AS '';
SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
