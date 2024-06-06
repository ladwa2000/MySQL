# WHERE Clauses

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie' # '=', or 'equals to', is also known as a 'comparison operator'
;

# NB 1.0: 'WHERE' clause filters by rows, or 'records', whereas 'SELECT' statements filters by columns, or 'fields'

SELECT *
FROM employee_salary
WHERE salary > 50000 # '>', or 'greater than' is another comparison operator; only records that are greater than 50000 will be selected
;

SELECT *
FROM employee_salary
WHERE salary >= 50000 # '>=', or 'greater than or equals to', is another comparison operator; records that are 50000 and above will be selected
;

SELECT *
FROM employee_salary
WHERE salary < 50000 # '<', or 'less than', is another comparison operator; only records less than 50000 will be selected
;

SELECT *
FROM employee_salary
WHERE salary <= 50000 # '<=', or 'less than or equals to', is another comparison operator; records that are 50000 and less will be selected
;

SELECT *
FROM employee_demographics
WHERE gender != 'Female' # '!=', or 'not equal to', is the final comparison operator; will select records that do not include, i.e. 'not equal to' the intended input, so the 'Male' records will be outputted
;

# NB 1.1: We use '' when writing characters, also known as 'string' data types, but we do not need to for numbers, also known as 'numeric' data types. 

# Logical Operators - 'AND', 'OR', 'OR NOT'

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01' 
AND gender = 'Male' # 'AND' logical operator is so both conditions in the WHERE clause are satisfied, i.e. records where birthdates greater than 1985-01-01 AND of a male gender will be selected
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01' 
OR gender = 'Male' # 'OR' logical operator is so either one of the WHERE clause has to be satisified for the records to be selected, i.e. if record is of Male gender, but is less than the 1985-01-01 birthdate, then that record will still be selected
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01' 
OR NOT gender = 'Male' # 'OR NOT' logical operator works similarly to the 'OR' operator, but it explicitly checks the inverse of one condition when the other condition is not satisfied, i.e. if the birthdate is less than '1985-01-01', but the record is a female, i.e. not a male, then that record will still be selected
;

# NB 2.0: Essentially, Logical operators are conditions set within a query to filter records based on certain criteria

# NB 2.1: Dates, as shown in the birth_date field in our data, are also another data type, known as Date and Time data types. Dates of the 'YYYY-MM-DD' format are 'Date' data types

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55 # BODMAS also applies to logical operators, i.e. the conditional statement in the () with the 'AND' operator, 'in this example, also known as an isolated conditional statement', will be fulfilled first, then the conditional statement with the 'OR' operator
;

# LIKE Statements - '%' and '_'

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%' # '%' is a special character that selects any record in a field that contains the specified pattern at the beginning, i.e. any firstname with 'Jer' at the beginning will be selected
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%a%' # Using the '%' before and after the specified pattern means any record in the field that contains the pattern will be selected, i.e. any firstname that contains the letter 'a' will be selected
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__' # '_' is a special character that selects any record in a field that begins witb a specified pattern, but only contains the amount of '_' after, i.e. any record with 2 characters after the letter 'a', so 2 '_', will be selected 
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%' # Can also combine special characters to include multiple records with a specified pattern in a field, i.e. any firstname with 4 characters that begin with 'a' and any firstname that begins with 'a' that is more than 4 characters will be selected
;

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%' 
;

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1987______'
;

# NB 3.0: Can also use speical characters for other data types, like Dates

# NB 3.1: Essentially, the 'LIKE' operator is used in a WHERE clauses to search for a specified pattern in a field.
