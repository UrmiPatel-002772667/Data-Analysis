# Database Concepts

- **Database:** Database is an organized collection of logically related data.
- **Data:** Data is a stored representation of objects.
- **Information:** Information is a processed data to increase knowledge.
- **Metadata:** Properties or characteristics of data.
  
## Data Model
   Data model is a visual representation of information system to communicate data structures and their relationships.
   
## Data Types
- **Structured Data:** Numbers, text, dates.
- **Unstructured Data:** Images, videos, documents.

## Range of Database Applications
1. **Personal Databases**
   - Typical size: Megabytes.
   - Intended for one user.

2. **Departmental Multi-Tiered Client/Server Databases**
   - Typical size: Gigabytes.
   - Intended for several users, usually doesn’t exceed 100, department-wide.

3. **Enterprise Applications**
   - Typical size: Gigabytes, terabytes, or even petabytes.
   - Intended for a very large user base, company-wide.

## Types of Databases
- **Relational Databases:** Organize data into tables with predefined schemas.  
  Examples: MySQL, Oracle, PostgreSQL.

- **NoSQL Databases:** Handle large-scale, unstructured, or semi-structured data.  
  Examples: MongoDB, Redis, Cassandra.

- **Cloud Databases:** Designed to run in the cloud.  
  Examples: Microsoft Azure SQL Database, Amazon RDS, Oracle Autonomous Database.

- **Columnar Databases:** Store data in columns rather than rows, often used in data warehouses for analytical queries.  
  Examples: Google BigQuery, Cassandra, HBase.

- **Key-Value Databases:** Save data as a group of key-value pairs, one of the simplest types of NoSQL databases.  
  Examples: Redis, DynamoDB.

- **Time-Series Databases:** Handle time-stamped or time-series data efficiently.  
  Examples: Amazon Timestream, InfluxDB, Prometheus, OpenTSDB.

## Advantages of Databases
- Program data independence.
- Planned data redundancy.
- Improved data consistency.
- Improved data sharing.
- Increased application development productivity.
- Enforcement of standards.
- Improved data quality.
- Improved data accessibility and responsiveness.
- Reduced program maintenance.
- Improved decision support.

# Systems Development Life Cycle (SDLC)
1. **Planning**
   - **Purpose:** Establish a preliminary understanding.
   - **Deliverable:** Request for study.

2. **Analysis**
   - **Purpose:** Conduct thorough requirements analysis and structuring.
   - **Deliverable:** Functional system specification.

3. **Logical Design**
   - **Purpose:** Elicit information requirements and structure them.
   - **Deliverable:** Detailed design specification.

4. **Physical Design**
   - **Purpose:** Develop technology and organizational specifications.
   - **Deliverable:** Program/data structures, technology purchases, organization redesigns.

5. **Implementation**
   - **Purpose:** Programming, testing, training, installation, and documentation.
   - **Deliverable:** Operational programs, documentation, training materials.

6. **Maintenance**
   - **Purpose:** Monitor, repair, and enhance the system.
   - **Deliverable:** Periodic audits.

## Business Rules
A statement that defines or constrains some aspect of the business. It is intended to assert business structure or to control or influence the behavior of the business. Business rules prevent, cause, or suggest actions within the business.

### Characteristics of Business Rules
- **Declarative:** Focuses on what, not how.
- **Precise:** Clear, agreed-upon meaning.
- **Atomic:** One statement per rule.
- **Consistent:** Internally and externally consistent.
- **Expressible:** Structured, natural language.
- **Distinct:** Non-redundant.
- **Business-Oriented:** Understood by business people.

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
  
## Advantages of Using Packaged Data Models

- Use of proven model components.
- Save time and cost.
- Less likelihood of data model errors.
- Easier to read, evolve and modify over time.
- Aid in requirements determination.
- Supertype/subtype hierarchies promote reuse.
- Many-to-many relationships enhance model flexibility.
- Vendor-supplied data models foster integration with vendor applications.
- Universal models support inter-organizational systems.
