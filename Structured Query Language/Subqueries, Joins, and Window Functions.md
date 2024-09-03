# Subqueries, Joins, and Window Functions

This section explores advanced SQL techniques that enhance the complexity and functionality of database queries. Subqueries, joins, and window functions are powerful tools for writing more dynamic and efficient SQL queries, enabling detailed data analysis and manipulation.

#### **Subqueries in SQL**

Subqueries are queries nested within another SQL query, allowing you to perform operations in a step-by-step manner. Subqueries can be used in various parts of a SQL statement, providing a flexible way to build more complex queries.

- **Subqueries in WHERE Clause:**
  - **Purpose:** Subqueries in the `WHERE` clause allow you to filter results based on the outcome of another query.
  - **Example:**
    ```sql
    SELECT * FROM Employees WHERE DepartmentID = (SELECT DepartmentID FROM Departments WHERE DepartmentName = 'Sales');
    ```
  - This query retrieves all employees who work in the 'Sales' department by using a subquery to find the corresponding `DepartmentID`.

- **Subqueries in FROM Clause:**
  - **Purpose:** Subqueries in the `FROM` clause treat the result of the subquery as a temporary table, allowing you to perform further operations on it.
  - **Example:**
    ```sql
    SELECT sub.DepartmentID, COUNT(*) FROM (SELECT DepartmentID FROM Employees) AS sub GROUP BY sub.DepartmentID;
    ```
  - This query counts the number of employees in each department by first creating a temporary result set of department IDs.

- **Subqueries in SELECT Clause:**
  - **Purpose:** Subqueries in the `SELECT` clause allow you to compute a value for each row in the result set.
  - **Example:**
    ```sql
    SELECT EmployeeName, (SELECT MAX(Salary) FROM Employees WHERE DepartmentID = e.DepartmentID) AS MaxSalaryInDept FROM Employees e;
    ```
  - This query shows the maximum salary in each employee's department alongside the employee's name.

- **Correlated Subqueries:**
  - **Purpose:** A correlated subquery references columns from the outer query, making it dependent on the outer query for its execution. It runs once for each row in the outer query.
  - **Example:**
    ```sql
    SELECT EmployeeName FROM Employees e WHERE Salary > (SELECT AVG(Salary) FROM Employees WHERE DepartmentID = e.DepartmentID);
    ```
  - This query retrieves employees whose salary is above the average salary of their department.

#### **Joins in SQL**

Joins are used to combine rows from two or more tables based on a related column between them. They are fundamental for querying data across multiple tables.

- **INNER JOIN:**
  - **Purpose:** Returns only the rows where there is a match in both tables.
  - **Example:**
    ```sql
    SELECT Employees.EmployeeName, Departments.DepartmentName FROM Employees INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
    ```
  - This query retrieves employees along with their respective department names, but only for those departments where there is a matching record.

- **LEFT JOIN:**
  - **Purpose:** Returns all rows from the left table, and the matched rows from the right table. If there is no match, NULL values are returned for columns from the right table.
  - **Example:**
    ```sql
    SELECT Employees.EmployeeName, Departments.DepartmentName FROM Employees LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
    ```
  - This query retrieves all employees, showing their department names if they belong to a department, or NULL if they don’t.

- **RIGHT JOIN:**
  - **Purpose:** Returns all rows from the right table, and the matched rows from the left table. If there is no match, NULL values are returned for columns from the left table.
  - **Example:**
    ```sql
    SELECT Employees.EmployeeName, Departments.DepartmentName FROM Employees RIGHT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
    ```
  - This query retrieves all departments, showing the names of employees who belong to them, or NULL if no employees are associated.

- **FULL OUTER JOIN:**
  - **Purpose:** Returns all rows when there is a match in either left or right table. Rows with no match in either table will contain NULL values for the columns from the other table.
  - **Example:**
    ```sql
    SELECT Employees.EmployeeName, Departments.DepartmentName FROM Employees FULL OUTER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
    ```
  - This query retrieves all employees and all departments, with NULLs where there is no match.

- **Cartesian Products and CROSS JOIN:**
  - **Purpose:** A Cartesian product combines all rows from one table with all rows from another table. This occurs when there is no explicit join condition. `CROSS JOIN` explicitly performs this operation.
  - **Example:**
    ```sql
    SELECT * FROM Employees CROSS JOIN Departments;
    ```
  - This query produces a Cartesian product, resulting in every combination of rows between the two tables.

#### **UNION, UNION ALL, and EXCEPT Clauses**

These clauses are used to combine the results of two or more SELECT queries.

- **UNION:**
  - **Purpose:** Combines the result sets of two queries and removes duplicates.
  - **Example:**
    ```sql
    SELECT EmployeeName FROM Employees WHERE DepartmentID = 1 UNION SELECT EmployeeName FROM Employees WHERE DepartmentID = 2;
    ```
  - This query retrieves a list of unique employee names from departments 1 and 2.

- **UNION ALL:**
  - **Purpose:** Similar to `UNION`, but includes duplicates.
  - **Example:**
    ```sql
    SELECT EmployeeName FROM Employees WHERE DepartmentID = 1 UNION ALL SELECT EmployeeName FROM Employees WHERE DepartmentID = 2;
    ```
  - This query retrieves all employee names from departments 1 and 2, including duplicates.

- **EXCEPT:**
  - **Purpose:** Returns the rows from the first query that are not present in the second query.
  - **Example:**
    ```sql
    SELECT EmployeeName FROM Employees WHERE DepartmentID = 1 EXCEPT SELECT EmployeeName FROM Employees WHERE DepartmentID = 2;
    ```
  - This query retrieves employee names in department 1 that are not in department 2.

#### **Views in SQL**

Views are virtual tables based on the result set of a SQL query. They allow for simplified data retrieval by encapsulating complex queries into a single table-like structure.

- **Purpose:** Views provide a way to simplify complex queries, secure data access, and present data in a specific format without altering the underlying tables.
- **Example:**
  ```sql
  CREATE VIEW EmployeeDepartmentView AS SELECT Employees.EmployeeName, Departments.DepartmentName FROM Employees INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
  ```
  This view simplifies access to employee and department data, combining information from both tables into a single view.

#### **Window Functions in SQL**

Window functions perform calculations across a set of table rows that are somehow related to the current row. They are used for running totals, ranking, and other complex calculations.

- **PARTITION BY:**
  - **Purpose:** Divides the result set into partitions and performs calculations on each partition separately.
  - **Example:**
    ```sql
    SELECT EmployeeName, Salary, RANK() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS RankInDepartment FROM Employees;
    ```
  - This query ranks employees within their respective departments based on salary.

- **RANK:**
  - **Purpose:** Assigns a rank to each row within a partition of a result set.
  - **Example:**
    ```sql
    SELECT EmployeeName, Salary, RANK() OVER (ORDER BY Salary DESC) AS SalaryRank FROM Employees;
    ```
  - This query ranks all employees by their salary, with the highest salary receiving the highest rank.

- **NTILE:**
  - **Purpose:** Divides rows into a specified number of approximately equal groups, and assigns a group number to each row.
  - **Example:**
    ```sql
    SELECT EmployeeName, Salary, NTILE(4) OVER (ORDER BY Salary DESC) AS Quartile FROM Employees;
    ```
  - This query divides employees into four salary quartiles.

- **FIRST_VALUE:**
  - **Purpose:** Returns the first value in a sorted partition.
  - **Example:**
    ```sql
    SELECT EmployeeName, Salary, FIRST_VALUE(Salary) OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS HighestSalary FROM Employees;
    ```
  - This query returns the highest salary in each department, as the first value after sorting.

- **NTH_VALUE:**
  - **Purpose:** Returns the nth value in a sorted partition.
  - **Example:**
    ```sql
    SELECT EmployeeName, Salary, NTH_VALUE(Salary, 2) OVER (ORDER BY Salary DESC) AS SecondHighestSalary FROM Employees;
    ```
  - This query returns the second-highest salary from the employee list.

- **LEAD and LAG Functions:**
  - **Purpose:** `LEAD` and `LAG` access data from the next and previous rows in the result set, respectively, allowing you to compare values in different rows.
  - **Example:**
    ```sql
    SELECT EmployeeName, Salary, LAG(Salary, 1) OVER (ORDER BY Salary) AS PreviousSalary FROM Employees;
    ```
  - This query shows the salary of the previous employee in the result set.

#### **Rollups and Cubes**

Rollups and cubes are extensions of the `GROUP BY` clause that allow for hierarchical and multi-dimensional aggregation.

- **Rollups:**
  - **Purpose:** Creates subtotals that roll up from the most detailed level to a grand total.
  - **Example:**
    ```
