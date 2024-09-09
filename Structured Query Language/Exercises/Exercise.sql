--WHERE Clauses examples
-- Select employees in sports, first aid and toys department
SELECT * 
FROM employees 
WHERE  department IN ('Sprots', 'First Aid', 'Toys')

--select employees with salary between 80000 and 100000
SELECT * 
FROM employees 
WHERE salary BETWEEN 80000 AND 100000

--exercise 1
--select name and email of female employees in tools department with salary more than 110000
SELECT first_name, email 
FROM employees 
WHERE gender = 'F' 
AND department = 'Tools' 
AND salary > 110000

--write a query that returns employees name and hire_date with salary more than 165000 or males in sports department
SELECT first_name, hire_date 
FROM employees 
WHERE salary > 165000
OR (department = 'Sports' AND gender = 'M')

--write a query that returns name and hiredate of employees hired between 2002-01-01 and 2004-01-01
SELECT first_name, hire_date
FROM employees
WHERE hire_date BETWEEN '2002-01-01' AND '2004-01-01'

--write a query that returns male employees in automotive department with salary between 40000 and 100000 and female in toys department 
SELECT * 
FROM employees
WHERE (gender= 'M' AND department = 'Automotive' AND salary BETWEEN 40000 AND 100000) 
OR (gender= 'F' AND department = 'Toys') 
-- exercise 1 
	
--ORDER BY Clause 
SELECT * 
FROM employees 
ORDER BY department ASC

--write a query that return the unique departments in employees
SELECT DISTINCT department
FROM employees

--write a query that returns top 10 unique departments in employees table
SELECT DISTINCT department AS sorted_departments
FROM employees 
ORDER BY 1
--LIMIT 10
FETCH FIRST 10 ROWS ONLY

-- assignment 2
SELECT *
FROM students

--write a query that returns name of students with age between 18 and 20
SELECT student_name 
FROM students
WHERE age BETWEEN 18 AND 20

--write a query that returns students who has 'ch' or 'nd' in their name 
SELECT * FROM students
WHERE student_name LIKE '%ch%'
OR student_name LIKE '%nd'

--write a query that returns name of students with 'ae' or 'ph' in their name and whose age is not 19
SELECT student_name
FROM students
WHERE (student_name LIKE '%ae%' OR student_name LIKE '%ph%')
AND age != 19

--write a query that returns student names according to their age
SELECT student_name
FROM students
ORDER BY age DESC

--write a query that returns 4 oldest students name and age 
SELECT student_name, age
FROM students
ORDER BY age DESC
--LIMIT 4
FETCH FIRST 4 ROWS ONLY

--write a query that returns students with age 20 years or younger whose student_no between 3 and 5 or student_no is 7 and student older than 20 years with student no greater than 4 
SELECT * 
FROM students
WHERE age <= 20
AND (student_no BETWEEN 3 AND 5 OR student_no = 7)
OR (age > 20 AND student_no >= 4)
-- assignment 2 
	
--UPPER Case LOWER Case and LENGTH Example
SELECT UPPER(first_name), LOWER(department), LENGTH(department)
FROM employees

SELECT UPPER(first_name), LOWER(last_name)
FROM employees
	
--TRIM the white space 
SELECT LENGTH(TRIM('    HELLO THERE   '))

--adding more columns together
SELECT FIRST_NAME ||' ' || LAST_NAME AS FULL_NAME, (SALARY > 140000)
FROM EMPLOYEES

--IN
SELECT DEPARTMENT, ('clothing' IN (DEPARTMENT, FIRST_NAME))
FROM EMPLOYEES

--LIKE 
SELECT DEPARTMENT, (DEPARTMENT LIKE '%oth%')
FROM employees

SELECT 'This is test data' test_data

--SUBSTRING
SELECT SUBSTRING('This is test data' FROM 1 fOR 4) test_data_extracted

--REPLACE
SELECT department, 
REPLACE(department, 'Clothing', 'Attire') AS modified_data, 
department || ' ' || 'department' AS department_name
FROM departments

--POSITION
SELECT SUBSTRING(email, POSITION('@' IN email) + 1)
FROM employees

--COALESCE
SELECT COALESCE(email, 'NONE') AS email
FROM employees

--MIN, MAX, AVG, COUNT, SUM
SELECT MAX(salary)
FROM employees

SELECT MIN(salary)
FROM employees

SELECT AVG(salary)
FROM employees

SELECT COUNT(email)
FROM employees

SELECT SUM(salary)
FROM employees

--Assigment 3
SELECT last_name || ' works IN the ' || department || ' department' 
FROM professors

SELECT 'It is ' || (salary > 95000) || ' that professOR ' || last_name || ' is highly paid'
FROM professors

SELECT last_name, UPPER(SUBSTRING(department, 1 ,3)) AS department, salary, hire_date
FROM professors

SELECT MAX(salary) AS highest_salary, MIN(salary) AS lowest_salary
FROM professors
WHERE last_name NOT IN ('Wilson')

SELECT MIN(hire_date)
FROM professors
-- Assignment 3

--Exercise 2
--P1 - Find how many people have the same first name in a company.
SELECT first_name, COUNT(first_name)
FROM employees
GROUP BY first_name
HAVING COUNT(first_name) > 1

--P2 - List unique departments without using the DISTINCT keyword
SELECT department
FROM employees
GROUP BY department

--P3 - The third exercise involves extracting email domains from email addresses and counting how many employees have each domain.
SELECT SUBSTRING(email, POSITION('@' IN email) + 1) domain_name, COUNT(email)
FROM employees
GROUP BY domain_name
ORDER BY COUNT

--P4 - Creating a report showing the minimum, maximum, and average salaries, broken down by gender and region.
SELECT gender, region_id, MIN(salary) AS min_salary, MAX(salary) AS max_salary, round(AVG(salary)) AS avg_salary
FROM employees
GROUP BY gender, region_id
ORDER BY gender, region_id
--Exercise 2
	
create table cars(make VARCHAR(10))
SELECT * FROM cars

INSERT INTO cars VALUES ('HONDA');
INSERT INTO cars VALUES ('HONDA');
INSERT INTO cars VALUES ('HONDA');
INSERT INTO cars VALUES ('TOYOTA');
INSERT INTO cars VALUES ('TOYOTA');
INSERT INTO cars VALUES ('NISSAN');

SELECT COUNT(*), make
FROM CARS
GROUP BY make

--Assignment 4
CREATE TABLE fruit_imports
(
	id INTEGER,
	name VARCHAR(20),
	season VARCHAR(10),
	state VARCHAR(20),
	supply INTEGER,
	cost_per_unit DECIMAL
);

INSERT INTO fruit_imports VALUES(1, 'Apple', 'All Year', 'Kansas', 32900, 0.22);
INSERT INTO fruit_imports VALUES(2, 'Avocado', 'All Year', 'Nebraska', 27000, 0.15);
INSERT INTO fruit_imports VALUES(3, 'Coconut', 'All Year', 'California', 15200, 0.75);
INSERT INTO fruit_imports VALUES(4, 'orange', 'Winter', 'California', 17000, 0.22);
INSERT INTO fruit_imports VALUES(5, 'Pear', 'Winter', 'Iowa', 37250, 0.17);
INSERT INTO fruit_imports VALUES(6, 'Lime', 'Spring', 'indiana', 40400, 0.15);
INSERT INTO fruit_imports VALUES(7, 'Mango', 'Spring', 'Texas', 13650, 0.60);
INSERT INTO fruit_imports VALUES(8, 'orange', 'Spring', 'Iowa', 18000, 0.26);
INSERT INTO fruit_imports VALUES(9, 'Apricot', 'Spring', 'indiana', 55000, 0.20);
INSERT INTO fruit_imports VALUES(10, 'Cherry', 'SUMmer', 'Texas', 62150, 0.02);
INSERT INTO fruit_imports VALUES(11, 'Cantaloupe', 'SUMmer', 'Texas', 8000, 0.49);
INSERT INTO fruit_imports VALUES(12, 'Apricot', 'SUMmer', 'Kansas', 14500, 0.20);
INSERT INTO fruit_imports VALUES(13, 'Mango', 'SUMmer', 'Texas', 17000, 0.68);
INSERT INTO fruit_imports VALUES(14, 'Pear', 'Fall', 'Nebraska', 30500, 0.12);
INSERT INTO fruit_imports VALUES(15, 'Grape', 'Fall', 'Illinois', 72500, 0.35);

SELECT * FROM fruit_imports

--Write a query that displays ONLY the state with the largest amount of fruit supply.
SELECT state
FROM fruit_imports
GROUP BY state
ORDER BY SUM(supply) DESC
LIMIT 1

--Write a query that returns the most expensive cost_per_unit of every season. The query should display 2 columns, the season AND the cost_per_unit
SELECT season, MAX(cost_per_unit)
FROM fruit_imports
GROUP BY season

--Write a query that returns the state that has more than 1 import of the same fruit.
SELECT state
FROM fruit_imports
GROUP BY name, state
HAVING COUNT(name) > 1

--Write a query that returns the seasons that produce either 3 fruits OR 4 fruits.
SELECT season, COUNT(season)
FROM fruit_imports
GROUP BY season
HAVING COUNT(season) BETWEEN 3 AND 4

--Write a query that takes INTO consideration the supply AND cost_per_unit columns for determining the total cost AND returns the most expensive state with the total cost.
SELECT state, SUM(supply * cost_per_unit) total_cost
FROM fruit_imports
GROUP BY state
ORDER BY total_cost DESC
LIMIT 1

--Execute the below SQL script AND answer the question that follows:
CREATE table fruits (fruit_name VARCHAR(10));
INSERT INTO fruits VALUES ('orange');
INSERT INTO fruits VALUES ('Apple');
INSERT INTO fruits VALUES (NULL);
INSERT INTO fruits VALUES (NULL);
SELECT * FROM fruits
	
--Write a query that returns the COUNT of 4. You'll need to COUNT on the column fruit_name AND NOT use COUNT(*)
SELECT COUNT(COALESCE(fruit_name, 'SOMEVALUE'))
FROM fruits
-- Assignment 4

SELECT e.department
FROM employees e, departments d

--SubQuery
SELECT * FROM employees
WHERE department NOT IN (SELECT department FROM departments)

SELECT a.first_name, a.salary 
FROM (SELECT * FROM employees WHERE salary > 150000) a

SELECT *
FROM employees
WHERE department IN (SELECT department FROM departments)

SELECT * 
FROM (SELECT department FROM departments) d, employees e

SELECT first_name, last_name, salary, (SELECT first_name FROM employees LIMIT 1)
FROM employees

--Exercise 3
-- P1 - Write a query to return all employees working in the electronics division. 
SELECT e.*
FROM employees e, departments d
WHERE e.department = d.department AND d.division = 'Electronics'

SELECT * FROM employees
WHERE department IN (SELECT department FROM departments WHERE division = 'Electronics')

--P2 - Write a query to return employees who work in Asia or Canada and earn more than $130,000. 
SELECT * 
FROM employees
WHERE region_id IN (SELECT region_id FROM regions WHERE country= 'Asia' OR country='Canada') 
AND salary > 130000

--P3 - Write a query to show the first name, department, and how much less each employee earns compared to the highest-paid employee. 
SELECT first_name, department, 
(SELECT MAX(salary) FROM employees) - salary
FROM employees
WHERE region_id IN (SELECT region_id FROM regions WHERE country= 'Asia' OR country='Canada')
-- Exercise 3

--Use of IN, ALL and ANY
SELECT * FROM employees 
WHERE region_id IN (SELECT region_id FROM regions WHERE country = 'United States')

SELECT * FROM employees 
WHERE region_id > ALL (SELECT region_id FROM regions WHERE country = 'United States')

SELECT * FROM employees 
WHERE region_id > ANY (SELECT region_id FROM regions WHERE country = 'United States')

-- Exercise 4
--P1 - Write a query to return all employees working in the kids division, with hire dates greater than all the hire dates of employees in the maintenance department.
SELECT * FROM employees
WHERE department = ANY (SELECT department FROM departments WHERE division = 'Kids') AND 
hire_date > ALL (SELECT hire_date FROM employees WHERE department = 'Maintainance')

--P2 - Write a query to return the salary that appears most frequently among employees. If multiple salaries have the same frequency, return the highest one.
SELECT salary, COUNT(*) 
FROM employees
GROUP BY salary 
ORDER BY COUNT(*) DESC, salary DESC
LIMIT 1

SELECT salary FROM (SELECT salary, COUNT(*) 
FROM employees
GROUP BY salary 
ORDER BY COUNT(*) DESC, salary DESC
LIMIT 1)

SELECT salary 
FROM employees
GROUP BY salary
HAVING COUNT(*) >= All (SELECT COUNT(*) FROM employees
					GROUP BY salary )
ORDER BY salary DESC
LIMIT 1
-- Exercise 4

-- Exercise 5
CREATE TABLE dupes (id INTEGER, name VARCHAR(10))

INSERT INTO dupes VALUES (1, 'Urmi');
INSERT INTO dupes VALUES (2, 'Urmi');
INSERT INTO dupes VALUES (3, 'Aum');
INSERT INTO dupes VALUES (4, 'Aum');
INSERT INTO dupes VALUES (5, 'Nishi');
INSERT INTO dupes VALUES (6, 'Raj');
INSERT INTO dupes VALUES (7, 'Rutvik');

--P1 - Write a query to return only unique records from the dupes table, keeping only one instance of each name and including the corresponding ID.
SELECT MIN(id), name 
FROM dupes
GROUP BY name

SELECT * FROM dupes
WHERE id IN (SELECT MIN(id) FROM dupes
GROUP BY name
)
  
-- Delete duplicate records
DELETE FROM dupes
WHERE id NOT IN (SELECT MIN(id) FROM dupes
GROUP BY name
)

-- Dropping temporary table
DROP TABLE dupes

--P2 - Calculate the average salary of employees, excluding the minimum and maximum salaries to avoid the impact of outliers. 
SELECT ROUND(AVG(salary))
FROM employees
WHERE salary NOT IN (
	(SELECT MIN(salary) FROM employees),
	(SELECT MAX(salary) FROM employees))
--Exercise 5

--Assignment 5
--write a query that returns name of students taking course Physics and US History
SELECT student_name FROM students 
WHERE student_no IN (
SELECT student_no FROM student_enrollment WHERE course_no IN (
SELECT course_no FROM courses WHERE course_title IN  ('Physics', 'US History')))

--Write a SQL query to find the name of the student who is enrolled in the most courses.  
SELECT student_name FROM students 
WHERE student_no IN (
SELECT student_no FROM student_enrollment 
GROUP BY student_no 
ORDER BY COUNT(student_no) DESC 
LIMIT 1
)

--Write a SQL query to retrieve all details of the oldest student from the students table. 
SELECT * FROM students 
WHERE age = (SELECT MAX(age) FROM students)
--Assignment 5

--Write a SQL query to classify employees based on their salary into three categories: 'UNDER PAID', 'PAID WELL', and 'EXECUTIVE'. 
SELECT first_name, salary, 
CASE
	WHEN salary < 100000 THEN 'UNDER PAID'
	WHEN salary > 100000 AND salary < 160000 THEN 'PAID WELL' 
	WHEN salary > 160000 THEN 'EXECUTIVE'
	ELSE 'UNPAID'
END AS category
FROM employees
ORDER BY salary DESC

--Exercise 6
--P1 - Create a query that counts the number of employees in each category ("Underpaid," "Paid Well," and "Executive").
SELECT category, COUNT(*)
FROM (SELECT first_name, salary, 
CASE
	WHEN salary < 100000 THEN 'UNDER PAID'
	WHEN salary > 100000 AND salary < 160000 THEN 'PAID WELL' 
	WHEN salary > 160000 THEN 'EXECUTIVE'
	ELSE 'UNPAID'
END AS category
FROM employees
ORDER BY salary DESC)
GROUP BY category

--P2 - Create a query that transposes department data so that each department becomes a column with the total count of employees in that department.
SELECT SUM(CASE WHEN salary < 100000 THEN 1 ELSE 0 END) under_paid,
SUM(CASE WHEN salary > 100000 AND salary < 160000 THEN 1 ELSE 0 END) paid_well,
SUM(CASE WHEN salary > 160000 THEN 1 ELSE 0 END) executive 
FROM employees
--Exercise 6

--Write a SQL query to count the number of employees in the departments of 'Sports', 'Tools', 'Clothing', and 'Computers'.
SELECT department, COUNT(*)
FROM employees
WHERE department IN ('Sports', 'Tools', 'Clothing', 'Computers')
GROUP BY department 

--Exercise 7
--Write a SQL query to count the number of employees in the 'Sports', 'Tools', 'Clothing', and 'Computers' departments. 
SELECT SUM(CASE WHEN department = 'Sports' THEN 1 ELSE 0 END) sports_employees,
SUM(CASE WHEN department = 'Tools' THEN 1 ELSE 0 END) tools_employees,
SUM(CASE WHEN department = 'Clothing' THEN 1 ELSE 0 END) clothing_employees,
SUM(CASE WHEN department = 'Computers' THEN 1 ELSE 0 END) computers_employees
FROM employees

--P1 -  Generate a report that assigns a country to each employee based on the region they work in, using the CASE statement to dynamically look up the country from the regions table.
SELECT first_name, 
CASE WHEN region_id = 1 THEN (SELECT country FROM regions WHERE region_id = 1) END region_id1,
CASE WHEN region_id = 2 THEN (SELECT country FROM regions WHERE region_id = 2) END region_id2,
CASE WHEN region_id = 3 THEN (SELECT country FROM regions WHERE region_id = 3) END region_id3,
CASE WHEN region_id = 4 THEN (SELECT country FROM regions WHERE region_id = 4) END region_id4,
CASE WHEN region_id = 5 THEN (SELECT country FROM regions WHERE region_id = 5) END region_id5,
CASE WHEN region_id = 6 THEN (SELECT country FROM regions WHERE region_id = 6) END region_id6,
CASE WHEN region_id = 7 THEN (SELECT country FROM regions WHERE region_id = 7) END region_id7
FROM employees
  
-- P2 -  Generate a report that aggregates the number of employees by country (United States, Asia, Canada) without using joins.
SELECT COUNT(region_id1) + COUNT(region_id2) + COUNT(region_id3) united_states,
COUNT(region_id4) + COUNT(region_id5) Asia,
COUNT(region_id6) + COUNT(region_id7) Canada
FROM (SELECT first_name, 
CASE WHEN region_id = 1 THEN (SELECT country FROM regions WHERE region_id = 1) END region_id1,
CASE WHEN region_id = 2 THEN (SELECT country FROM regions WHERE region_id = 2) END region_id2,
CASE WHEN region_id = 3 THEN (SELECT country FROM regions WHERE region_id = 3) END region_id3,
CASE WHEN region_id = 4 THEN (SELECT country FROM regions WHERE region_id = 4) END region_id4,
CASE WHEN region_id = 5 THEN (SELECT country FROM regions WHERE region_id = 5) END region_id5,
CASE WHEN region_id = 6 THEN (SELECT country FROM regions WHERE region_id = 6) END region_id6,
CASE WHEN region_id = 7 THEN (SELECT country FROM regions WHERE region_id = 7) END region_id7
FROM employees)
--Exercise 7

--Assignment 6
--Write a SQL query to calculate the total supply of each fruit
SELECT name, SUM(supply), 
CASE 
	WHEN SUM(supply) <20000 THEN 'LOW'
	WHEN SUM(supply) >=20000 AND SUM(supply) < 50000 THEN 'ENOUGH'
	WHEN SUM(supply) >=50000 THEN 'FULL'
end category
FROM fruit_imports
GROUP BY name

--Write a SQL query to calculate the total cost of fruit imports for each season. 
SELECT season, SUM(supply * cost_per_unit) total_cost
FROM fruit_imports
GROUP BY season

--Write a SQL query to calculate the total cost of fruit imports for each season, including 'Winter', 'Summer', 'All Year', 'Spring', and 'Fall'. 
SELECT 
SUM(CASE WHEN season = 'Winter' THEN total_cost END), 
SUM(CASE WHEN season = 'Summer' THEN total_cost END), 
SUM(CASE WHEN season = 'All Year' THEN total_cost END), 
SUM(CASE WHEN season = 'Spring' THEN total_cost END),
SUM(CASE WHEN season = 'Fall' THEN total_cost END) 
FROM (SELECT season, SUM(supply * cost_per_unit) total_cost
FROM fruit_imports
GROUP BY season)
--Assignment 6

--Write a SQL query to display each employee's first name, department, salary, and the average salary of their respective department.
SELECT first_name, department, salary,
(SELECT ROUND(AVG(salary)) FROM employees e2
				WHERE e1.department = e2.department) AVG_department_salary
FROM employees e1

--Exercise 8
--P1 - Write a query to find the names of departments with more than 38 employees using a correlated subquery.
SELECT department
FROM departments d
WHERE (SELECT COUNT(*) COUNT FROM employees e
		 WHERE e.department = d.department) > 38

--P2 - Finding the Highest Salary in Departments with More than 38 Employees
SELECT d.department, (SELECT MAX(salary) highest_salary FROM employees WHERE department = d.department) 
FROM departments d
WHERE (SELECT COUNT(*) COUNT FROM employees e
		 WHERE e.department = d.department) > 38

--P3 - Write a SQL query to find the highest salary in each department. 
SELECT department, MAX(salary)
FROM employees
GROUP BY department
--Exercise 8

--Exercise 9 
--P1 - You are tasked with generating a report that shows:
-- Department: The department name.
-- Employee First Name: The name of the employee.
-- Salary: The salary of the employee.
-- Flag: A flag indicating whether the salary is the highest or the lowest in that department.
SELECT department, first_name, salary, 
CASE 
	WHEN salary = max_by_department THEN 'HIGHEST SALARY'
	WHEN salary = min_by_department THEN 'LOWEST SALARY'
end salary_in_department
FROM ( 
SELECT department, first_name, salary, 
 (SELECT MAX(salary) FROM employees e2 WHERE e1.department = e2.department) max_by_department,
 (SELECT MIN(salary) FROM employees e3 WHERE e1.department = e3.department) min_by_department 
FROM employees e1
ORDER BY department
) WHERE salary = max_by_department OR salary = min_by_department
ORDER BY 1
--Exercise 9

--Write a SQL query to retrieve the first name of employees and the corresponding country they are associated with. 
SELECT first_name, country
FROM employees e, regions r
WHERE e.region_id = r.region_id

--Exercise 10
--P1 - Create a report showing employee's first name, email, and division, excluding null emails.
SELECT first_name, email,e.department, division, country
FROM employees e, departments d, regions r
WHERE e.department = d.department 
AND e.region_id = r.region_id 
AND email IS NOT null

--P2 - Count the number of employees in each country.
SELECT country, COUNT(*) count_of_employees
FROM regions r, employees e
WHERE r.region_id = e.region_id
GROUP BY country
--Exercise 10

--INNER JOIN
--Write a SQL query to retrieve the first name of employees and the corresponding country they are associated with. 
SELECT first_name, country
FROM employees e INNER JOIN regions r
ON e.region_id = r.region_id

--Write a SQL query to retrieve the first name, email, division, and country of employees who have a non-null email. 
SELECT first_name, email, division, country
FROM employees e INNER JOIN departments d
ON e.department = d.department 
INNER JOIN regions r 
ON e.region_id = r.region_id
WHERE email IS NOT NULL

--LEFT JOIN
SELECT DISTINCT e.department e_department, d.department d_department
FROM employees e LEFT JOIN departments d 
ON e.department = d.department

--RIGHT JOIN
SELECT DISTINCT e.department e_department, d.department d_department
FROM employees e RIGHT JOIN departments d 
ON e.department = d.department

--Exercise 11
--P1 - Identify departments that exist in employees but not in departments.
SELECT DISTINCT e.department e_department
FROM employees e LEFT JOIN departments d 
ON e.department = d.department
WHERE d.department IS NULL
--Exercise 11

--UNION
SELECT DISTINCT department
FROM employees
UNION
SELECT department 
FROM departments

--UNION ALL
SELECT DISTINCT department
FROM employees
UNION ALL
SELECT department 
FROM departments
ORDER BY department

--EXCEPT
SELECT DISTINCT department
FROM employees
EXCEPT 
SELECT department 
FROM departments

--Exercise 12
--P1 - Create a report showing the department name and total number of employees, with a final row showing the total count of employees across all departments.
SELECT DISTINCT department, COUNT(*)
FROM employees 
GROUP BY department
UNION ALL
SELECT 'TOTAL', COUNT(*)
FROM employees 
--Exercise 12

--CROSS JOIN
SELECT * 
FROM employees e CROSS JOIN departments d

--Exercise 13
--P1 - Write a query to return the first name, department, hire date, and country of the first and last employees hired in the company.
	
--SELECT first_name, department, hire_date, country
--FROM employees e LEFT JOIN regions r
--ON e.region_id = r.region_id
--WHERE hire_date = (SELECT MIN(hire_date) FROM employees e2) OR hire_date = (SELECT MAX(hire_date) FROM employees e3)
  
(SELECT first_name, department, hire_date, country
FROM employees e LEFT JOIN regions r
ON e.region_id = r.region_id
WHERE hire_date = (SELECT MIN(hire_date) FROM employees e2) 
LIMIT 1)
UNION ALL
SELECT first_name, department, hire_date, country
FROM employees e LEFT JOIN regions r
ON e.region_id = r.region_id
WHERE hire_date = (SELECT MAX(hire_date) FROM employees e3)

--P2 - Create a report showing the salary budget fluctuation for every 90-day period.
SELECT hire_date, salary,
(SELECT SUM(salary) FROM employees e2
WHERE e2.hire_date BETWEEN e.hire_date - 90  AND e.hire_date) spending_pattern
FROM employees e
ORDER BY hire_date
--Exercise 13

--VIEW
CREATE VIEW employee_information AS
SELECT first_name, email, e.department, salary, division, region, country 
FROM employees e, departments d, regions r
WHERE e.department = d.department
AND e.region_id = r.region_id

SELECT * FROM employee_information

--Assignment 7
--Write a SQL query to retrieve the student name, course number, and the alphabetically first last name of a teacher associated with the course.
SELECT a.student_name, a.course_no, MIN(a.last_name)
FROM (SELECT student_name, se.course_no, t.last_name
FROM students s 
INNER JOIN student_enrollment se
ON s.student_no = se.student_no 
INNER JOIN teach t
ON se.course_no = t.course_no ) a
GROUP BY a.student_name, a.course_no
ORDER BY a.student_name, a.course_no

--Write a SQL query to retrieve the first names of employees whose salary is greater than the average salary of their department. 
SELECT e.first_name FROM employees e 
INNER JOIN (SELECT e2.department, ROUND(AVG(e2.salary)) avg_salary_by_department 
				FROM employees e2 GROUP BY e2.department) avg_sal
ON e.department = avg_sal.department 
WHERE e.salary > avg_sal.avg_salary_by_department

SELECT first_name
FROM employees e
WHERE salary > ( SELECT AVG(salary) FROM employees
       WHERE department = e.department);

--Write a SQL query to retrieve a list of all students and the courses they are enrolled in. 
SELECT s.student_no, student_name, course_no 
FROM students s LEFT JOIN student_enrollment se
ON s.student_no = se.student_no
--Assignment 7

--Write a SQL query to calculate the total salary of employees in each department. 
SELECT SUM(salary), department
FROM employees
WHERE 1=1
GROUP BY department

--Write a SQL query to retrieve the total number of employees, the average salary (rounded), the minimum salary, and the maximum salary for each department.
SELECT COUNT(*) total_employees, department, round(AVG(salary)) AVG_sal, MIN(salary) MIN_salary, MAX(salary) MAX_salary
FROM employees
GROUP BY department
ORDER BY total_employees DESC

--Write a SQL query to retrieve the count of employees grouped by department and gender.
SELECT department, gender, COUNT(*)
FROM employees
GROUP BY department, gender
ORDER BY department

--Write a SQL query to retrieve the departments that have more than 35 employees.
SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 35
ORDER BY department

--Write a SQL query to retrieve the first name of employees and their respective department.
(SELECT first_name, department, 
(SELECT COUNT(*) FROM employees e1 WHERE e2.department = e1.department) 
FROM employees e2
ORDER BY department)

--OVER
SELECT first_name, department, 
COUNT(*) OVER(PARTITION by department)
FROM employees

--Write a SQL query to retrieve the first name, department, and region of employees. 
SELECT first_name, department, 
COUNT(*) OVER(PARTITION by department) dept_count,
region_id,
COUNT(*) OVER(PARTITION by region_id) region_count
FROM employees

--Write a SQL query to retrieve the first name of employees from region 3 and display the total number of employees across the entire company. 
SELECT first_name, department, COUNT(*) OVER()
FROM employees
WHERE region_id = 3

--Write a SQL query to retrieve the first name, hire date, and salary of employees, along with a running total of salaries ordered by hire date. 
SELECT first_name, hire_date, salary,
SUM(salary) OVER(ORDER BY hire_date RANGE BETWEEN unbounded preceding 
					AND CURRENT ROW) running_total_of_salaries
FROM employees

--Write a SQL query to retrieve the first name, hire date, department, and salary of employees, along with a running total of salaries within each department. 
SELECT first_name, hire_date, department, salary,
SUM(salary) OVER(PARTITION by department ORDER BY hire_date) running_total_of_salaries
FROM employees

--Write a SQL query to retrieve the first name, hire date, department, and salary of employees, along with a running total of salaries for each employee. 
SELECT first_name, hire_date, department, salary,
SUM(salary) OVER(ORDER BY hire_date ROWS BETWEEN 3 preceding 
AND CURRENT ROW) running_total_of_salaries
FROM employees

--For each employee, rank their salary within their department using the RANK() window function, with higher salaries ranked first. Partition the ranking by department.
SELECT first_name, email, department, salary,
RANK() OVER(PARTITION by department ORDER BY salary DESC)
FROM employees

--Write a SQL query to retrieve the first name, email, department, and salary of employees ranked within their department by salary. Select only those employees who are ranked 8th in salary within their department.
SELECT * FROM (SELECT first_name, email, department, salary,
RANK() OVER(PARTITION by department ORDER BY salary DESC)
FROM employees)
WHERE RANK = 8

--Write a SQL query to assign employees to one of five salary brackets within their department, ranked by salary in descending order. Use the NTILE(5) window function to divide employees into 5 salary brackets within each department.
SELECT first_name, email, department, salary,
NTILE(5) OVER(PARTITION by department ORDER BY salary DESC) salary_bracket
FROM employees

--For each employee, display the highest salary in their department using the FIRST_VALUE() window function, ordered by salary in descending order.
SELECT first_name, email, department, salary,
FIRST_VALUE(salary) OVER(PARTITION by department ORDER BY salary DESC) FIRST_VALUE
FROM employees

--For each employee, display the maximum salary in their department using the MAX() window function, partitioned by department and ordered by salary in descending order.
SELECT first_name, email, department, salary,
MAX(salary) OVER(PARTITION by department ORDER BY salary DESC) max_salary_bracket
FROM employees

--For each employee, display the first salary (ordered alphabetically by first name) in their department using the FIRST_VALUE() window function.
SELECT first_name, email, department, salary,
FIRST_VALUE(salary) OVER(PARTITION by department ORDER BY first_name ASC) FIRST_VALUE
FROM employees

--For each employee, display the 5th salary (ordered alphabetically by first name) in their department using the NTH_VALUE() window function.
SELECT first_name, email, department, salary,
NTH_VALUE(salary, 5) OVER(PARTITION by department ORDER BY first_name ASC) nth_value
FROM employees

--Write a SQL query to retrieve the first name, last name, and salary of employees. For each employee, display the salary of the next employee in the result set using the LEAD() window function.
SELECT first_name, last_name, salary,
LEAD(salary) OVER() next_salary
FROM employees

--For each employee, display the salary of the previous employee in the result set using the LAG() window function.
SELECT first_name, last_name, salary,
LAG(salary) OVER() previous_salary
FROM employees

--Write a SQL query to retrieve the department, last name, and salary of employees. For each employee, display the salary of the closest higher-paid employee using the LAG() window function, ordered by salary in descending order.
SELECT department, last_name, salary,
LAG(salary) OVER(ORDER BY salary DESC) closest_higher_salary
FROM employees

--For each employee, display the salary of the closest lower-paid employee within the same department using the LEAD() window function, ordered by salary in descending order.
SELECT department, last_name, salary,
LEAD(salary) OVER(PARTITION by department ORDER BY salary DESC) closest_lower_salary
FROM employees

---
CREATE TABLE sales(
	continent VARCHAR(20),
	country VARCHAR(20),
	city VARCHAR(20),
	units_sold INTEGER
);

INSERT INTO sales VALUES ('North America', 'Canada', 'Toronto', 10000);
INSERT INTO sales VALUES ('North America', 'Canada', 'Montreal', 5000);
INSERT INTO sales VALUES ('North America', 'Canada', 'Vancouver', 15000);
INSERT INTO sales VALUES ('Asia', 'China', 'Hong Kong', 7000);
INSERT INTO sales VALUES ('Asia', 'China', 'Shanghai', 3000);
INSERT INTO sales VALUES ('Asia', 'Japan', 'Tokyo', 5000);
INSERT INTO sales VALUES ('Europe', 'UK', 'London', 6000);
INSERT INTO sales VALUES ('Europe', 'UK', 'Manchester', 12000);
INSERT INTO sales VALUES ('Europe', 'France', 'Paris', 5000);
---

SELECT * FROM sales
ORDER BY continent, country, city

SELECT continent, SUM(units_sold)
FROM sales
GROUP BY continent

SELECT country, SUM(units_sold)
FROM sales
GROUP BY country

SELECT city, SUM(units_sold)
FROM sales
GROUP BY city

--GROUPING SETS
SELECT continent, country, city, SUM(units_sold)
FROM sales
GROUP BY grouping sets(continent, country, city, ())

--ROLLUP
SELECT continent, country, city, SUM(units_sold)
FROM sales
GROUP BY rollup(continent, country, city)

--CUBE
SELECT continent, country, city, SUM(units_sold)
FROM sales
GROUP BY CUBE(continent, country, city)

--Challenging Puzzles
--P1 - Write a SQL query to retrieve all students who are not enrolled in the course 'CS180'.
SELECT * FROM students
WHERE student_no NOT IN (SELECT student_no FROM student_enrollment WHERE course_no= 'CS180')

SELECT s.*
FROM students s LEFT JOIN student_enrollment se
ON s.student_no = se.student_no 
GROUP BY s.student_no, s.student_name, s.age 
HAVING MAX(CASE 
				WHEN se.course_no = 'CS180'
				THEN 1 ELSE 0 
		   END) = 0
	
--P2 - Write a SQL query to retrieve all students who are enrolled in either 'CS110' or 'CS107', but not in both.
SELECT s.*
FROM students s, student_enrollment se
WHERE s.student_no = se.student_no
AND se.course_no IN ('CS110', 'CS107')
AND s.student_no NOT IN ( SELECT a.student_no
                          FROM student_enrollment a, student_enrollment b
                          WHERE a.student_no = b.student_no
                          AND a.course_no = 'CS110'
                          AND b.course_no = 'CS107')
						  
SELECT * 
FROM students
WHERE student_no IN (SELECT student_no FROM student_enrollment WHERE (course_no= 'CS110' OR  course_no= 'CS107') AND NOT (course_no= 'CS110' AND  course_no= 'CS107'))

SELECT s.*
FROM students s, student_enrollment se
WHERE s.student_no = se.student_no
GROUP BY s.student_no, s.student_name, s.age
HAVING SUM(CASE WHEN se.course_no IN ('CS110', 'CS107')
           THEN 1 ELSE 0 END ) = 1

--P3 - Write a SQL query to retrieve all students who are enrolled only in the course 'CS220' and not in any other courses. 
SELECT s.* 
FROM students s, student_enrollment se 
WHERE s.student_no = se.student_no 
AND s.student_no NOT IN (SELECT student_no FROM student_enrollment WHERE course_no != 'CS220') 

SELECT s.*
FROM students s, student_enrollment se1,
(SELECT student_no FROM student_enrollment
      GROUP BY student_no
      HAVING COUNT(*) = 1) se2
WHERE s.student_no = se1.student_no
AND se1.student_no = se2.student_no
AND se1.course_no = 'CS220'

--P4 - Write a SQL query to retrieve students who are enrolled in 2 or fewer courses. 
SELECT s.* FROM students s, student_enrollment se
WHERE s.student_no = se.student_no
GROUP BY s.student_no, s.student_name, s.age
HAVING COUNT(*) <= 2

--P5 - Write a SQL query to retrieve students who are among the top two oldest in terms of age.
SELECT s.* 
FROM students s
WHERE 2 >= (SELECT COUNT(*) FROM students s2 WHERE s2.age < s.age)
--Challenging Puzzles
