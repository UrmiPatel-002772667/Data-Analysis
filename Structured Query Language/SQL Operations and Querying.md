
![image](https://github.com/user-attachments/assets/45b0537e-a49a-445f-9d67-63f553362c43)

## Types of SQL Operations

### Adding Elements:
- Use the `INSERT` statement to add rows to a table.
  - **No column specification:** Insert values without specifying columns.
  - **With column specification:** Insert values specifying columns.
  - **Table with identity column:** Insert values into a table that has an auto-incrementing identity column.

**Example:**
```sql
INSERT INTO CUSTOMER VALUES(value1, value2, value3);
```

### Modifying Elements:
- Use the `ALTER TABLE` statement to modify the structure of an existing table.

**Example:**
```sql
ALTER TABLE table_name ALTER COLUMN column_name NEW_DATATYPE;
```
### Renaming a Table:
- Use the `SP_RENAME` stored procedure to rename a table.

**Example:**
```sql
EXEC SP_RENAME 'old_table_name', 'new_table_name';
```

### Dropping Elements:
- Use the `DROP TABLE` statement to remove a table from the database.

**Example:**
```sql
DROP TABLE table_name;
```

## SQL Statements
**1. ALTER Statement**
- Modifies the structure of an existing table by adding, dropping, or altering columns.
**2. INSERT Statement**
- Adds new rows to a table.
**3. DROP Statement**
- Removes database objects, such as tables or indexes, from the database.
**4. DELETE Statement**
- Deletes rows from a table based on a specified condition.
**5. TRUNCATE Statement**
- Removes all rows from a table but preserves the table structure for future use.
**6. UPDATE Statement**
- Modifies existing data in a table.
**7. SELECT Statement**
- Retrieves data from one or more tables based on specified criteria.

## SQL Query Clauses
**1. SELECT**
- Specifies the columns to retrieve from a table or view.
**2. FROM**
- Specifies the table or tables from which to retrieve data.
**3. WHERE**
Filters rows based on a specified condition.
**4. GROUP BY**
- Groups rows that have the same values in specified columns into aggregated data.
**5. ORDER BY**
- Sorts the result set based on one or more columns.

**Example of a Full Query:**
```sql
SELECT column1, column2, COUNT(*)
FROM table_name
WHERE condition
GROUP BY column1
ORDER BY column2 DESC;
```

### Aggregate Functions:
- Aggregate functions perform calculations on a set of values and return a single value.

**COUNT**: Returns the number of rows that match a specified condition.
**SUM**: Returns the total sum of a numeric column.
**AVG**: Returns the average value of a numeric column.
**MIN**: Returns the smallest value in a set.
**MAX**: Returns the largest value in a set.

**Example:**
```sql
SELECT COUNT(*), SUM(column_name), AVG(column_name), MIN(column_name), MAX(column_name)
FROM table_name;
```

- **Scalar Aggregate:** Returns a single value from an SQL query that includes an aggregate function.
  **Example:**
  ```sql
  SELECT AVG(column_name) FROM table_name;
  ```
- **Vector Aggregate:** Returns multiple values from an SQL query that includes an aggregate function.
  **Example:**
  ```sql
  SELECT column_name, AVG(column_name)
  FROM table_name
  GROUP BY column_name;
  ```

