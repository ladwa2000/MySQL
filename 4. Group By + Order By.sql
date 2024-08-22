# GROUP BY

# NB 1.0: The GROUP BY statement groups rows that have the same values into summary rows

SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender # Will group 'male' and 'female' into summary roles
;

SELECT first_name # This will result in an error as the column selected is not an aggregated column, i.e. ike AVG() or SUM()
FROM employee_demographics
GROUP BY gender 
;

# NB 1.1: The SELECT statement and GROUP BY statement need to match if the SELECT column is a non-aggregated column, i.e. an aggregate function is not being performed

SELECT gender, AVG(age) # Will group the average age of both genders
FROM employee_demographics
GROUP BY gender
;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

# NB: 1.2: The GROUP BY statement will essentially group unique values, however, as the above demonstrates, if multiple columns are being selected, then if a column, i.e. 'occupation', has rows that are the same, i.e. 'Office Manager', then if their corresponding rows, i.e. 'salary', are different, i.e. '50000' and '60000', then both will be grouped seperately, i.e. 'Office Manager - 50000' and 'Office Manager - 60000'

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age) # Examples of different aggregate functions - will show the average male and female age, oldest male and female age, youngest male and female age and total male and female ages
FROM employee_demographics
GROUP BY gender
;

# ORDER BY 

# NB 2.0: The ORDER BY sorts the result set in either ascending or descending order

SELECT *
FROM employee_demographics
ORDER BY first_name # Sorts in ascending order by default without explicit instructions
;

SELECT *
FROM employee_demographics
ORDER BY first_name ASC # ASC = Ascending
;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC # DESC = Descending
;

#NB: 2.1: Can explicitly set query to order sets in either ascending or descending order

SELECT *
FROM employee_demographics
ORDER BY gender, age # Sorts by 'Female' due to the way ORDER BY sorts; sorts by age after sorting by gender in ascending order
;

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC # Similar to above, but now sorted age in descending order after sorting by gender
;

#NB 2.2: Best practice indicates the order of the columns in the ORDER BY statement are important for intended results, especially in business logic

SELECT *
FROM employee_demographics
ORDER BY 5, 4 # Can use the ORDER BY with column index numbers, however, only to be good for simple and quick queries; not best practice
;
