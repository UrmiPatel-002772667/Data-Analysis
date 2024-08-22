# Introduction to SQL

**SQL (Structured Query Language)** is a domain-specific language used to manage and manipulate relational databases. It is the standard language for interacting with relational database management systems (RDBMS) and is essential for querying, updating, and managing data.

## Key Aspects of SQL:
- **Function:** SQL is used for managing relational databases by providing commands for data definition, data manipulation, and data control.
- **Standards:** SQL is standardized by organizations such as ANSI (American National Standards Institute) and ISO (International Organization for Standardization).
- **Use Cases:** Common use cases include querying data, updating records, creating and modifying database structures, and controlling access to data.
- **Inception:** SQL was first developed at IBM in the 1970s for the purpose of managing data in the System R project.
- **Standardization:** Over time, SQL has evolved and been standardized to ensure compatibility across different database systems.
- **Evolutions:** SQL has undergone several updates and revisions, leading to new versions with additional features and optimizations.
- **Variations:** Although SQL is standardized, various RDBMSs like MySQL, PostgreSQL, Oracle, and Microsoft SQL Server implement their own variations and extensions of SQL.

# Data Management and Querying

SQL is designed to manage data effectively in relational databases. It allows for structured querying and data retrieval, which are fundamental operations in any database system. The language is divided into several sub-languages, each serving a specific purpose in database management.

## SQL Sub-Languages

1. **DDL (Data Definition Language):**
   - DDL is used to define the structure of a database. It includes commands that create, alter, and drop database objects such as tables, indexes, and views.
   - **Key Commands:**
     - `CREATE`: Defines new tables, indexes, or views.
     - `ALTER`: Modifies the structure of an existing database object.
     - `DROP`: Deletes tables, indexes, or views.
     - `TRUNCATE`: Removes all rows from a table without deleting the table structure.
   - **Role in Database Design:** DDL is crucial during the physical design phase of database development, where the database schema is defined.

2. **DML (Data Manipulation Language):**
   - DML is used for data manipulation within the database. It includes commands that insert, update, delete, and retrieve data from tables.
   - **Key Commands:**
     - `INSERT`: Adds new records to a table.
     - `UPDATE`: Modifies existing records.
     - `DELETE`: Removes records from a table.
     - `SELECT`: Retrieves data from one or more tables.
   - **Role in Database Implementation:** DML is used during the implementation phase to populate the database and manage ongoing data operations.

3. **DCL (Data Control Language):**
   - DCL is used to control access to data in the database. It includes commands that grant or revoke privileges to users.
   - **Key Commands:**
     - `GRANT`: Assigns privileges to users or roles.
     - `ADD`: Add privileges to users or roles.
     - `REVOKE`: Removes privileges from users or roles.
   - **Role in Database Maintenance:** DCL is essential for maintaining security and enforcing access control policies.

![image](https://github.com/user-attachments/assets/a0756589-efcd-494a-ac5c-0b3bbe4350a2)

![image](https://github.com/user-attachments/assets/45b0537e-a49a-445f-9d67-63f553362c43)

## Types of SQL Operations

### 1. Adding, Modifying, and Dropping Elements

**Adding Elements:**
- Use the `INSERT` statement to add rows to a table.
  - **No column specification:** Insert values without specifying columns.
  - **With column specification:** Insert values specifying columns.
  - **Table with identity column:** Insert values into a table that has an auto-incrementing identity column.

**Example:**
```sql
INSERT INTO CUSTOMER VALUES(value1, value2, value3);
```

**Modifying Elements:**
- Use the `ALTER TABLE` statement to modify the structure of an existing table.

**Example:**
```sql
ALTER TABLE table_name ALTER COLUMN column_name NEW_DATATYPE;
```
**Renaming a Table:**
- Use the `SP_RENAME` stored procedure to rename a table.

**Example:**
```sql
EXEC SP_RENAME 'old_table_name', 'new_table_name';
```

**Dropping Elements:**
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
  **Example:**
```sql
SELECT column1, column2 FROM table_name;
```
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
