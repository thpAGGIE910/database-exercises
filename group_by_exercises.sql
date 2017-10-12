# In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
#
# Senior Engineer
# Staff
# Engineer
# Senior Staff
# Assistant Engineer
# Technique Leader
# Manager
#
# Update the previous query to sort the results alphabetically. Use GROUP BY to accomplish this.
#
# Find your query for employees whose last names start and end with 'E'. Update the query find just the unique last names that start and end with 'E' using GROUP BY. The results should be:
#
# Eldridge
# Erbe
# Erde
# Erie
# Etalle
#
# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
#
# Find the unique last names with a 'q' but not 'qu'. You may use either DISTINCT or GROUP BY. Your results should be:
#
# Chleq
# Lindqvist
# Qiwen

USE employees;

SELECT DISTINCT title
FROM titles;

SELECT title
FROM titles
GROUP BY title;

SELECT last_name
FROM employees
WHERE last_name LIKE "e%e"
GROUP BY last_name;

SELECT
  first_name,
  last_name
FROM employees
WHERE last_name LIKE "e%e"
GROUP BY last_name, first_name;

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';
