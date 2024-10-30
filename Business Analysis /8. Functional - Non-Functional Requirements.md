# Functional Requirements
Functional requirements define what a system does and outline features necessary to meet user needs, typically provided by business stakeholders.
They include:

### 1. Inputs, Transformations, and Outputs:
Defines how data flows through processes within a specified scope.
Example: In an expense approval process, inputs (expense report), transformations (review/approval), and outputs (approved report for payment) are all documented.
![image](https://github.com/user-attachments/assets/f3907c15-6dca-4585-9cdc-8add5bddb5d7)

### 2. User Identification and Access Management:
Specifies how users log in, are verified, and assigned roles or permissions.
Access levels (e.g., managers approving expenses based on thresholds) ensure correct process access and security.
### 3. Information Transformation:
Outlines how data is changed during processes (added, modified, deleted).
Business rules define routing based on criteria like expense amount.
### 4. Reporting:
Documents report requirements, such as purpose, content, schedule, and access control.
Example: A monthly report showing all approved expenses accessible only to senior managers.
### 5. Process Integration:
Ensures seamless integration with other processes or systems.
Input and output dependencies must be captured, such as expense reports feeding into the payment process.
### 6. Managing Errors:
Error Prevention: Requirements to prevent common errors, like using dropdowns instead of manual entry.
Error Remediation: Identifies actions if errors occur, such as notifications and logging.


# Non-Functional Requirements (NFRs)
Non-functional requirements focus on the quality and performance of a system, impacting the entire system rather than individual features.

- **Accessibility**: Ensures system usability across diverse user needs (e.g., voice command options).
- **Availability**: Defines uptime requirements based on criticality (e.g., healthcare systems need higher availability).
- **Data Integrity**: Ensures consistent, accurate data management, especially under concurrent access.
- **Supportability**: System readiness for upgrades, issue resolution, and monitoring, often aided by automated alerts.
- **Reliability**: Specifies acceptable failure rates, aiming for high accuracy in critical areas like financial transactions.
- **Extensibility**: Allows for future enhancements without affecting current functions.
- **Scalability**: Accommodates increasing users or data without compromising performance.
- **Interoperability**: Ensures system compatibility with other existing/planned systems.
- **Localization**: Accounts for regional requirements, languages, and cultural differences, often essential for global systems.

## Current and Future State Requirements:
- Includes capacity planning for current needs and future growth.
- Examines interoperability to ensure long-term compatibility with other systems.
- In many sectors, specific NFRs take priority due to regulations. For instance, pharmaceuticals focus heavily on data integrity, retention, and security due to stringent compliance requirements.

# INVEST Attributes in Requirements
- The INVEST framework is presented as a practical tool to improve requirement clarity and effectiveness.  
- INVEST criteria can help Business Analysts develop strong functional requirements. 
- INVEST stands for **Independent**, **Negotiable**, **Valuable**, **Estimable**, **Small**, and **Testable**, and each attribute serves as a guide to assess the quality of requirements.

![image](https://github.com/user-attachments/assets/93c8b950-ad59-4dc1-9b1a-5367e5d07ce5)

## Validating Input Requirements:
Requirements involving validated applications are assessed against INVEST attributes, emphasizing that requirements should be actionable, open for negotiation, valuable to the process, and testable.
## Transformation Evaluation:
Requirements involving transformation (where information changes state) often fail in Independent and Small aspects due to their complexity. This section highlights the importance of breaking down large, multi-step requirements into smaller, manageable ones that can independently meet the INVEST criteria.
## Validating Output Requirements:
Discusses requirements that focus on the outcome of a process. Each output requirement is evaluated through INVEST, emphasizing independence, estimability, and testability, as well as the need for negotiation with other stakeholders involved in downstream processes.
