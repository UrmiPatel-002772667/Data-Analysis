create table Student (
	student_id integer,
	first_name varchar(30),
	last_name varchar(30),
	gpa float,
	enrollment_date date,
	major varchar(50)
)
select * from student
insert into student values (201, 'Shivansh', 'Mahajan', 8.79, '2021-09-01 09:30:00', 'Computer Science');
insert into student values (202, 'Umesh', 'Sharma', 8.44, '2021-09-01 08:30:00', 'Mathematics');
insert into student values (203, 'Rakesh', 'Kumar', 5.60, '2021-09-01 10:00:00', 'Biology');
insert into student values (204, 'Radha', 'Sharma', 9.20, '2021-09-01 12:45:00', 'Chemistry');
insert into student values (205, 'Kush', 'Kumar', 7.85, '2021-09-01 08:30:00', 'Physics');
insert into student values (206, 'Prem', 'Chopra', 9.56, '2021-09-01 09:24:00', 'History');
insert into student values (207, 'Pankaj', 'Vats', 9.78, '2021-09-01 02:30:00', 'English');
insert into student values (208, 'Navleen', 'Kaur', 7.00, '2021-09-01 06:30:00', 'Mathematics');

create table program (
	student_ref_id integer,
	program_name varchar(50),
	program_start_date date
)

insert into program values (201, 'Computer Science', '2021-09-01 00:00:00');
insert into program values (202, 'Mathematics', '2021-09-01 00:00:00');
insert into program values (208, 'Mathematics', '2021-09-01 00:00:00');
insert into program values (205, 'Physics', '2021-09-01 00:00:00');
insert into program values (204, 'Chemistry', '2021-09-01 00:00:00');
insert into program values (207, 'Psychology', '2021-09-01 00:00:00');
insert into program values (206, 'History', '2021-09-01 00:00:00');
insert into program values (203, 'Biology', '2021-09-01 00:00:00');

select * from program

create table Scholarship (
	student_ref_id integer,
	Scholarship_amount integer,
	scholarship_date date
)

insert into scholarship values (201, 5000, '2021-10-15 00:00:00');
insert into scholarship values (202, 4500, '2022-08-18 00:00:00');
insert into scholarship values (203, 3000, '2022-01-25 00:00:00');
insert into scholarship values (201, 4000, '2021-10-15 00:00:00');

select * from Scholarship

-- 1. Write a SQL query to fetch “FIRST_NAME” from the Student table in upper case and use ALIAS name as STUDENT_NAME.
select upper(first_name) Student_Name
from Student

-- 2. Write a SQL query to fetch unique values of MAJOR Subjects from Student table.
select distinct major
from student

-- 3. Write a SQL query to print the first 3 characters of FIRST_NAME from Student table.
select substring(first_name, 1, 3) as initial
from student

-- 4. Write a SQL query to find the position of alphabet (‘a’) int the first name column ‘Shivansh’ from Student table.
select position('a' in first_name) 
from student
where first_name = 'Shivansh'

-- 5. Write a SQL query that fetches the unique values of MAJOR Subjects from Student table and print its length.
select distinct major, length(major)
from student

-- 6. Write a SQL query to print FIRST_NAME from the Student table after replacing ‘a’ with ‘A’.
select replace(first_name, 'a', 'A') 
from student

-- 7. Write a SQL query to print the FIRST_NAME and LAST_NAME from Student table into single column COMPLETE_NAME.
select first_name || ' ' || last_name as full_name
from student

-- 8. Write a SQL query to print all Student details from Student table order by FIRST_NAME Ascending and MAJOR Subject descending .
select *
from student
order by first_name asc, major desc

-- 9. Write a SQL query to print details of the Students with the FIRST_NAME as ‘Prem’ and ‘Shivansh’ from Student table.
select * 
from student
where first_name in ('Prem', 'Shivansh')

-- 10. Write a SQL query to print details of the Students excluding FIRST_NAME as ‘Prem’ and ‘Shivansh’ from Student table.
select * 
from student
where first_name not in ('Prem', 'Shivansh')

-- 11. Write a SQL query to print details of the Students whose FIRST_NAME ends with ‘a’.
select * 
from student
where first_name like '%a'

-- 12. Write an SQL query to print details of the Students whose FIRST_NAME ends with ‘a’ and contains six alphabets.
select * 
from student
where first_name like '_____a'

-- 13. Write an SQL query to print details of the Students whose GPA lies between 9.00 and 9.99.
select *
from student
where GPA between 9.0 and 9.99

-- 14. Write an SQL query to fetch the count of Students having Major Subject ‘Computer Science’.
select major, count(*)
from student
where major = 'Computer Science'
group by major

-- 15. Write an SQL query to fetch Students full names with GPA >= 8.5 and <= 9.5.
select first_name || ' ' || last_name as full_name
from student
where GPA between 8.5 and 9.5

-- 16. Write an SQL query to fetch the no. of Students for each MAJOR subject in the descending order.
select major, count(*) NoOfStudents
from student
group by major 
order by count(*) desc

-- 17. Display the details of students who have received scholarships, including their names, scholarship amounts, and scholarship dates.
select *
from student s
inner join scholarship sc
on s.student_id = sc.student_ref_id

select s.first_name, s.last_name,sc.scholarship_amount, sc.scholarship_date
from student s
inner join scholarship sc
on s.student_id = sc.student_ref_id

-- 18. Write an SQL query to show only odd rows from Student table.
select * 
from student
where MOD (student_id, 2) <> 0

-- 19. Write an SQL query to show only even rows from Student table.
select * 
from student
where MOD (student_id, 2) = 0

-- 20. List all students and their scholarship amounts if they have received any. If a student has not received a scholarship, display NULL for the scholarship details.
select s.first_name, s.last_name,sc.scholarship_amount, sc.scholarship_date
from student s
left join scholarship sc
on s.student_id = sc.student_ref_id

-- 21. Write an SQL query to show the top n (say 5) records of Student table order by descending GPA.
select * 
from student
order by gpa desc 
fetch first 5 rows only

-- 22. Write an SQL query to determine the nth (say n=5) highest GPA from a table.
select * 
from student
order by gpa desc 
offset 4 rows
fetch first row only

WITH RankedStudents AS (
    SELECT *, 
           ROW_NUMBER() OVER (ORDER BY gpa DESC) AS rank
    FROM student
)
SELECT *
FROM RankedStudents
WHERE rank = 5;

-- 23. Write an SQL query to determine the 5th highest GPA without using LIMIT keyword.
SELECT * FROM Student s1 
WHERE 5 = (
    SELECT COUNT(DISTINCT (s2.GPA)) 
    FROM Student s2
    WHERE s2.GPA >= s1.GPA
)

-- 24. Write an SQL query to fetch the list of Students with the same GPA.
select s.* 
from student s, student s2
where s.GPA = s2.gpa and s.student_id = s2.student_id

-- 25. Write an SQL query to show the second highest GPA from a Student table using sub-query.
select max(GPA) 
from student
where GPA not in (select max(GPA) from student)

-- 26. Write a SQL query to show one row twice in results from a table.
select * 
from student 
Union all
select * 
from student
order by student_id

-- 27. Write an SQL query to list STUDENT_ID who does not get Scholarship.
select student_id
from student 
where student_id not in (select student_ref_id from scholarship)

-- 28. Write an SQL query to fetch the first 50% records from a table.
select * 
from student
limit (SELECT COUNT(STUDENT_ID)/2 FROM Student)

-- 29. Write an SQL query to fetch the MAJOR subject that have less than 4 people in it.
select major, count(major) studentInCourse
from student
group by major
having count(major) < 4

-- 30. Write an SQL query to show all MAJOR subject along with the number of people in there.
select major, count(major) studentInCourse
from student
group by major

-- 31. Write an SQL query to show the last record from a table.
select *
from student
order by student_id desc
limit 1

select * 
from student
where student_id = (select max(student_id) from student)

-- 32. Write an SQL query to fetch the first row of a table.
select *
from student
where student_id = (select min(student_id) from student)

select *
from student
order by student_id asc
limit 1

-- 33. Write an SQL query to fetch the last five records from a table.
select *
from (
	select * from student
	order by student_id desc
	limit 5) as subquery
order by student_id

-- 34. Write an SQL query to fetch three max GPA from a table using co-related subquery.
select * 
from (select *
from student
order by gpa desc limit 3)
order by student_id

SELECT DISTINCT GPA FROM Student S1 
WHERE 3 >= (SELECT COUNT(DISTINCT GPA) 
FROM Student S2 
WHERE S1.GPA <= S2.GPA) 
ORDER BY S1.GPA DESC;

-- 35. Write an SQL query to fetch three min GPA from a table using co-related subquery.
select * 
from (select *
from student
order by gpa asc limit 3)
order by student_id

SELECT DISTINCT GPA FROM Student S1 
WHERE 3 >= (SELECT COUNT(DISTINCT GPA) 
FROM Student S2 
WHERE S1.GPA >= S2.GPA) 
ORDER BY S1.GPA;

-- 36. Write an SQL query to fetch nth max GPA from a table.
select max(gpa)
from student

select distinct gpa from student s1
where n >= (select count(distinct gpa) 
from student s2 
where s1.gpa <=s2.gpa)
order by s1.gpa desc

-- 37. Write an SQL query to fetch MAJOR subjects along with the max GPA in each of these MAJOR subjects.
select major, max(gpa)
from student
group by major

-- 38. Write an SQL query to fetch the names of Students who has highest GPA.
select first_name, last_name, GPA
from student
order by GPA desc limit 1

select first_name, last_name, GPA
from student
where gpa = (select max(gpa) from student)

-- 39. Write an SQL query to show the current date and time.
select now()

-- 40. Write a query to create a new table which consists of data and structure copied from the other table (say Student) or clone the table named Student.
create table named_table 
as select * from student

-- 41. Write an SQL query to update the GPA of all the students in ‘Computer Science’ MAJOR subject to 7.5.
update student set gpa = 7.5 where major = 'Computer Science'

-- 42. Write an SQL query to find the average GPA for each major.
select major, avg(GPA)
from student
group by major

-- 43. Write an SQL query to show the top 3 students with the highest GPA.
select first_name, GPA
from student 
order by GPA desc limit 3

-- 44. Write an SQL query to find the number of students in each major who have a GPA greater than 7.5.
select major, count(student_id)
from student
where gpa > 7.5
group by major

-- 45. Write an SQL query to find the students who have the same GPA as ‘Shivansh Mahajan’.
select * 
from student
where gpa = (select gpa from student where first_name = 'Shivansh' and last_name = 'Mahajan')
