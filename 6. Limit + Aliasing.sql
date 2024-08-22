# LIMIT & ALIASING

SELECT *
FROM employee_demographics
LIMIT 3 # LIMIT specifies how many rows we want in our output, i.e. we want the top 3 rows.
;

SELECT *
FROM employee_demographics
ORDER BY age DESC # We can also combine LIMIT statements with ORDER BY, like in this example where we use ORDER BY to output the top 3 oldest people and have them in descending order.
LIMIT 3 
;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1  # Adding this additional parameter means we start from the 2nd position and look at the next one row after and output that result, i.e. the statement will start looking at 'age = 46', who is Donna Meagle, and look at the next one row after, which would be Leslie Knope, 'age = 44'. 
;

# NB 1.0: What the above is essentially saying is starting from a certain position, i.e. the LIMIT statement, so in this case, the second position, the second parameter denotes the outputs after that position we want to have, in this case, the next one row, but if we change that to be '4', we're now saying we want to take the next 4 positions after the LIMIT. 

# NB 1.1: The results will also be different depending on if the data has been sorted in either ascending or descending order before.

# ALIASING

# NB: 2.0: ALIASING is just a way to change the name of the column (for the most part) and can also be included in JOINS (see 'Intermediate' section on GitHub).

SELECT gender, AVG(age) AS avg_age # 'AS' is used to change the name of the column, instead of having it titled 'AVG(age)'
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;

# NB 2.1: The 'AS' isn't necessarily need as it is essentially implied in the script, however, it is better to use for better readability, especially within more complex queries; can be taken as a best practice.
