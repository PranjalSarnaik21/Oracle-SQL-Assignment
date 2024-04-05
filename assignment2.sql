Assignment-2 

--1)Create table employ_details (id int ,name varchar(30),age number(3),address varchar(20),salary float). 
/*ID | NAME     | AGE | ADDRESS   | SALARY   | 

+----+----------+-----+-----------+----------+ 

|  1 | Ramesh   |  32 | Ahmedabad |  2000.00 | 

|  2 | Khilan   |  25 | Delhi     |  1500.00 | 

|  3 | kaushik  |  23 | Kota      |  2000.00 | 

|  4 | Chaitali |  25 | Mumbai    |  6500.00 | 

|  5 | Hardik   |  27 | Bhopal    |  8500.00 | 

|  6 | Komal    |  22 | MP        |  4500.00 | 

|  7 | Muffy    |  24 | Indore    | 10000.00 | */
create table employ_details(id int ,name varchar(20),age number(3),adress varchar(20),salary float);
insert into employ_details values (1,'Ramesh',32,'ahmedabad',2000.00);
insert into employ_details values (2,'Khilan',25,'Delhi',1500.00);
insert into employ_details values (3,'Kaushik',23,'Kota',2000.00);
insert into employ_details values (4,'Chaitali',25,'Mubai',6500.00);
insert into employ_details values (5,'Hardik',27,'Bhopal',8500.00);
insert into employ_details values (6,'Komal',22,'MP',4500.00);
insert into employ_details values (7,'Muffy',24,'Indore',10000.00);
select * from employ_details;

--3)Update salary and age from employ_details whose id is 6.
update employ_details set salary=16000 , age=30 where id=6;

--4)Delete info of employ from employ_details whose name is ‘Hardik’. 
delete from employ_details where name='Hardik';

--5)Update address of employ to ‘pune’ whose existing address is ‘mumbai’ and ‘MP’. 
update employ_details set adress='pune' where adress='Mubai'or adress='MP';

--6)Give 1000 bonus to employees whose id is 4 and 7. 
update employ_details set salary=salary+1000 where id=4 or id=7;

--7)Display name ,age  and salary from employ_details . 
select name,age,salary from employ_details;

--8)Concate name ,age and address of employees and display with alias name Full_information . 
select name||age||adress as FULL_information from employ_details;
select name||age||adress FULL_information from employ_details;

--9)Display name and salary of employees by using literals ‘ salary is ’.  
select name ||'salary is' || salary from employ_details;

--10)Display distinct name from employ_details.
select distinct name from employ_details;