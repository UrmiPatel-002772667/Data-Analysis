# Advanced SQL Techniques

Advanced SQL techniques are essential for efficiently managing complex queries and data manipulations.

## **Filtering and Conditions**

Filtering and conditions in SQL are critical for narrowing down the data to specific records that meet particular criteria. The following are the key methods to apply filtering and conditions in SQL:

- **Filtering with WHERE Clause:**
  - The `WHERE` clause is used to filter records based on specified conditions. It is applied to limit the data retrieved by a `SELECT`, `UPDATE`, `DELETE`, or `INSERT` statement.
  - Example:
    ```sql
    SELECT * FROM Employees WHERE Country = 'USA';
    ```
    This query retrieves only the records where the country is 'USA'.

- **Combining Conditions with AND and OR:**
  - The `AND` operator is used to combine multiple conditions, where all conditions must be true for the records to be selected.
  - Example:
    ```sql
    SELECT * FROM Employees WHERE Country = 'USA' AND Department = 'Sales';
    ```
    The `OR` operator is used to select records if any of the conditions separated by `OR` is true.
  - Example:
    ```sql
    SELECT * FROM Employees WHERE Country = 'USA' OR Department = 'Sales';
    ```
  - Parentheses are necessary to group conditions logically when combining AND and OR to ensure the query returns the desired results.
  - **Logical Inconsistencies:** Using AND with mutually exclusive conditions (e.g., department = 'sports' AND department = 'tools') results in no records being returned because a single record cannot satisfy both conditions.

- **Using NOT Operator:**
  - The `NOT` operator negates a condition, returning rows where the condition is not true.
  - SQL provides several ways to filter for non-matching values, including !=, <>, and NOT.
  - Example:
    ```sql
    SELECT * FROM Employees WHERE NOT Country = 'USA';
    ```
    This query retrieves all employees who are not located in the 'USA'.

- **Using IN Operator:**
  - The `IN` operator allows you to specify multiple values in a `WHERE` clause, filtering the records based on whether a specified column matches any value in a list.
  - Example:
    ```sql
    SELECT * FROM Employees WHERE Country IN ('USA', 'Canada', 'UK');
    ```
    This query retrieves all employees who are located in either 'USA', 'Canada', or 'UK'.

- **Range Filtering with BETWEEN:**
  - The `BETWEEN` operator filters records within a specified range of values, including the boundary values.
  - Example:
    ```sql
    SELECT * FROM Employees WHERE Salary BETWEEN 50000 AND 100000;
    ```
    This query retrieves employees whose salary is between 50,000 and 100,000 inclusive.

## **SQL Clauses for Query Customization**

- **ORDER BY Clause**
  - The `ORDER BY` clause is used to sort the results of a query based on one or more columns. Sorting can be done in ascending or descending order, which helps organize the data in a meaningful way.

  - **Ascending Order:** By default, the `ORDER BY` clause sorts the results in ascending order. This means the smallest values will appear first. The keyword `ASC` can be explicitly used, though it's not necessary since ascending is the default behavior.
  - **Descending Order:** To sort the results in descending order, use the keyword `DESC`. This will display the largest values first.
  
  - **Example:**
    ```sql
    SELECT * FROM Employees ORDER BY LastName ASC;
    ```
    This query retrieves all employees and sorts them alphabetically by their last name in ascending order.
    
    ```sql
    SELECT * FROM Employees ORDER BY Salary DESC;
    ```
    This query sorts employees by salary in descending order, showing the highest-paid employees first.

- **DISTINCT Clause**
  - The `DISTINCT` clause is used to eliminate duplicate rows from the result set. When a specific column or a set of columns are selected with `DISTINCT`, the query returns only unique values, making it particularly useful for identifying unique records within the database.

  - **Example:**
    ```sql
    SELECT DISTINCT Country FROM Customers;
    ```
    This query retrieves a list of unique countries from the `Customers` table, removing any duplicate country names.

-  **LIMIT and FETCH FIRST Clauses**
  - Both `LIMIT` and `FETCH FIRST` clauses are used to control the number of rows returned by a query, which is especially useful when dealing with large datasets or when pagination is required in applications.

  - **LIMIT:** The `LIMIT` clause restricts the number of rows returned in the result set to a specified number.
  
  - **Example:**
    ```sql
    SELECT * FROM Products LIMIT 10;
    ```
    This query retrieves the first 10 rows from the `Products` table.

  - **FETCH FIRST:** The `FETCH FIRST n ROWS ONLY` clause serves a similar purpose as `LIMIT`. It’s often used in databases that do not support the `LIMIT` clause.

  - **Example:**
    ```sql
    SELECT * FROM Products FETCH FIRST 10 ROWS ONLY;
    ```
    This query also retrieves the first 10 rows from the `Products` table.

  - These clauses are interchangeable depending on the SQL dialect, but both achieve the same outcome: limiting the query results to a manageable size.

- **Column Aliases**
  - Column aliases are used to rename columns in the output of a query, providing more readable or meaningful names in the result set. The `AS` keyword is used to specify the alias.
  
  - **Example:**
  ```sql
  SELECT FirstName AS "First Name", LastName AS "Last Name" FROM Employees;
  ```
  In this query, the `FirstName` and `LastName` columns are renamed as "First Name" and "Last Name", respectively, in the result set.

## **Data Manipulation**

Data manipulation in SQL involves altering and formatting data within queries without changing the underlying data in the database. Key techniques include using string functions, Boolean expressions, and various SQL functions for precise data manipulation:

- **String Functions in SQL:**
  - SQL provides several functions to manipulate string data. These include:
  - **UPPER:**
    - Converts all characters in a string to uppercase.
    - Example:
      ```sql
      SELECT UPPER(FirstName) FROM Employees;
      ```
      This query converts all employee first names to uppercase.
    
  - **LOWER:**
    - Converts all characters in a string to lowercase.
    - Example:
      ```sql
      SELECT LOWER(FirstName) FROM Employees;
      ```
      This query converts all employee first names to lowercase.
      
  - **LENGTH:**
    - Returns the number of characters in a string.
    - Example:
      ```sql
      SELECT LENGTH(FirstName) FROM Employees;
      ```
      This query returns the length of each employee's first name.
      
  - **TRIM:**
    - Removes leading and trailing spaces from a string.
    - Example:
      ```sql
      SELECT TRIM(FirstName) FROM Employees;
      ```
      This query trims any unnecessary spaces around employee first names.
      
  - **CONCATENATION:**
    - Combines two or more strings into one.
    - Example:
      ```sql
      SELECT CONCAT(FirstName, ' ', LastName) AS FullName FROM Employees;
      SELECT FirstName || ' ' || LastName AS FullName FROM Employees;
      ```
      This query combines the first and last names of employees into a single full name.

- **Boolean Expressions in SQL:**
  - Boolean expressions are used in SQL to evaluate conditions as `TRUE` or `FALSE`. They are essential in `WHERE` clauses and when filtering data.
  - Example:
    ```sql
    SELECT * FROM Employees WHERE Salary > 50000 AND Department = 'IT';
    ```
    This query retrieves all employees in the 'IT' department with a salary greater than 50,000.

- **Using Substrings and Replace in SQL:**
  - **SUBSTRING:** Extracts a part of a string from a specified position.
    - Example:
      ```sql
      SELECT SUBSTRING(FirstName, 1, 3) FROM Employees;
      ```
      This query extracts the first three characters of each employee's first name.
      
  - **REPLACE:** Replaces occurrences of a specified substring with another substring.
    - Example:
      ```sql
      SELECT REPLACE(Department, 'IT', 'Information Technology') FROM Employees;
      ```
      This query replaces 'IT' with 'Information Technology' in the department names.

  - **POSITION:** Finds the position of a specified character or substring within a string. This can be useful for extracting specific parts of a string.
    - Example:
      ```sql
      SELECT POSITION('@', in email) FROM Employees;
      ```
      Find the position of "@" in an email address.

- **COALESCE Function:**
  - The `COALESCE` function returns the first non-null value in a list of arguments.
  - Example:
    ```sql
    SELECT COALESCE(Email, 'No Email Provided') FROM Employees;
    ```
    This query returns the email of each employee, or 'No Email Provided' if the email is null.

## **Grouping and Aggregation**

Grouping and aggregation are powerful techniques in SQL that allow you to summarize data and extract meaningful insights by grouping rows that share common values and applying aggregate functions:

- **GROUP BY Clause:**
  - The `GROUP BY` clause is used to arrange identical data into groups. This is often combined with aggregate functions like `SUM`, `COUNT`, `AVG`, `MIN`, and `MAX`.
  - Example:
    ```sql
    SELECT Department, COUNT(*) FROM Employees GROUP BY Department;
    ```
    This query groups employees by department and counts the number of employees in each department.

- **HAVING Clause:**
  - The `HAVING` clause is used to filter groups based on a condition, similar to the `WHERE` clause but used with aggregate functions.
  - Example:
    ```sql
    SELECT Department, COUNT(*) FROM Employees GROUP BY Department HAVING COUNT(*) > 10;
    ```
    This query returns only departments with more than 10 employees.

- **GROUPING SETS:**
  - The `GROUPING SETS` clause is an advanced feature that allows for specifying multiple groupings in a single query, offering greater flexibility in reporting.
  - Example:
    ```sql
    SELECT Department, Country, COUNT(*) FROM Employees GROUP BY GROUPING SETS ((Department), (Country), (Department, Country));
    ```
   This query provides counts of employees by department, by country, and by both department and country.
