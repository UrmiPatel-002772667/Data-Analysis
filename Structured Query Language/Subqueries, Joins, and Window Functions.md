# Subqueries, Joins, and Window Functions

**Aliasing Columns and Tables:** Aliases can make SQL queries more concise. For instance, instead of typing out full table names, you can assign short names (e.g., E for the employees table and D for the departments table).

## **Subqueries in SQL**

Subqueries are queries nested within another SQL query, allowing you to perform operations in a step-by-step manner. Subqueries can be used in various parts of a SQL statement, providing a flexible way to build more complex queries.

### Subqueries in WHERE Clause:
  - **Purpose:** Subqueries in the `WHERE` clause allow you to filter results based on the outcome of another query.
  - **Example:**
    ```sql
    SELECT * FROM Employees WHERE DepartmentID = (SELECT DepartmentID FROM Departments WHERE DepartmentName = 'Sales');
    ```
    This query retrieves all employees who work in the 'Sales' department by using a subquery to find the corresponding `DepartmentID`.
    
### Subqueries in FROM Clause:
  - **Purpose:** Subqueries in the `FROM` clause treat the result of the subquery as a temporary table, allowing you to perform further operations on it.
  - **Example:**
    ```sql
    SELECT sub.DepartmentID, COUNT(*) FROM (SELECT DepartmentID FROM Employees) AS sub GROUP BY sub.DepartmentID;
    ```
    This query counts the number of employees in each department by first creating a temporary result set of department IDs.
  - Assigning aliases to subqueries in the FROM clause is crucial for referencing them correctly in the outer query.
    
### Subqueries in SELECT Clause:
  - **Purpose:** Subqueries in the `SELECT` clause allow you to compute a value for each row in the result set.
  - **Example:**
    ```sql
    SELECT EmployeeName, (SELECT MAX(Salary) FROM Employees WHERE DepartmentID = e.DepartmentID) AS MaxSalaryInDept FROM Employees e;
    ```
  - This query shows the maximum salary in each employee's department alongside the employee's name.

### Correlated Subqueries:
  - **Purpose:** A correlated subquery references columns from the outer query, making it dependent on the outer query for its execution. It runs once for each row in the outer query so it can be slow.
  - **Example:**
    ```sql
    SELECT EmployeeName FROM Employees e WHERE Salary > (SELECT AVG(Salary) FROM Employees WHERE DepartmentID = e.DepartmentID);
    ```
  - This query retrieves employees whose salary is above the average salary of their department.

## ANY and ALL Operators

### ANY:
  Returns `TRUE` if **at least one** value from the subquery meets the specified condition. It's used when you need to check if a value satisfies **one or more conditions** in a list.  
  - **Example:**
    ```sql
    SELECT EmployeeName, Salary
    FROM Employees
    WHERE Salary > ANY (SELECT Salary FROM Employees WHERE DepartmentID = 2);
    ```
  
### ALL: 
  Returns `TRUE` if **every value** from the subquery meets the specified condition. This is used when you want to ensure that a value satisfies **all conditions** in a list.
  - **Example:**
    ```sql
    SELECT EmployeeName, Salary
    FROM Employees
    WHERE Salary > ALL (SELECT Salary FROM Employees WHERE DepartmentID = 2);
    ```

## Conditional Expressions with CASE:
  The **CASE** statement allows you to implement conditional logic directly within SQL queries, similar to an `if-else` structure in programming languages.

### Syntax:
```sql
CASE 
    WHEN condition THEN result
    WHEN condition THEN result
    ELSE result
END
```

```sql
SELECT EmployeeName, Salary,
  CASE 
    WHEN Salary < 100000 THEN 'Underpaid'
    WHEN Salary BETWEEN 100000 AND 160000 THEN 'Paid Well'
    WHEN Salary > 160000 THEN 'Executive'
  END AS Category
FROM Employees;
```

## Transposing with CASE and SUM:

1. **CASE Statement**: This is used to filter or categorize rows based on specific conditions, creating dynamic columns for each category.
2. **SUM() Function**: Used to aggregate the values for each condition created by the CASE statement.

**Example:**
| Product   | Category  | Quantity |
|-----------|-----------|----------|
| Product A | Electronics| 5        |
| Product B | Electronics| 3        |
| Product C | Furniture  | 7        |
| Product D | Furniture  | 2        |

You can transpose this data to show the total quantity sold per category in columns:

```sql
SELECT 
    SUM(CASE WHEN Category = 'Electronics' THEN Quantity ELSE 0 END) AS Electronics,
    SUM(CASE WHEN Category = 'Furniture' THEN Quantity ELSE 0 END) AS Furniture
FROM sales;
```

**Result**:

| Electronics | Furniture |
|-------------|-----------|
| 8           | 9         |

### Benefits:

- This method allows you to **dynamically create columns** based on categorical data.
- It is helpful for reporting and summarizing data in a more visual format, reducing the need for post-query transformations.
  
## Joins in SQL

Joins are used to combine rows from two or more tables based on a related column between them. They are fundamental for querying data across multiple tables.

### INNER JOIN:
  - **Purpose:** Returns only the rows where there is a match in both tables.
  - **Example:**
    ```sql
    SELECT Employees.EmployeeName, Departments.DepartmentName FROM Employees INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
    ```
  - This query retrieves employees along with their respective department names, but only for those departments where there is a matching record.

### LEFT JOIN:
  - **Purpose:** Returns all rows from the left table, and the matched rows from the right table. If there is no match, NULL values are returned for columns from the right table.
  - **Example:**
    ```sql
    SELECT Employees.EmployeeName, Departments.DepartmentName FROM Employees LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
    ```
  - This query retrieves all employees, showing their department names if they belong to a department, or NULL if they don’t.

### RIGHT JOIN:
  - **Purpose:** Returns all rows from the right table, and the matched rows from the left table. If there is no match, NULL values are returned for columns from the left table.
  - **Example:**
    ```sql
    SELECT Employees.EmployeeName, Departments.DepartmentName FROM Employees RIGHT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
    ```
  - This query retrieves all departments, showing the names of employees who belong to them, or NULL if no employees are associated.

### FULL OUTER JOIN:
  - **Purpose:** Returns all rows when there is a match in either left or right table. Rows with no match in either table will contain NULL values for the columns from the other table.
  - **Example:**
    ```sql
    SELECT Employees.EmployeeName, Departments.DepartmentName FROM Employees FULL OUTER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
    ```
  - This query retrieves all employees and all departments, with NULLs where there is no match.

### Cartesian Products and CROSS JOIN:
  - **Purpose:** A Cartesian product combines all rows from one table with all rows from another table. This occurs when there is no explicit join condition. `CROSS JOIN` explicitly performs this operation.
  - **Example:**
    ```sql
    SELECT * FROM Employees CROSS JOIN Departments;
    ```
  - This query produces a Cartesian product, resulting in every combination of rows between the two tables.

## **UNION, UNION ALL, and EXCEPT Clauses**

These clauses are used to combine the results of two or more SELECT queries.

### UNION:
  - **Purpose:** Combines the result sets of two queries and removes duplicates.
  - **Example:**
    ```sql
    SELECT EmployeeName FROM Employees WHERE DepartmentID = 1 UNION SELECT EmployeeName FROM Employees WHERE DepartmentID = 2;
    ```
  - This query retrieves a list of unique employee names from departments 1 and 2.

### UNION ALL:
  - **Purpose:** Similar to `UNION`, but includes duplicates.
  - **Example:**
    ```sql
    SELECT EmployeeName FROM Employees WHERE DepartmentID = 1 UNION ALL SELECT EmployeeName FROM Employees WHERE DepartmentID = 2;
    ```
  - This query retrieves all employee names from departments 1 and 2, including duplicates.

### EXCEPT:
  - **Purpose:** Returns the rows from the first query that are not present in the second query.
  - **Example:**
    ```sql
    SELECT EmployeeName FROM Employees WHERE DepartmentID = 1 EXCEPT SELECT EmployeeName FROM Employees WHERE DepartmentID = 2;
    ```
  - This query retrieves employee names in department 1 that are not in department 2.

## **Views in SQL**

Views are virtual tables based on the result set of a SQL query. They allow for simplified data retrieval by encapsulating complex queries into a single table-like structure.

- **Purpose:** Views provide a way to simplify complex queries, secure data access, and present data in a specific format without altering the underlying tables.
- **Example:**
  ```sql
  CREATE VIEW EmployeeDepartmentView AS SELECT Employees.EmployeeName, Departments.DepartmentName FROM Employees INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
  ```
  This view simplifies access to employee and department data, combining information from both tables into a single view.

| **Views** | **Inline Views** |
|-----------|------------------|
| Stored in the database. | Not stored in the database. |
| Reusable across multiple queries. | Used within a single query. |
| Acts as a persistent object in the database, similar to tables. | Acts as a temporary table only during the execution of the query. |

## Handling Duplicates: Temporary Table Approach

In SQL, duplicate records can create issues in data analysis and integrity. One effective way to handle them is by creating a **temporary table**.

### Steps to Create and Manage a Temporary Table for Duplicates:

1. **Creating a Temporary Table**:
   You can create a temporary table (e.g., `dupes`) containing duplicate records. Temporary tables are stored in memory and will be automatically dropped after the session ends.

   ```sql
   CREATE TEMPORARY TABLE dupes AS
   SELECT * 
   FROM original_table 
   WHERE condition_for_duplicates;
   ```

2. **Identifying Duplicates**:
   To identify duplicates, you can use SQL functions like `COUNT()` in combination with the `GROUP BY` clause. This will highlight records that appear more than once:

   ```sql
   SELECT column1, column2, COUNT(*) 
   FROM dupes
   GROUP BY column1, column2
   HAVING COUNT(*) > 1;
   ```

3. **Removing Duplicates**:
   Once duplicates are identified, you can proceed to remove them. There are multiple strategies to achieve this, depending on the database you are using:

   - **Using `ROW_NUMBER()`**:
     You can utilize the `ROW_NUMBER()` window function to assign a unique rank to each row based on a specific ordering criterion and then delete the rows where the rank is greater than 1 (i.e., the duplicates):

     ```sql
     WITH ranked_dupes AS (
         SELECT *, ROW_NUMBER() OVER (PARTITION BY column1, column2 ORDER BY some_column) AS row_num
         FROM dupes
     )
     DELETE FROM ranked_dupes
     WHERE row_num > 1;
     ```

   - **Using `DISTINCT`**:
     Another simple approach is selecting unique records using the `DISTINCT` keyword to create a new table without duplicates:

     ```sql
     INSERT INTO new_table
     SELECT DISTINCT * 
     FROM dupes;
     ```

4. **Restoring Data**:
   After successfully identifying and removing duplicates in the temporary table, you can either update the original table with the cleaned data or merge it back as needed. Here’s an example using `INSERT` or `MERGE`:

   ```sql
   INSERT INTO original_table 
   SELECT * FROM dupes
   WHERE condition_to_filter_cleaned_data;
   ```

Here is an improved and more concise rewrite of the text covering SQL topics, including window functions, LEAD and LAG functions, and rollups and cubes.

---

## Window Functions

Window functions, also known as analytical functions, offer advanced data slicing and aggregation, providing more flexibility than traditional `GROUP BY` clauses.

### Key Features:
- **GROUP BY**: Aggregates data (e.g., counting employees by department) but combining non-aggregated columns requires subqueries.
- **OVER() Clause**: Simplifies this by allowing non-aggregated and aggregated columns without needing `GROUP BY`.
    - **Example:**
      ```sql
      COUNT(*) OVER(PARTITION BY department)
      ```
      counts employees per department while displaying individual records.
  
### PARTITION BY:
- Divides result sets into partitions (e.g., by department or region), enabling detailed, partitioned analysis within each group.
- **Example:**
    ```sql
    SELECT EmployeeName, Salary, RANK() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS RankInDepartment FROM Employees;
    ```
  This query ranks employees within their respective departments based on salary.

**Benefits:**
- Reduces complexity compared to correlated subqueries.
- Provides efficient solutions for resource-intensive queries.

### Window Framing

A **window** is a subset of data where an aggregation is computed, defined by `PARTITION BY` or `ORDER BY` clauses.

- **Examples:**
  **Running Total**: `SUM(salary) OVER (ORDER BY hire_date)` shows cumulative salary progression.
  **ROWS BETWEEN**: Computes adjacent rows' totals, e.g., `ROWS BETWEEN 1 PRECEDING AND CURRENT ROW`.

### Advanced Window Functions: 

These functions enable ranking, bucketing, and accessing specific values within partitions.

#### RANK:
  - **Purpose:** Assigns a rank to each row within a partition of a result set.
  - **Example:**
    ```sql
    SELECT EmployeeName, Salary, RANK() OVER (ORDER BY Salary DESC) AS SalaryRank FROM Employees;
    ```
    This query ranks all employees by their salary, with the highest salary receiving the highest rank.

#### NTILE:
  - **Purpose:** Divides rows into a specified number of approximately equal groups, and assigns a group number to each row.
  - **Example:**
    ```sql
    SELECT EmployeeName, Salary, NTILE(4) OVER (ORDER BY Salary DESC) AS Quartile FROM Employees;
    ```
    This query divides employees into four salary quartiles.

#### FIRST_VALUE:
  - **Purpose:** Returns the first value in a sorted partition.
  - **Example:**
    ```sql
    SELECT EmployeeName, Salary, FIRST_VALUE(Salary) OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS HighestSalary FROM Employees;
    ```
    This query returns the highest salary in each department, as the first value after sorting.

#### NTH_VALUE:
  - **Purpose:** Returns the nth value in a sorted partition.
  - **Example:**
    ```sql
    SELECT EmployeeName, Salary, NTH_VALUE(Salary, 2) OVER (ORDER BY Salary DESC) AS SecondHighestSalary FROM Employees;
    ```
    This query returns the second-highest salary from the employee list.


### LEAD and LAG Functions

These functions allow you to access data from a row relative to the current row, useful for comparing adjacent data points.

- **LEAD**: Accesses the next row’s value (e.g., “Next Salary”).
- **LAG**: Accesses the previous row’s value (e.g., “Previous Salary”).

**Use Cases:**
- **LEAD**: Finding the closest higher salary for each employee.
- **LAG**: Finding the closest lower salary within a partition (e.g., department).

**Example:**
    ```sql
    SELECT EmployeeName, Salary, LAG(Salary, 1) OVER (ORDER BY Salary) AS PreviousSalary FROM Employees;
    ```
This query shows the salary of the previous employee in the result set.

### Rollups and Cubes for Data Aggregation

**Rollups** and **Cubes** are extensions of the `GROUP BY` clause, offering flexible aggregation and summarization.

- **GROUPING SETS**: Display different groupings (e.g., by continent, country, city) in one query.
- **ROLLUP**: Produces hierarchical totals for combinations of columns (e.g., continent → country → city), including a grand total.
- **CUBE**: Shows all possible combinations of column groupings for full data summarization.

**Comparison**
- **ROLLUP**: Best for hierarchical aggregation.
- **CUBE**: Comprehensive, displaying every combination.

**Example**
```sql
SELECT Continent, Country, City, SUM(Units_Sold) AS Total_Units
FROM sales_data
GROUP BY ROLLUP (Continent, Country, City);
```
