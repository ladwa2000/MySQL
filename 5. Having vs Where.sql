# HAVING vs WHERE

SELECT gender, AVG(age)
FROM employee_demographics
WHERE AVG(age) > 40
GROUP BY gender
; # This is an error because when we are selecting a column of data and performing an aggregate function on that column, the aggregate function only performs the action after the GROUP BY groups the rows together. Therefore, when we are trying to filter based off the column of 'AVG(age) > 40', this column has not been created yet because the GROUP BY has not yet occurred.

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40 # Using the HAVING clause in this example is a good demonstration of its function for this particular situation; where we want to filter by the aggregate function, i.e., 'AVG(age) > 40' after grouping by select column of data.
;

# NB 1.0: We can actually use HAVING and WHERE clauses in the same query, as shown below.

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%' # Filtering at row level; LIKE '%manager%' means occupations that contain 'manager'
GROUP BY occupation
HAVING AVG(salary) > 75000 # Filtering at aggregate function level
;

# NB 1.1: Essentially, the difference between the HAVING and WHERE clauses is that the HAVING clause is used to filter results based on aggregate functions and operates after the GROUP BY statement has been executed, whereas the WHERE clause is used to filter individual rows of data before the GROUP BY statement occurs.

