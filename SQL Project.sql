create database class;
create database datamites;
use datamites;




create table student(
                     Rollnum int,
                     name varchar (35),
                     Age int);
drop database datamites;


                     
                     
desc student;                    
drop tABLE STUDEnt;

#22.04.26

create table emp(
                 ID int,
                 name varchar(35),
                 age int);

insert into emp()
values
(101,  "Ram",  4),
(102,  "laksh",  3),
(103,  "shree",  2),
(104,  "kaya",  1);

create database datamites;

use datamites;

create table student(
                     rollnum int,
                     name varchar(35),
                     age int);
select  *  from  emp;
select  name,  age from emp;     
select  * from  emp  where id = 104;               
 
 create table emp_harshit(
      name VARCHAR(255),
      AGE INT,
      salary  int,
      department  varchar(255));
      
INSERT INTO  emp_harshit  (name,  age,  salary,  department)
values
('Kareena  Kapoor  Khan',  40,  35000,  'Dancing'),
('Ranbir  Kapoor',  38,  40000,  'Acting'),
('Alia  Bhatt',  28,  45000,  'Acting'),
('Ajay  Devgn',  52,  50000,  'Singing'),
('Shah  Rukh  Khan',  45,  45000,  'Acting'),
('Akshay  Kumar',  53,  35000,  'Dancing'),
('Priyanka Chopra',  38,   65000,  'Acting'),
('Kangana Ranaut',  34,  70000,  'Acting'),
('Deepika Padukone',  35,  75000,  'Acting'),
('Shraddha Kapoor',  33,  80000,  'Dancing'),
('Ranveer  Singh',  35,  85000,  'Dancing'),
('Anushka  Sharma',  33,  90000,  'Acting'),
('Salman  Khan',  50,  95000,  'Acting'),
('Amitabh Bachchan',  78,  100000,  'Acting'),
('Varun  Dhawan',  34,  20000,  'Singing');

select  *  from  emp_harshit;

select  *  from  emp_harshit
where  department  =  "Singing";

select  *  from  emp_harshit
order by salary  desc  ; 

select  *  from emp_harshit
order by  salary desc  limit  3  ;

select  *  from  emp_harshit
order  by  salary  desc  limit  3  offset  2;

                     
truncate table emp_harshit;


select sum(salary)  from  emp_harshit;


select  min(salary)  from  emp_harshit;


select  max(salary)   from  emp_harshit;

# 23.04.26

select  department,  sum(salary)
from emp_harshit  group by  department;

select   department,  sum(salary)
from  emp_harshit  group by  department 
having  sum(salary)   <  300000;

create table  voters(
                     id   int  unique,
                     name varchar(35),
                     age int);


select  *   from  voters;


select  *  from  emp_harshit
order by salary limit 5 offset 2;


create  table  student(
					   studentid  int  auto_increment,
                       first_name  varchar(25)  not null,
                       last_name  varchar(35)  not  null,
                       age  int,
                       primary  key(studentid));

insert into student
values
(1,   "Krishna",  "Naman",  31),
(2,   "Ram",   "Sharma",   31),
(3,   "Sam",   "Joe",   31);


insert  into  student  (first_name,  last_name,   age)
values
("John",   "Doe",   28),
("Emily",   "Smith",  22),
("Michael",   "Jophnson",  25),
("Sarsh",  "Brown",  29),
("David",  "Wilson",  26);


create table  department(
                         student_id  int,
                         department_name varchar(50));
	
 insert  into  department
 values
 (1,  "Math"),
 (2,   "English"),
 (3,  "Math"),
 (4,  "Math"),
 (5,  "computer science"),
 (22,  "Math"),
 (23,   "English");

select  *  from  department;

select  first_name,   department_name  from 
student inner  join  department  on
student.studentid  =  department.student_id;


# 27.04.

select  *  from  department;

select  *  from student;

select  *  from  student  inner join  department 
on student.studentid = department.student_id;


select  *  from  student left join  department 
on student.studentid = department.student_id;


select  *  from  student right join  department 
on student.studentid = department.student_id;


create table emp_27(
          emp_id int,
          emp_name varchar(25),
          manager_id int
          );
          
insert  into  emp_27(emp_id,  emp_name,  manager_id)
values
(1,  "Aman",  3),
(2,  "Diksha",  4),
(3,  "Mohan",  2),
(4,  "Sarita",  3)
;


select  t1.emp_name  as employee_name,  t2.emp_name  as  manager_name
from  emp_27  as t1
join  emp_27  as  t2
on t1.manager_id  =  t2.emp_id;

create table emp_del(
          emp_id int,
          emp_name varchar(25),
          manager_id int
          );
          
          
insert  into  emp_del(emp_id,  emp_name,  manager_id)
values
(1,  "Aman",  3),
(2,  "Diksha",  4),
(3,  "Mohan",  2),
(4,  "Sarita",  3)
;



delete  from  emp_name where emp_id = 2;


select  *  from student;
# delete


delete  from  student where studentid  = 3;
select  *  from student;


# cross join

select  *  from  student  cross join  department;

# update 

#alter

desc emp_27;

alter table emp_27
add column age int ;

desc emp_27;

alter table emp_27
modify age varchar(200);

desc  emp_27;


# 28.04.26
# Window function

create  table  eve(
                 name varchar(35),
                 department varchar(35),
                 salary int);
                 
                 
insert into eve()
values
("Ram",  "HR",  35000),
("Shaym",  "Tech",  45000),
("Meera",  "HR",  50000),
("Geeta",  "Tech",  15000),
("Seeta",  "Tech",  23000),
("Mohan",  "HR",  26000),
("Malini",  "HR",  80000);


select  * from eve;

select  *  ,  dense_rank() over (order by  salary desc) from eve;

select  * , dense_rank () over ( order by salary desc ) as salary_rank 
from eve;


set sql_safe_updates = 0;

set sql_safe_updates = 1;


select  *  from  eve 
order by salary desc limit 3;

select  * from (select name, salary  , dense_rank () over ( order by salary desc ) as salary_rank 
from eve) as eve
where salary_rank <=3;

select  *  from eve
order  by  salary  desc limit 3 offset 2;

select  * , dense_rank () over ( order by salary desc ) as salary_rank 
from eve limit 3;

select  * , dense_rank () over ( order by salary desc ) as salary_rank 
from eve limit 3 offset 2;


select  * , sum(salary)  over  (order by salary asc) as running_sum
from eve;


select  * , max(salary)  over (order by name ) as salary_rank from eve;

select  * , min(salary)  over (order by name ) as salary_rank from eve;

create  table intro (
                     id int,
                     name varchar(35),
                     age int,
                     constraint primary key (id, name, age));
                     
desc intro;


create  table  intro1(
                     id int primary key,
                     name varchar(35),
                     age int);
                     
desc intro1;

drop table intro;

# 29.04.26
create table intro(
                   id int ,
                   Name varchar (35),
                   age int,
                   constraint primary key (id, Name,  age));
                   
desc intro;

select  * from  student;

# foreign key

select  *  from student,  department 
where  student.studentid = department.studentid ;


create table department29(
                        studentid int,
                        department_name varchar(50),
                        constraint  foreign key(studentid) references student(studentid));
                        
select *  from department29;

# default

create table  empd29(
                 id int,
                 name varchar(35),
                 age int default 18);
                 
insert into empd29()
values
(101,  "Ram",  3),
(102,  "Shayam", 4);

insert into empd29(id, name)
values
(103,  "Harsh");

select  *  from empd29;

#check 

create  table emptable(
                       id int,
                       name varchar(35),
                       age int check ( age >= 18));
                       
                       
insert  into  emptable()
values
(101, "Ram", 12);
			
                        
insert  into  emptable()
values
(101, "Ram", 22); 


create table emptable01(
						id int,
                        name varchar(35),
                        age int,
                        constraint chk_age check ( age >= 18));
                        
insert into emptable01()
values
(104,  "Shiv", 12);


                        
insert into emptable01()
values
(104,  "Shiv", 25);


                       


# between

select *  from  emp_harshit;

select *  from emp_harshit
where age between 25 and 35;



# between in

select  *  from  emp_harshit
where  department  in ("Acting",  "Dancing");


select  *  from  emp_harshit
where  department  in ("Acting", "Singing");


#  subquary

select  *  from  emp_harshit
where  salary > ( select avg (salary) from emp_harshit);


select  *  from emp_harshit
where  age > ( select avg (age) from emp_harshit);

# 30.04.26
Select  *  from emp_harshit;

#Que - read all column information those employee getting maximun salary in their department.

with my_cte as
 (select  * , dense_rank () over ( partition by department order by salary desc) as salary_rank 
from emp_harshit) 
select * from my_cte where salary_rank = 1
;

