# Software/System Development Life Cycle
The Software Development Life Cycle (SDLC) is a structured approach to software development that guides teams through creating, deploying, and maintaining software applications. It consists of a series of well-defined stages, each with specific goals, deliverables, and processes. The primary purpose of SDLC is to ensure software quality, consistency, and efficiency throughout development.
## Phases of Software/System Development Life Cycle
### 1. Planning
- **Objective**: Define project goals, scope, purpose, and feasibility. Assess resource requirements, estimated time, and budget.
- **Key Activities**:
    - Gather high-level requirements and establish project goals.
    - Conduct a feasibility study, analyzing economic, technical, and operational aspects.
    - Define risks, project schedules, and cost estimates.
- **Outcome**: Project plan, scope document, and feasibility study.
### 2. Requirements Analysis
- **Objective**: Gather detailed software requirements to create a clear vision of the project.
- **Key Activities**:
    - Engage stakeholders, including end-users and clients, to understand their needs.
    - Create use cases, user stories, and requirement specifications.
    - Identify functional (what the system should do) and non-functional requirements (performance, security, scalability).
- **Outcome**: Requirements specification document (SRS).
### 3. Design
- **Objective**: Define the system’s architecture, design, and interface based on requirements.
- **Key Activities**:
    - Create architectural design, defining the high-level structure of the system.
    - Develop database designs, user interfaces, data structures, and algorithms.
    - Design system modules, specifying how different components interact.
- **Outcome**: Design documents, including software architecture and database designs.
### 4. Development (Coding)
- **Objective**: Convert the designs and specifications into actual code.
- **Key Activities**:
    - Developers write code according to standards and guidelines.
    - Implement different modules as per the system design.
    - Conduct unit testing to check individual components for errors.
- **Outcome**: Source code, unit test cases, and builds for testing.
### 5. Testing
- **Objective**: Verify that the software works as expected, identifying and fixing any issues.
- **Key Activities**:
    - Execute different testing phases, such as functional, integration, system, and user acceptance testing (UAT).
    - Test for security vulnerabilities, performance issues, and compatibility.
    - Address and retest any bugs or issues that arise during testing.
- **Outcome**: Tested software ready for deployment.
### 6. Deployment
- **Objective**: Release the software to users or customers.
- **Key Activities**:
    - Deploy the software in a production environment.
    - Perform beta testing with actual users, if applicable.
    - Roll out the application and provide support during the initial usage phase.
- **Outcome**: Live software application accessible to users.
### 7. Maintenance and Support
- **Objective**: Ensure the software continues to function well after deployment.
- **Key Activities**:
    - Address user-reported issues and bugs.
    - Provide updates, patches, and improvements to the software.
    - Adjust the software to accommodate changing requirements or technologies.
- **Outcome**: A stable, continuously updated software application.

## Challenges in Software Development
Starting a software project with the expectation of failure is far from ideal. However, the reality is that projects face many challenges that require the team to remain vigilant and proactive in managing potential risks. 

### Known Unknowns and Unknown Unknowns
- **Known Unknowns**: Factors anticipated to impact the project, such as the potential switch in development platforms, even though specifics like timing and platform choice may remain uncertain.
- **Unknown Unknowns**: Completely unforeseen elements that emerge, like unexpected business decisions or third-party provider disruptions.  

### Key Areas of Challenge

#### 1. Requirements and Scope
One common issue in software projects is **scope creep**, where the project scope expands due to new requirements added mid-project. This impacts timelines and resource availability, increasing pressure on the project team. To combat scope creep, **prioritization tools** such as the **MoSCoW method** (Must, Should, Could, Won't) are invaluable for aligning priorities and enforcing scope constraints.  
![image](https://github.com/user-attachments/assets/a5f35ae9-a648-463e-b697-e9ce48c5fc09)

In Agile projects, new requirements can be prioritized in the product backlog.  
For Waterfall projects, changes may necessitate a "one-in-one-out" rule, where any added “Must” requirement requires removing a lower-priority task unless the timeline or team capacity can adjust accordingly.

#### 2. Technical Issues
Technical challenges arise from complex integrations, **technical debt**, and selecting the wrong technical solution. Examples include:
- **Multiple Integrations**: Integration points increase the complexity of development, testing, and maintenance. A BA can use **context and use case diagrams** to make these interfaces transparent and manageable.
- **Technical Debt**: Sometimes, short-term solutions introduce inefficiencies (technical debt) that could hinder future development. Collaborating with a Technical Architect allows the BA to assess whether existing debt needs addressing to avoid further complications.
- **Inappropriate Technical Solutions**: If the selected technology fails to meet the requirements, it can lead to cost and timeline overruns. The BA must assess requirements against the chosen platform and communicate any risks to the Project Manager and technical team.

#### 3. Project Processes
As BAs are involved in multiple SDLC phases, they are well-positioned to evaluate and influence project processes. During **testing**, for instance, a BA should ensure that test cases and acceptance criteria thoroughly meet all requirements. Additionally, BAs should support processes that maintain quality standards by working with Project Managers to identify process deviations early and implement corrective actions.

### Advantages
- **Project Management**: SDLC frameworks help establish control points and outline elements for the project plan, adding structure and discipline to software development.  
- **Team Objectives and Process**: By providing a standardized process, SDLC models clarify each team member's responsibilities, minimizing misunderstandings and errors.
- **Stakeholder Interaction**: SDLC models provide a clear project structure, simplifying stakeholder engagement and making it easier to communicate progress and challenges.
- **Maintenance**: The SDLC model's standard documentation simplifies handover to the support team, who can maintain and support the system effectively.

### Disadvantages
- **Increased Time/Cost**: Certain SDLC models like Waterfall can extend project timelines, especially where documentation is extensive.
- **Estimating Cost in Iterative Models**: In models like Spiral, the evolving nature of the project makes initial cost estimation difficult.
- **Impact of Changing Requirements**: Models with rigid requirements (e.g., Waterfall) struggle with adaptability, often requiring rework when changes arise.

## SDLC Models
Several SDLC models help teams approach the life cycle in different ways, each suited to different types of projects:
- **Waterfall Model**: Sequential, with each phase completed before moving to the next. Suited for projects with well-defined requirements.
- **Agile Model**: Iterative and incremental, emphasizing flexibility and customer feedback. Ideal for projects with evolving requirements.
- **V-Model (Validation and Verification)**: Similar to Waterfall but with testing involved at each development phase.
- **Spiral Model**: Combines iterative development with risk analysis, beneficial for large, high-risk projects.
- **Iterative Model**: Develops software in repeated cycles, refining each version until it meets the final requirements.
- **DevOps Model**: Integrates development and operations to streamline deployment and maintenance.
Each SDLC model has unique advantages and challenges, and the choice depends on factors like project size, complexity, risk, and timeline.

### Alternatives to Traditional SDLC Models

1. **JAD/RAD (Joint Application Development/Rapid Application Development)**: These collaborative methods allow clients and developers to work closely on requirements and product development. However, they may result in design compromises and require extensive time from skilled personnel.
![image](https://github.com/user-attachments/assets/48426091-0284-4cbd-880b-4c0689012a41)

2. **End-User Development (EUD)**: EUD empowers end users to develop solutions independently, typically through user-friendly platforms. However, this approach can compromise quality due to potential gaps in validation, testing, and compliance expertise
