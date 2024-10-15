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

## Mapping Unary Relationships

### 1. One-to-Many Unary Relationships
   - A recursive foreign key is used within the same relation to represent the relationship.

![image](https://github.com/user-attachments/assets/be691fe0-8797-415a-be07-4968db99323f)

### 2. Many-to-Many Unary Relationships
   - Two relations are created:
     1. One for the entity type itself.
     2. One for the associative relation, where the primary key is composed of two attributes taken from the primary key of the entity.

![image](https://github.com/user-attachments/assets/2087dae7-c14a-43ff-8a56-de41059b770f)

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

# Data Modeling Concepts

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
