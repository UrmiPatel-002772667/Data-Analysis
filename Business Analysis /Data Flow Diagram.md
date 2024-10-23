# Data Flow Diagram
A data flow diagram (DFD) is a graphical or visual representation that uses a standardized set of symbols and notations to describe a business's operations through data movement.  
It allows you to understand how data moves, is transformed, and interacts with the various data elements in your information system.  A DFD is an essential building block for good system design. However, not every DFD will fit the needs of every stakeholder.

## DFD levels
DFDs are categorized into multiple levels based on the level of detail they provide:
Context Diagram (Highest Level)
Level 0 DFD
Level 1 DFD
Level 2 DFD (Further detailed sub-processes)

### Context Diagram
- **Purpose**: Provides the highest-level view of the system. It shows the system's main inputs and outputs, focusing on the data that goes into and out of the system without detailing internal processes.
- **Audience**: Broader audience, including project sponsors, end users, and senior management.
- **Components**: The system is represented as a single process with its interactions with external entities (users or other systems). The process is labeled as "0" to indicate no internal details are provided.

### Level 0
- **Purpose**: Expands the Context Diagram into a high-level breakdown of the system's processes. It includes data stores and the flow of data between processes and entities.
- **Audience**: Still relatively broad, including system analysts and designers. It serves as a starting point for deeper discussions.
- **Components**: Processes are labeled with whole numbers, such as 1.0 or 2.0, showing high-level system functionality without going into granular internal details.

### Level 1 
- **Purpose**: Breaks down the processes from Level 0 into smaller sub-processes to show how each high-level process operates internally.
- **Audience**: System developers, testers, and analysts who need more detailed views of system operations.
- **Components**: Each process in Level 0 is expanded into sub-processes, labeled with decimal numbers (e.g., 1.1, 1.2), showing data flow between them. The flow between sub-processes is represented with arrows indicating how they work together to achieve system outputs.

### Level 2
- **Purpose**: Provides even more granular breakdowns of processes. It shows nested sub-processes (often referred to as "grandchild processes").
- **Audience**: Primarily for system developers and programmers, this level serves as a blueprint for translating system designs into code. System analysts may also use it to ensure all functionalities are captured for development.
- **Components**: Sub-processes from Level 1 are further decomposed, with additional numbering like 1.1.1, 1.1.2, and 1.1.3, showing detailed data flows and interactions between smaller system components.

## DFD levels and the Business Analyst
DFDs serve as critical tools for business analysts during system design and development:
- At the Context level, they ensure a shared vision for the system among all stakeholders.
- At Level 0, they help define the core functionality of the system, such as key tasks or data flow between different parts.
- At Levels 1 and 2, they are used to guide the technical development and ensure that system functionality is thoroughly specified and aligned with the stakeholders' needs.
- As we’ve seen DFDs can be a powerful tool for the Business Analyst.  To demonstrate this, imagine a Business Analyst working for a fun and exciting startup firm, looking to develop a dog-walking application.
