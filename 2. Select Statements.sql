SELECT * # Asterisk means to 'select all'
FROM parks_and_recreation.employee_demographics; # Either make sure the correct db is selcted i.e. parks_and_recreation (will be in bold), or type in format 'db.table name'

SELECT first_name, # Can choose specific column(s) - seperate witb a ','; good general practice to list instead of one sentence for better visualisation
last_name, 
birth_date,
age,
(age + 10) * 10 + 10
FROM parks_and_recreation.employee_demographics;

# BODMAS functionality in the execution engine

SELECT DISTINCT gender # Will choose unique values only, i.e. only Male and Female selected
FROM parks_and_recreation.employee_demographics; 

SELECT DISTINCT first_name, # Since names are all unique, their corresponding gender will be unique to them, i.e. unique values are unique to their corresponding rows
gender 
FROM parks_and_recreation.employee_demographics; 





