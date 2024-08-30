# Entity-Relationship Diagram Concepts

## Entities
An entity represents a person, place, object, event, or concept within the user environment that the organization wishes to maintain data about.

### Entity Types

1. **Strong Entity:**
   - An entity that can exist independently of other entity types.
   - Represented by a rectangle with a solid border.
     
![image](https://github.com/user-attachments/assets/b30a8b0e-d67e-4f82-bd69-b27253644a1a)

2. **Weak Entity:**
   - An entity that depends on a strong entity for its existence. It cannot be uniquely identified by its attributes alone.
   - Represented by a rectangle with a double border.
     
![image](https://github.com/user-attachments/assets/d8af8d98-60e2-41d8-b518-0778027f1975)

3. **Associative Entity:**
   - An entity that associates the instances of one or more entity types and contains attributes specific to the relationship.
   - Represented by a rounded rectangle.
     
![image](https://github.com/user-attachments/assets/a8826fcc-c5d2-4908-bd61-03c5ede43bad)

## Attributes

Attributes are properties or characteristics of an entity or relationship type. They provide important information that helps in defining and distinguishing different instances of entities or relationships.

### Classifications of Attributes

1. **Required**:  
   An attribute that must have a value for every entity (or relationship) instance with which it is associated.
   
   - **Identifier:** An attribute (or combination of attributes) whose value uniquely distinguishes instances of an entity type.
   - **Partial Identifier:** Used in weak entities to identify instances relative to a strong entity.
     
2. Optional:  
   An attribute that may not have a value for every entity.

3. Simple:  
   An attribute that cannot be broken down into smaller components that are meaningful to the organization.

4. Composite(,,):  
   An attribute that can be subdivided into smaller parts, each representing a more basic attribute.  
   Example: An address can be a composite attribute with components like street, city, state, and postal code.

5. Single-Valued:  
   An attribute that takes only one value for a given entity (or relationship) instance.

6. {Multi-Valued}:  
   An attribute that may take on more than one value for a given entity (or relationship) instance.  
   Example: An employee may have multiple skills.

7. Stored:  
   An attribute whose values are directly stored.

8. [Derived]:  
   An attribute whose values can be calculated from related attribute values.  
   Example: `Years Employed` can be derived from `Date Employed`.

9. **Candidate Identifier**:  
    An attribute that could potentially serve as a key, satisfying the requirements for being an identifier (e.g., phone number, email address).

10. {(Time-Stamping),,}:  
    An attribute that is both multivalued and composite, often used to track historical data.  
    Example: `Price History` of a product with attributes like `Effective Date` and `Price`.

## Relationships
A relationship is a link between entities that defines how they interact with each other. Relationships can also have attributes that provide more details about the interaction between entities.

### Relationship Degrees

Relationship degrees indicate the number of entities involved in a relationship:

1. **Unary:**
   - A relationship between instances of the same entity type.
   - Example: An employee supervising another employee.

![image](https://github.com/user-attachments/assets/d1eb9a82-653f-4446-978a-8a8f0741095e)

2. **Binary:**
   - A relationship between two different entity types.
   - Example: An employee works in a department.

![image](https://github.com/user-attachments/assets/d71eb26d-364b-4b36-a92a-c74ebcbdd036)

3. **Ternary:**
   - A relationship involving three different entity types.
   - Example: A supplier providing parts to a project.

![image](https://github.com/user-attachments/assets/fe5dbf7d-ad0b-458d-be7c-58ca27223fcb)

### Relationship Cardinality

Relationship cardinality defines the number of instances of one entity that can or must be associated with each instance of another entity:

1. **Mandatory One:** An entity must have exactly one related instance in another entity.

![image](https://github.com/user-attachments/assets/84cf6638-45da-4d46-a309-1719c493a4ea)

3. **Mandatory Many:** An entity must have one or more related instances in another entity.

![image](https://github.com/user-attachments/assets/7b954298-20dc-483d-97f4-3decc4ffa384)

4. **Optional One:** An entity may have zero or one related instance in another entity.

![image](https://github.com/user-attachments/assets/3fab78b8-429b-45d4-a927-e3dfece22b6e)

5. **Optional Many:** An entity may have zero or more related instances in another entity.

![image](https://github.com/user-attachments/assets/01915f6b-a8c3-4052-89c1-9ba8c6ea8fab)


# Enhanced Entity-Relationship (ER) Model
   The Enhanced ER Model increases expressiveness, improves data integrity, aids in better system design and maintenance, and offers increased flexibility and adaptability.

## Strong and Weak Entities Examples:
- *Book and a Copy of a Book*
- *Loan and Payments*
- *Customer and Address*

## Associative Entity

An associative entity serves both as an entity and as a relationship. It has several key characteristics:
- **Attributes:** An associative entity can have its own attributes.
- **Identifier:** It can have a unique identifier.

### Important Points:
- Relationships involving associative entities are typically **many-to-many**.
- Associative entities have **independent meanings** than the other entities involved in the relationship.
- Preferably, an associative entity should have a **unique identifier**, along with additional attributes.
- Associative entities may participate in relationships beyond those involving the original entities of the associated relationship.
- **Ternary relationships** should be **converted** to associative entities.

![image](https://github.com/user-attachments/assets/a99ca478-b6a4-4a1a-99f7-81e3d52ee04e)

## Key Constructs

### Subtype
A subgroup of entities within an entity type that is meaningful to the organization and shares common attributes or relationships distinct from other subgroups.

### Supertype
A generic entity type that has a relationship with one or more subtypes.

### Attribute Inheritance
A property where subtype entities inherit the values of all attributes and instances of all relationships of their supertype.

## Modeling Techniques

### Generalization
The process of defining a more general entity type from a set of more specialized entity types. (BOTTOM UP approach)

- **Inheritance**: A child entity type (subtype) inherits attributes and relationships from a parent entity type (supertype). 
- **Category Hierarchy**: A category hierarchy involves organizing entity types into a hierarchy, where more specialized categories (subtypes) are derived from more general categories (supertypes).
- **Role-based**: Entities are grouped based on the roles they play within a system. Different subtypes represent the various roles that an entity can assume, while the generalization process identifies the shared attributes and relationships among these roles. 
- **Time-based**: The process of categorizing entities based on temporal characteristics.
- **Location-based**: Entities are categorized based on geographic or spatial characteristics. It involves identifying common attributes across entities that belong to different locations and then generalizing these attributes into a supertype. 

![image](https://github.com/user-attachments/assets/df565409-d508-4430-95c9-74b144ed2232)

### Specialization
The process of defining one or more subtypes of the supertype and forming supertype/subtype relationships. (TOP DOWN approach)

- **Attribute Specialization**: Attribute specialization occurs when subtypes are created based on distinct attribute values that are not shared across all instances of the supertype.
- **Constraint Specialization**: Involves defining subtypes based on specific constraints that apply only to certain subsets of the supertype. 
- **Method Specialization**:  Involves differentiating subtypes based on the methods or operations they perform, which may vary from the supertype or other subtypes. 
- **Behavioral Specialization**: Involves creating subtypes based on differences in behavior that are specific to certain subsets of the supertype. 

![image](https://github.com/user-attachments/assets/45c1dd7b-4405-4b57-8df7-b668d57a120f)

## Relationship Between Supertype and Subtype

- **Always one-to-one** relationship.
- Ask the question: "Is a subtype a supertype?"
- A subtype can have only one supertype.

### Completeness Constraint
These constraints address whether an instance of a supertype must also be a member of at least one subtype.

![image](https://github.com/user-attachments/assets/aeb287b6-f893-4c72-b21f-88a8918e2aea)

- **Total Specialization Rule:** Specifies that each entity instance of a supertype must be a member of some subtype in the relationship.
- **Partial Specialization Rule:** Specifies that an entity instance of a supertype is not required to belong to any subtype.

### Disjointness Constraint
This constraint addresses whether an instance of a supertype may simultaneously be a member of two (or more) subtypes.

- **Disjoint Rule:** Specifies that an instance of a supertype may not simultaneously be a member of two (or more) subtypes.

![image](https://github.com/user-attachments/assets/c5352047-84c6-4808-b2b8-28b8f600f48b)

- **Overlap Rule:** Specifies that an instance of a supertype may simultaneously be a member of two (or more) subtypes.

![image](https://github.com/user-attachments/assets/7b964702-f5aa-4a62-842c-0a996e444267)

### Subtype Discriminator
An attribute of a supertype whose values determine the target subtype or subtypes.

### Supertype/Subtype Hierarchy
A hierarchical arrangement of supertypes and subtypes in which each subtype has only one supertype.

- **Disjoint:** A simple attribute with alternative values to indicate the possible subtypes.

![image](https://github.com/user-attachments/assets/09039df0-8254-4dee-8bad-96a7bad7f2f8)

- **Overlapping:** A composite attribute whose subparts pertain to different subtypes, with each subpart containing a Boolean value to indicate whether the instance belongs to the associated subtype.

![image](https://github.com/user-attachments/assets/96b22d2a-2347-4037-8411-ae5d38d689d9)

## Entity Clusters

Entity clusters are a set of one or more entity types and associated relationships grouped into a single abstract entity type.

## Packaged Data Models

Packaged data models are predefined data models that are designed to meet common requirements across various industries or use cases. These models are developed based on best practices and can be either universal or industry-specific.

- **Universal Data Model:** These are generic or template data models that can be adapted to various business scenarios. They are not tied to any specific industry, making them versatile starting points for data modeling projects.
- **Industry-Specific Data Models:** These are tailored to the unique needs of specific industry. They incorporate industry-standard practices and compliance requirements, offering a ready-made solution that can be quickly implemented.
  
### Advantages of Using Packaged Data Models

- Use of proven model components.
- Save time and cost.
- Less likelihood of data model errors.
- Easier to read, evolve and modify over time.
- Aid in requirements determination.
- Supertype/subtype hierarchies promote reuse.
- Many-to-many relationships enhance model flexibility.
- Vendor-supplied data models foster integration with vendor applications.
- Universal models support inter-organizational systems.

# Data Modeling and Relational Models

## Phases of Data Modeling
  Data modeling is an essential step in the development of a database system. It involves several phases, each with a specific purpose:

### 1. Conceptual Design
   - **Purpose:** The conceptual design phase focuses on understanding the data requirements of an organization. It involves creating a high-level model of the data that captures the essential entities, their attributes, and the relationships between them.
   - **Output:** Entity-Relationship (ER) diagram, which represents the major data objects and their relationships.

### 2. Logical Design
   - **Purpose:** The logical design phase converts the conceptual model into a logical data model that can be implemented in a database management system (DBMS). This phase involves defining tables, columns, primary keys, foreign keys, and the relationships between them, without considering the physical aspects of storage.
   - **Output:** A logical schema that defines the structure of the data in a way that is independent of the physical database platform.

### 3. Physical Design
   - **Purpose:** The physical design phase deals with the implementation of the logical data model on a specific DBMS. This includes selecting storage structures, indexing strategies, and optimizing the database for performance and storage efficiency.
   - **Output:** The actual database schema, optimized for performance, storage, and retrieval.

## Logical Data Model

The logical data model plays a crucial role in the database design process. Its primary purposes include:

- **Structure an Organization:** Provides a clear structure of the data, defining entities, attributes, and relationships that align with the business needs.
- **Data Independence:** Ensures that changes to the logical structure do not affect the underlying data storage or retrieval methods.
- **Data Consistency:** Maintains uniformity and accuracy of data across the database, ensuring that it adheres to predefined rules.
- **Integrity and Constraints:** Enforces data integrity through the application of constraints like primary keys, foreign keys, and unique constraints to maintain data accuracy and reliability.

## Relational Model

The relational model is the most widely used data model in database management systems. Its purposes include:

- **Structure Data Representation:** Organizes data into tables (relations) where each table represents an entity or relationship.
- **Data Integrity Enforcement:** Ensures data integrity by enforcing constraints such as primary keys, foreign keys, and unique constraints.
- **Simplified Data Manipulation:** Provides powerful operations (typically via SQL) for querying, updating, and managing the data.
- **Data Independence:** Separates the logical organization of data from its physical storage, allowing for flexibility in changing storage methods without affecting data access.

### Components of the Relational Model

#### 1. Data Structure
   - Data is organized in the form of tables (relations), with rows representing records and columns representing attributes.

#### 2. Data Manipulation
   - Powerful operations (typically implemented using SQL) are used to manipulate data stored in the relations. This includes operations like SELECT, INSERT, UPDATE, and DELETE.

#### 3. Data Integrity
   - The relational model includes mechanisms to specify business rules that maintain the integrity of data when they are manipulated.

### Key Concepts in the Relational Model

#### Relation
   - A named, two-dimensional table of data that consists of rows and columns.
   - **Requirements:** 
     - Unique name for each table.
     - Each attribute value must be atomic (indivisible).
     - Each row must be unique.
     - The order of columns and rows must be irrelevant.

#### Correspondence with ER Model
   - **Many-to-Many Relationship Types:** These are typically represented by a separate table with foreign keys pointing to the related entities.
   - **Rows:** Correspond to entity instances or many-to-many relationship instances.
   - **Columns:** Correspond to attributes of the entity or relationship.

### Primary Key
   - An attribute or a combination of attributes that uniquely identifies each row in a relation.

### Foreign Key
   - An attribute in a relation that serves as the primary key of another relation in the same database.

### Composite Key
   - A primary key that consists of more than one attribute.
   - Used when a single attribute is not sufficient to uniquely identify a row, necessitating the combination of multiple attributes to form a unique identifier.

![image](https://github.com/user-attachments/assets/b03be86b-a723-4e08-a06f-d61f95cd27ec)

### Integrity Constraints
  - Integrity constraints ensure that the data within a database remains accurate, consistent, and reliable. They are critical for maintaining data quality and enforcing business rules.

### Domain Constraints
   - Domain constraints specify the allowable values for an attribute. For example, a domain constraint might ensure that the attribute "Age" only contains positive integers.

### Entity Integrity
   - Entity integrity ensures that the primary key of a table is unique and cannot be null. 

### Referential Integrity
   - Referential integrity is a rule that states that each foreign key value must either match a primary key value in another relation or be null. 

![image](https://github.com/user-attachments/assets/e494e1d2-e245-4162-9fc8-1d0eddfa18f2)

# Transforming ER Diagrams into Relational Schema

## Attributes Mapping

- **Simple Attributes:** These ER attributes map directly onto the relation as columns.

![image](https://github.com/user-attachments/assets/ec22f75e-e8ea-4e6e-8614-09119f1e2d72)

- **Composite Attributes:** Only the simple, component attributes of a composite attribute are used in the relation. The composite attribute itself is not directly represented.

![image](https://github.com/user-attachments/assets/61e82111-5c36-4920-accc-a232319fa644)

- **Multivalued Attributes:** Multivalued attributes are transformed into a separate relation. A foreign key from the superior entity is used to link the new relation to the original entity.

![image](https://github.com/user-attachments/assets/412053e9-6a58-42fd-8912-2066635f590b)

- **Mapping a weak entity:**

![image](https://github.com/user-attachments/assets/319ff4d6-9597-437e-9b25-9933c6646b37)

- **Mapping an associate entity:**

![image](https://github.com/user-attachments/assets/7241883e-7950-4d83-abff-59aefbfd4632)

## Primary Key Composition

- The primary key is a combination of the partial identifier of the weak entity and the primary key of the strong entity it depends on.

## Mapping Binary Relationships

### 1. One-to-Many Relationships
   - The primary key on the "one" side of the relationship becomes a foreign key on the "many" side.

![image](https://github.com/user-attachments/assets/3e08dabd-0f9b-4e77-b545-8c79660fda82)

### 2. Many-to-Many Relationships
   - A new relation is created to represent the relationship. The primary keys of the two related entities become the composite primary key of this new relation.

![image](https://github.com/user-attachments/assets/aa25146a-c519-4a3d-9144-bde971166eef)

### 3. One-to-One Relationships
   - The primary key on the mandatory side of the relationship becomes a foreign key on the optional side.
     
![image](https://github.com/user-attachments/assets/441ff232-7bae-453e-b9f3-d564b7928651)

## Identifier Assignment

### 1. Identifier Not Assigned
   - The default primary key for an associative relation is composed of the primary keys of the two entities involved (as in the case of many-to-many relationships).

### 2. Identifier Assigned
   - When an identifier is assigned, it should be natural and familiar to end-users. However, a default identifier might not be unique, requiring additional constraints or modifications to ensure uniqueness.

## Mapping Unary Relationships

### 1. One-to-Many Unary Relationships
   - A recursive foreign key is used within the same relation to represent the relationship.

![image](https://github.com/user-attachments/assets/be691fe0-8797-415a-be07-4968db99323f)

### 2. Many-to-Many Unary Relationships
   - Two relations are created:
     1. One for the entity type itself.
     2. One for the associative relation, where the primary key is composed of two attributes taken from the primary key of the entity.

![image](https://github.com/user-attachments/assets/2087dae7-c14a-43ff-8a56-de41059b770f)

## Mapping Ternary (and n-ary) Relationships

- One relation is created for each participating entity, and an additional relation is created for the associative entity.
- The associative entity contains foreign keys to each of the participating entities in the relationship.

![image](https://github.com/user-attachments/assets/009486da-b094-48a3-976c-5f4c1ad051af)

## Mapping Supertype and Subtype Relationships

### 1. Relation for Supertype
   - The supertype attributes, including the identifier and subtype discriminator, are stored in the supertype relation.

### 2. Relations for Subtypes
   - Subtype attributes are stored in separate relations. The primary key of the supertype relation is also used as the primary key for the subtype relations.
   - A One-to-One relationship is established between the supertype and each subtype, with the supertype acting as the primary table.

![image](https://github.com/user-attachments/assets/62b92178-7b5d-4482-9a6e-c02e0bd34a49)

# Data Modeling Concepts and Normalization

## Referential Integrity Mechanisms

Referential integrity ensures that relationships between tables remain consistent. It is a crucial part of maintaining data integrity in a relational database.

### Referential Constraints
- A referential constraint states that any foreign key value on the "many" side of a relationship must match a primary key value on the "one" side.
  
### Types of Referential Integrity Mechanisms

1. **Restrict:**
   - Prevents actions that would violate referential integrity by disallowing the deletion or update of a primary key if related foreign keys exist.
  
2. **Cascade:**
   - Automatically updates or deletes foreign key values when the associated primary key is updated or deleted. This mechanism ensures that related records are maintained consistently.

3. **Set-to-Null or Specific Value:**
   - Sets the foreign key to `NULL` or a specific value if the related primary key is deleted or updated. This method allows for a flexible response when a relationship is broken.

## Difference Between Conceptual and Logical Data Models

Understanding the difference between conceptual and logical data models is essential for effective database design.

1. **Conceptual Data Modeling:**
   - Focuses on understanding the organization’s data requirements. It is about capturing the correct requirements and ensuring they are built into the database design.
   - Produces an Entity-Relationship (ER) model that reflects the organization's data needs without considering how the data will be stored or processed.

2. **Logical Data Modeling:**
   - Involves creating stable database structures that accurately express organizational requirements in technical terms. The logical model defines how data will be organized within the database system.
   - Results in a logical schema that is independent of the physical storage methods but tailored to the type of database technology being used.

## Normalization

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
