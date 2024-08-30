# Normalization

Normalization is a critical process in database design used to eliminate redundancy and dependency by organizing fields and table relationships.

### Purpose of Normalization
- Normalize the database to improve the logical design so that it satisfies specific constraints, avoids unnecessary duplication of data, and reduces anomalies.
- Decomposing relations with anomalies to produce smaller, well-structured relations that meet desired standards of data integrity.

### Well-Structured Relations

- Ensures that no unnecessary duplication of data exists within the database.
- Allows users to insert, delete, and update rows without causing inconsistencies or violating data integrity.
- The goal is to prevent insertion, modification, and deletion anomalies that could lead to incorrect or inconsistent data.

### Types of Anomalies

1. **Insertion Anomalies:**
   - Occur when certain data cannot be inserted into the database without the presence of other data.

2. **Modification Anomalies:**
   - Occur when changes to data require multiple updates, leading to potential inconsistencies.

3. **Deletion Anomalies:**
   - Occur when the deletion of certain data inadvertently causes the loss of additional data that should have been retained.

## Functional Dependencies

Functional dependencies are a fundamental concept in normalization, defining the relationship between attributes within a relation.

### Key Concepts

1. **Value Dependency:**
   - The value of one attribute determines the value of another attribute.
     
2. **Candidate Key:**
   - A unique identifier for a relation. It is an attribute, or a combination of attributes, that uniquely identifies each record in a table.

3. **Non-Key Fields:**
   - Each non-key field in a relation should be functionally dependent on every candidate key. This dependency ensures that the relation is well-structured and minimizes redundancy.

## Steps of Normalization

![image](https://github.com/user-attachments/assets/302d771a-5c9f-4dfd-bdba-5f85acdff766)

# Database Normalization: First, Second, and Third Normal Forms

Database normalization is a process used to organize a database into tables and columns to reduce data redundancy and improve data integrity. The process involves applying a series of normal forms, each with specific rules and criteria. Below are detailed explanations of the First, Second, and Third Normal Forms (1NF, 2NF, and 3NF).

## First Normal Form (1NF)
  A relation is in First Normal Form (1NF) if it satisfies the following conditions:
- **No Repeating Groups:** The relation does not contain repeating groups. In other words, each table cell contains only a single value, and each record is unique.
- **Primary Key:** A primary key has been defined that uniquely identifies each row in the relation.

### Key Characteristics:
- **Atomicity:** Every column in a table must contain atomic values, meaning each value is indivisible.
- **Unique Rows:** Each row in the table must be uniquely identifiable by the primary key.
- **Single Fact:** There is only a single fact at the intersection of each row and column.

### Example:
# Invoice Data (Pine Valley Furniture Company)

## Original Invoice Data (Before 1NF)

The following table represents the original invoice data with repeating groups, which is not yet in First Normal Form (1NF).

| _OrderID_ | Order Date   | Customer ID | Customer Name     | Customer Address | _ProductID_ | Product Description | Product Finish | Product StandardPrice | Ordered Quantity |
|---------|--------------|-------------|-------------------|------------------|-----------|----------------------|----------------|------------------------|------------------|
| 1006    | 10/24/2018   | 2           | Value Furniture   | Plano, TX        | 7         | Dining Table         | Natural Ash    | 800.00                 | 2                |
|     |    |            |    |         | 5         | Writer’s Desk        | Cherry         | 325.00                 | 2                |
|     |    |            |    |         | 4         | Entertainment Center | Natural Maple  | 650.00                 | 1                |
| 1007    | 10/25/2018   | 6           | Furniture Gallery | Boulder, CO      | 11        | 4-Dr Dresser         | Oak            | 500.00                 | 4                |
|     |    |            |  |       | 4         | Entertainment Center | Natural Maple  | 650.00                 | 3                |

## Invoice Relation (1NF)

The following table represents the invoice data after being transformed into First Normal Form (1NF). In 1NF, the data is organized into a tabular format with no repeating groups, and each cell contains only atomic values.

| _OrderID_ | Order Date   | Customer ID | Customer Name     | Customer Address | _ProductID_ | Product Description | Product Finish | Product StandardPrice | Ordered Quantity |
|---------|--------------|-------------|-------------------|------------------|-----------|----------------------|----------------|------------------------|------------------|
| 1006    | 10/24/2018   | 2           | Value Furniture   | Plano, TX        | 7         | Dining Table         | Natural Ash    | 800.00                 | 2                |
| 1006    | 10/24/2018   | 2           | Value Furniture   | Plano, TX        | 5         | Writer’s Desk        | Cherry         | 325.00                 | 2                |
| 1006    | 10/24/2018   | 2           | Value Furniture   | Plano, TX        | 4         | Entertainment Center | Natural Maple  | 650.00                 | 1                |
| 1007    | 10/25/2018   | 6           | Furniture Gallery | Boulder, CO      | 11        | 4-Dr Dresser         | Oak            | 500.00                 | 4                |
| 1007    | 10/25/2018   | 6           | Furniture Gallery | Boulder, CO      | 4         | Entertainment Center | Natural Maple  | 650.00                 | 3                |

## Second Normal Form (2NF)

**Definition:**  
A relation is in Second Normal Form (2NF) if it meets the following criteria:
- **First Normal Form:** The relation must already be in 1NF.
- **Full Functional Dependency:** Every non-key attribute must be fully functionally dependent on the entire primary key. In other words, there should be no partial dependency of any column on the primary key.

### Key Characteristics:
- **Eliminate Partial Dependencies:** If an attribute depends only on a part of the composite primary key, it should be moved to a new table.
- **New Relations:** Create a new relation for each primary key attribute (or combination of attributes) that is a determinant in a partial dependency.

### Example:

# Functional Dependency and Normalization for INVOICE Data

## Functional Dependency Diagram

The functional dependency diagram illustrates the relationships between attributes in the INVOICE table, highlighting both full and partial dependencies. Understanding these dependencies is critical for normalizing the database to reduce redundancy and improve data integrity.

### Full Dependency
- Attributes like `OrderDate`, `CustomerID`, `CustomerName`, and `CustomerAddress` depend entirely on the `OrderID`, forming a full dependency.

### Transitive Dependencies
- Transitive dependencies exist when an attribute depends on another non-primary key attribute rather than directly on the primary key. For example, `CustomerName` and `CustomerAddress` depend on `CustomerID`, which in turn depends on `OrderID`.

### Partial Dependencies
- Partial dependencies occur when non-key attributes depend on only a part of a composite primary key. In this case, attributes like `ProductDescription`, `ProductFinish`, and `ProductStandardPrice` depend only on `ProductID` and not on the full composite key (`OrderID`, `ProductID`).

![image](https://github.com/user-attachments/assets/8ca3b587-071d-458b-bbf3-9c21f9fdaa12)

## Removing Partial Dependencies

To eliminate partial dependencies and achieve Third Normal Form (3NF), the original INVOICE table is decomposed into smaller, well-structured relations. This process removes redundancy and ensures that each relation contains only attributes that are fully dependent on the primary key.

### Resulting Tables After Normalization

#### 1. ORDER LINE (3NF)
This table handles the relationship between orders and products, ensuring that each record is uniquely identified by the composite primary key (`OrderID`, `ProductID`).

| Attribute         | Key Type       |
|-------------------|----------------|
| OrderID           | Primary Key (Composite) |
| ProductID         | Primary Key (Composite) |
| OrderedQuantity   | Non-Key Attribute |

#### 2. PRODUCT (3NF)
This table stores product details and ensures that each product is uniquely identified by `ProductID`, with no redundant data.

| Attribute           | Key Type       |
|---------------------|----------------|
| ProductID           | Primary Key    |
| ProductDescription  | Non-Key Attribute |
| ProductFinish       | Non-Key Attribute |
| ProductStandardPrice| Non-Key Attribute |

#### 3. CUSTOMER ORDER (2NF)
This table represents the customer order data, eliminating partial dependencies and ensuring that transitive dependencies are properly managed.

| Attribute         | Key Type       |
|-------------------|----------------|
| OrderID           | Primary Key    |
| OrderDate         | Non-Key Attribute |
| CustomerID        | Non-Key Attribute |
| CustomerName      | Non-Key Attribute (dependent on CustomerID) |
| CustomerAddress   | Non-Key Attribute (dependent on CustomerID) |

## Third Normal Form (3NF)

**Definition:**  
A relation is in Third Normal Form (3NF) if it satisfies the following conditions:
- **Second Normal Form:** The relation must already be in 2NF.
- **No Transitive Dependencies:** There should be no transitive dependencies for non-prime attributes. A transitive dependency occurs when a non-key attribute depends on another non-key attribute rather than depending directly on the primary key.

### Key Characteristics:
- **Eliminate Transitive Dependencies:** Move attributes that depend on other non-key attributes to a new relation.
- **New Relations:** Create a new relation for each non-key attribute (or set of attributes) that is a determinant. The original relation retains the primary key as a foreign key to maintain relationships.

### Example:

## ORDER Table (3NF)

| Attribute   | Key Type       |
|-------------|----------------|
| OrderID     | Primary Key    |
| OrderDate   | Non-Key Attribute |
| CustomerID  | Foreign Key    |

## CUSTOMER Table (3NF)

| Attribute         | Key Type       |
|-------------------|----------------|
| CustomerID        | Primary Key    |
| CustomerName      | Non-Key Attribute |
| CustomerAddress   | Non-Key Attribute |
