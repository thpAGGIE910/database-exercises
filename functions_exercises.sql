# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:
#
# 441 M
# 268 F
#
# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
#
# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())
#
# Add a GROUP BY clause to your query for last names with 'q' and not 'qu' to find the distinct combination of first and last names. You will find there were some duplicate first and last name pairs in your previous results. Add a count() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.

USE employees;

SELECT 'Find employees with first names "Irena", "Vidya", or "Maya" ordered by first name' AS '';
SELECT count(*) AS gender_count, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;


SELECT 'Find employees with last names that start or end with an ''E''' AS '';
SELECT emp_no, concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT 'Find employees with last names that start AND end with an ''E''' AS '';
SELECT emp_no, concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%e'
ORDER BY emp_no DESC;

SELECT 'Find employees hired in the ''90s and born on Christmas ordered by the oldest employee who was hired last' AS '';
SELECT emp_no, first_name, last_name, hire_date, datediff(curdate(), hire_date) AS employment_time
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
ORDER BY employment_time DESC, hire_date DESC;

SELECT 'Find employees with last names with ''q'', but NOT ''qu''' AS '';
SELECT first_name, last_name, count(first_name) AS name_count
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name, first_name
ORDER BY name_count DESC;
