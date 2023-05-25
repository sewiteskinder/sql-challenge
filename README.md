# sql-challenge 

Background
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

Data Modeling
Once the CSV files have been inspected, sketch an Entity Relationship Diagram of the tables. This was done using the site QuickDBD.

Data Engineering
Using the ERD previously created, create a table schema for each of the six CSV files in PostgreSQL.
    - Specify the data types, primary keys, foreign keys, and other constraints
    - Ensure that the primary keys are unique in each column, otherwise creata composite key
    - Be sure the tables are created in the correct order to handle the foreign keys 
Once done, import each CSV file into its corresponding SQL Table
    - Be sure that the data is imported in the same order that the corresponding tables got created in, and to account for Headers.

Data Analysis
    - List the employee number, last name, first name, sex, and salary of each employee.
    - List the first name, last name, and hire date for the employees who were hired in 1986.
    - List the manager of each department along with their department number, department name, employee number, last name, and first name.
    - List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
    - List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
    - List each employee in the Sales department, including their employee number, last name, and first name.
    - List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
    - List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
