**Exercise 1:**
  Draw an E-R diagram for a Telecom company with the following business rules:
An EMPLOYEE works only for one DEPARTMENT. The company has many departments. Each DEPARTMENT must have at least one employee. Each employee must report to one supervisor. A supervisor is required to have at least one subordinate.
	
![image](https://github.com/user-attachments/assets/9f5e40a0-5654-4f81-a819-85c2a61803f6)
**Exercise 2:**
  Each semester, each student must be assigned an adviser who counsels students about degree requirements and helps students register for classes. Each student must register for classes with the help of an adviser, but if the student’s assigned adviser is not available, the student may register with any adviser.
We must keep track of students, the assigned adviser for each, and the name of the adviser with whom the student registered for the current term.
Represent this situation of students and advisers with an E-R diagram

![image](https://github.com/user-attachments/assets/9768df29-ce01-4026-b222-93eda93b93b9)

**Exercise 3:** 
  Figure below shows a grade report that is mailed to students at the end of each semester. Prepare an ERD reflecting the data contained in the grade report. Assume that each course is taught by one instructor. Explain what you chose for the identifier of each entity type on your ERD

![image](https://github.com/user-attachments/assets/087882a9-2c07-4578-ab71-f37242cda830)

![image](https://github.com/user-attachments/assets/2dd4c16e-58c5-4eb9-b02a-8df6f0b33209)

**Exercise 4:**
  City Transportation Authority needs to keep track of the traffic and the toll revenues collected from the toll bridges, tunnels, and road toll stops (all of these are toll collection points) managed by the authority. Each toll collection point has a unique name. Toll collection point data that should be maintained are a description, the day operations started at the collection point, and location coordinates. Each toll collection point has several toll booths identified by a toll booth number, some of which are manned and some unmanned (using the city’s Quick Lane collection system). The city wants to track passenger vehicles, trucks, buses, and motorcycles separately. Each of these categories has a different toll amount at each toll collection point. At the vehicle level, only those vehicles using the Quick Lane system can be identified with their license plate number; the make and model of each vehicle are also maintained in the database. There are two types of employees: toll collectors and supervisors. Each supervisor is responsible for specific toll booths at a moment, and at this point, the system does not need to keep track of historical data regarding supervisory assignments. Each toll collector reports to a specific supervisor. The city wants to maintain records about the employees’ names, addresses, phone numbers, and their years of service. A managerial capability rating (MCR) is maintained for the supervisors and a textual performance evaluation for each toll collector

![image](https://github.com/user-attachments/assets/ba29ad5c-9cb2-4e57-a71d-25b165311de5)

**Exercise 5:** 
  A technology company provides offerings to its customers. Offerings are of two separate types: products and services. Offerings are identified by an offering ID and an attribute of description. In addition, products are described by product name, standard price, and date of first release; services are described by the name of the company’s unit responsible for the service and conditions of service. There are repair, maintenance, and other types of services. A repair service has a cost and is the repair of some products; a maintenance service has an hourly rate. Fortunately, some products never require repair. However, there are many potential repair services for a product. A customer may purchase an offering, and the company needs to keep track of when the offering was purchased and the contact person for that offering with the customer. Unfortunately, not all offerings are purchased. Customers are identified by customer ID and have descriptive data of name, address, and phone number. When a service
is performed, that service is billed to some customer. Because some customers purchase offerings for their clients, a customer may be billed for services he or she did not purchase, as well as for ones that were purchased. When a customer is billed for a service (although some may never require a service of any type), the company needs to keep track of the date the service was performed, the date the bill is due, and the amount due.

![image](https://github.com/user-attachments/assets/aac1b11b-873e-4faf-96f3-24f922a92217)

**Exercise 6:**
  Develop a relational schema an EER diagram for a simplified credit card environment. There are two types of card accounts: debit cards and credit cards. Credit card accounts accumulate charges with merchants. Each charge is identified by the date and time of the charge as well as the primary keys of merchant and credit card. 
Show Functional Dependencies

![image](https://github.com/user-attachments/assets/ecd3985a-7a91-424c-a674-1104742324cf)

**Exercise 7:**
  Table below contains sample data for parts and for vendors who supply those parts. In discussing these data with users, we find that part numbers (but not descriptions) uniquely  identify parts and that vendor names uniquely identify 
vendors. 
	a. Draw a relational schema for PART SUPPLIER and show the functional dependencies. 
	b. In what normal form is this relation? 
	c. Develop a set of 3NF relations from PART SUPPLIER. 

![image](https://github.com/user-attachments/assets/d1f969fb-9def-456d-ae2b-2c9e2758fed8)

**Exercise 8:**
  Table below shows a relation called GRADE REPORT for a university. Your assignment is as 
follows: 
a. Draw a relational schema and diagram the functional dependencies in the relation. 
b. In what normal form is this relation? 
c. Decompose GRADE REPORT into a set of 3NF relations. 
d. Draw a relational schema for your 3NF relations and show the referential integrity constraints.

![image](https://github.com/user-attachments/assets/ef56af0d-319f-4955-be4b-3cdeae9773cf)

![image](https://github.com/user-attachments/assets/9b998935-a884-45a7-b1df-ca5f55aae6e1)
