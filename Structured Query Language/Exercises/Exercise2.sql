CREATE TABLE EmployeeDetails (
	EmpId integer,
	FullName varchar(50),
	ManagerId integer,
	DateOfJoining date,
	City varchar(30)
)

insert into EmployeeDetails values (121, 'John Snow', 321, '01/31/2019', 'Toronto');
insert into EmployeeDetails values (321, 'Walter White', 986, '01/30/2020', 'California');
insert into EmployeeDetails values (421, 'Kuldeep Rana', 876, '11/27/2021', 'New Delhi');

select * from EmployeeDetails

CREATE TABLE EmployeeSalary (
	EmpId integer,
	Project varchar(2),
	Salary integer,
	Variable varchar
);

insert into EmployeeSalary values (121, 'P1', 8000, 500);
insert into EmployeeSalary values (321, 'P2', 10000, 1000);
insert into EmployeeSalary values (421, 'P1', 12000, 0);

select * from EmployeeSalary

-- 1. SQL Query to fetch records that are present in one table but not in another table.
select * from EmployeeSalary
minus
select * from ManagerSalary

-- 2. SQL query to fetch all the employees who are not working on any project.
select * 
from EmployeeDetails
where EmpId in (select EmpId from EmployeeSalary where Project = null)

-- 3. SQL query to fetch all the Employees from EmployeeDetails who joined in the Year 2020.
select * 
from EmployeeDetails
where dateofjoining BETWEEN '2020/01/01'
AND '2020/12/31'

-- 4. Fetch all employees from EmployeeDetails who have a salary record in EmployeeSalary.
select * 
from EmployeeDetails ed, EmployeeSalary es
where ed.empId = es.empId

-- 5. Write an SQL query to fetch a project-wise count of employees.
select project, count(project) projectCount
from EmployeeSalary
group by project
order by project

-- 6. Fetch employee names and salaries even if the salary value is not present for the employee.
select ed.fullName, es.salary
from employeedetails ed, employeesalary es
where ed.empId = es.empId

select ed.fullName, es.salary
from employeedetails ed left join employeesalary es
on ed.empId = es.empId

-- 7. Write an SQL query to fetch all the Employees who are also managers.
select *
from employeeDetails E
inner join EmployeeDetails M
on e.empId = m.managerid

-- 8. Write an SQL query to fetch duplicate records from EmployeeDetails.
select fullname, managerId, dateofjoining, city, count(*) 
from employeeDetails
group by fullname, managerId, dateofjoining, city
having count(*) > 1

-- 9. Write an SQL query to fetch only odd rows from the table.
SELECT * FROM EmployeeDetails 
WHERE MOD (EmpId, 2) <> 0;

-- 10. Write a query to find the 3rd highest salary from a table without top or limit keyword.
select salary
from employeesalary emp1
where 2 = 
(select count(distinct(emp2.salary)) from employeesalary emp2
where emp2.salary> emp1.salary)

-- 11. Write an SQL query to fetch the EmpId and FullName of all the employees working under the Manager with id – ‘986’.
select empId, fullname
from employeedetails
where managerid = 986

-- 12. Write an SQL query to fetch the different projects available from the EmployeeSalary table.
select distinct(project)
from employeesalary
order by project

-- 13. Write an SQL query to fetch the count of employees working in project ‘P1’.
select count(*) no_of_employees
from employeesalary
where project = 'P1'

-- 14. Write an SQL query to find the maximum, minimum, and average salary of the employees.
select max(salary), min(salary), round(avg(salary))
from employeesalary

-- 15. Write an SQL query to find the employee id whose salary lies in the range of 9000 and 15000.
select empid
from employeesalary
where salary between 9000 and 15000

-- 16. Write an SQL query to fetch those employees who live in Toronto and work under the manager with ManagerId – 321.
select *
from employeedetails
where city = 'Toronto' and managerid = 321;

-- 17. Write an SQL query to fetch all the employees who either live in California or work under a manager with ManagerId – 321.
select *
from employeedetails
where city = 'California' or managerid = 321

-- 18. Write an SQL query to fetch all those employees who work on Projects other than P1.
select * 
from employeesalary
where project != 'P1'

-- 19. Write an SQL query to display the total salary of each employee adding the Salary with Variable value.
select salary + integer(variable) as totalsalary
from employeesalary

-- 20. Write an SQL query to fetch the employees whose name begins with any two characters, followed by a text “hn” and ends with any sequence of characters.
select * 
from employeedetails
where fullname like '__hn%'

-- 21. Write an SQL query to fetch all the EmpIds which are present in either of the tables – ‘EmployeeDetails’ and ‘EmployeeSalary’.
select distinct empid 
from employeeDetails  
union
select distinct empid 
from employeesalary 

-- 22. Write an SQL query to fetch common records between two tables.
select * from employeedetails
intersect
select * from managerdetails

-- 23. Write an SQL query to fetch records that are present in one table but not in another table.
select distinct empid 
from employeesalary 
minus
select distinct empid 
from managersalary 

-- 24. Write an SQL query to fetch the EmpIds that are present in both the tables –  ‘EmployeeDetails’ and ‘EmployeeSalary.
select empid 
from employeedetails 
where empid in (select empid from employeesalary)

-- 25. Write an SQL query to fetch the EmpIds that are present in EmployeeDetails but not in EmployeeSalary.
select empid 
from employeedetails 
where empid not in (select empid from employeesalary)

-- 26. Write an SQL query to fetch the employee’s full names and replace the space with ‘-’.
select replace(fullname, ' ', '-')
from employeedetails

-- 27. Write an SQL query to fetch the position of a given character(s) in a field.
select fullname, position('s' in fullname)
from employeedetails

--28. write an SQL query to display both the EmpId and ManagerId together.
select empid || '' || managerid
from employeedetails

select concat(empid, managerid)
from employeedetails

-- 29. Write a query to fetch only the first name(string before space) from the FullName column of the EmployeeDetails table.
select substring(fullname, 1, position(' ' in fullname) -1) as firstname
from employeedetails

-- 30. Write an SQL query to uppercase the name of the employee and lowercase the city values.
select upper(fullname), lower(city)
from employeedetails

-- 31. Write an SQL query to find the count of the total occurrences of a particular character – ‘n’ in the FullName field.
select fullname, 
length(fullname) - length(replace(fullname, 'n', ''))
from employeedetails

-- 32. Write an SQL query to update the employee names by removing leading and trailing spaces.
update employeedetails
set fullname = ltrim(rtrim(fullname)) 

-- 33. Fetch all the employees who are not working on any project.
select * 
from employeedetails 
where empid in (select empid from employeesalary where project is null)

-- 34. Write an SQL query to fetch employee names having a salary greater than or equal to 5000 and less than or equal to 10000.
select fullname
from employeedetails
where empid in (select empid from employeesalary where salary between 5000 and 10000)

-- 35. Write an SQL query to find the current date-time.
select now()

-- 36. Write an SQL query to fetch all the Employee details from the EmployeeDetails table who joined in the Year 2020.
select *
from employeedetails
where dateofjoining between '2020-01-01' and '2020-12-31'

-- 37. Write an SQL query to fetch all employee records from the EmployeeDetails table who have a salary record in the EmployeeSalary table.
select *
from employeedetails
where empid in (select empid from employeesalary)

select * 
from employeedetails d
where exists (select * from employeesalary s where d.empid = s.empid )

-- 38. Write an SQL query to fetch the project-wise count of employees sorted by project’s count in descending order.
select project, count(empid) projectcount
from employeesalary
group by project
order by projectcount desc

-- 39. Write a query to fetch employee names and salary records. Display the employee details even if the salary record is not present for the employee.
select d.fullname, s.salary
from employeedetails d left join employeesalary s
on d.empid = s.empid

-- 40. Write an SQL query to join 3 tables.
select * 
from A 
join B on a.x = b.x
join C on a.y = c.y

-- 41. Write an SQL query to fetch all the Employees who are also managers from the EmployeeDetails table.
select * 
from employeedetails e
inner join employeedetails m
on e.empid = m.managerid

-- 42. Write an SQL query to fetch duplicate records from EmployeeDetails (without considering the primary key – EmpId).
select fullname, managerId, dateofjoining, city, count(*)
from employeedetails
group by fullname, managerId, dateofjoining, city
having count(*) > 1

-- 43. Write an SQL query to remove duplicates from a table without using a temporary table.
delete 
from employeedetails e1
using employeedetails e2
where e1.empid > e2.empid
and e1.fullname = e2.fullname
and e1.managerid = e2.managerid
and e1.dateofjoining = e2.dateofjoining
and e1.city = e2.city

-- 44. Write an SQL query to fetch only even rows from the table.
select *
from employeedetails
where mod(empid, 2) = 0

-- 45. Write an SQL query to create a new table with data and structure copied from another table.
create table Managerdetail as
select * from employeedetails

-- 46. Write an SQL query to create an empty table with the same structure as some other table.
create table managersalary as
SELECT * FROM employeesalary
WHERE 1=0;

-- 47. Write an SQL query to fetch top n records.
select * 
from employeesalary
order by salary desc limit 1

-- 48. Write an SQL query to find the nth highest salary from a table.
select salary 
from employeesalary
order by salary desc limit 1

-- 49. Write SQL query to find the 3rd highest salary from a table without using the TOP/limit keyword.
SELECT Salary
FROM EmployeeSalary e1
WHERE 2 = (
  SELECT COUNT( DISTINCT ( e2.Salary ) )
  FROM EmployeeSalary e2
  WHERE e2.Salary > e1.Salary
)

-- 50. Consider a SalesData with columns SaleID, ProductID, RegionID, SaleAmount. 
-- Write a query to find the total sales amount for each product in each region.
select saleid, productid, regionid, saleamount
from sales_data

select productid, regionid, sum(saleamount) totalsale
from sales_data
group by productid, regionid

-- 51. Write a query to find employees who earn more than their managers.
select e.fullname employeename, m.fullname managername, es.salary employeesalary, ms.salary managersalary
from (employeedetails e join employeesalary es
on e.empid = es.empid)
inner join (managerdetails m join employeesalary ms
on m.empid = ms.empid)
on e.managerid = m.empid
where es.salary >= ms.salary

-- 52. Consider a BookCheckout table with columns – CheckoutID, MemberID, BookID, CheckoutDate, ReturnDate. 
-- Write an SQL query to find the number of books checked out by each member.
select checkoutID, MemberID, BookID, CheckoutDate, ReturnDate
from BookCheckout

select MemberID, count(*) 
from BookCheckout
group by MemberID

-- 53. Consider a StudentGrades table with columns – StudentID, CourseID, Grade. 
-- Write a query to find students who have scored an ‘A’ in more than three courses.
select StudentID, CourseID, Grade
from StudentGrades

select StudentID, count(*) CountOfStudentID
from StudentGrades
where Grade = 'A' 
group by StudentID
having count(*) > 3

-- 54. Consider a table OrderDetails with columns – OrderID, CustomerID, ProductID, OrderDate, Quantity, Price. 
-- Write a query to find the average order value for each customer.
select  OrderID, CustomerID, ProductID, OrderDate, Quantity, Price
from OrderDetails

select CustomerID, avg(price * quantity)
from OrderDetails
group by CustomerID

-- 55. Consider a table PatientVisits with Columns VisitID, PatientID, DoctorID, VisitDate, Diagnosis. 
-- Write a query to find the latest visit date for each patient.
select VisitID, PatientID, DoctorID, VisitDate, Diagnosis
from PatientVisits

SELECT PatientID, MAX(VisitDate) 
FROM PatientVisits 
GROUP BY PatientID;

-- 56. For a table FlightBookings with columns – BookingID, FlightID, PassengerID, BookingDate, TravelDate, Class, 
-- write a query to count the number of bookings for each flight class.
select BookingID, FlightID, PassengerID, BookingDate, TravelDate, Class
from FlightBookings

select FlightID, Class, count(PassengerID) NumberOfPassengerIDPerClass
from FlightBookings
group by FlightID, Class

-- 57. Consider a table FoodOrders with columns – OrderID, TableID, MenuItemID, OrderTime, Quantity. 
-- Write a query to find the most ordered menu item.
select OrderID, TableID, MenuItemID, OrderTime, Quantity
from FoodOrders

select MenuItemID, count(MenuItemID * Quantity) CountOfItem
from FoodOrders
group by MenuItemID 
order by CountOfItem desc limit 1

-- 58. Consider a table Transactions with columns – TransactionID, CustomerID, ProductID, TransactionDate, Amount. 
-- Write a query to find the total transaction amount for each month.
select TransactionID, CustomerID, ProductID, TransactionDate, Amount
from Transactions

select Month(TransactionDate) month, sum(Amount) total
from Transactions
group by Month(TransactionDate)

-- 59. Consider a table EmployeeAttendance with columns – AttendanceID, EmployeeID, Date, Status.
-- Write a query to find employees with more than 5 absences in a month.
select AttendanceID, EmployeeID, Date, Status
from EmployeeAttendance

select EmployeeID, month(date) as month, count(*) as Absences
from EmployeeAttendance
where Status = 'Absence'
group by EmployeeID, month
having Absences > 5
