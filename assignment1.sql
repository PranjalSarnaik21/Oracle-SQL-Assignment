--Assignment-1
--1)create table customer(customer_name char(20),customer_street char(30),customer_city(30))
create table customer(customer_name char(20),customer_street char(30),customer_city char(30));

--2)add column phone number (10),country char(20). 
alter table customer add(phone number(10),country char(20));

--3)Rename column name phone_number to mobile. 
alter table customer rename column phone to mobile;

--4)create table branch(branch_name char(15), branch_city char(30)). 
create table branch(branch_name varchar(30));

--5)Modify column name branch_name datatype to varchar(20). 
alter table branch modify (branch_name varchar(20));

--6)Insert three records in customer table.
insert into customer(CUSTOMER_NAME,CUSTOMER_STREET,CUSTOMER_CITY,MOBILE,COUNTRY)
values('aju','hhkj','pune',667,'spain');
select * from customer;

--7)create new table cust_info from existing table customer.
create table cust_info as select * from customer;

--8)truncate data from cust_info. 
truncate table cust_info;

--9)show full description of table customer and branch. 
desc customer;
describe branch;

--10)insert data in cust_info from existing table customer. 
insert into cust_info(CUSTOMER_NAME,CUSTOMER_STREET,CUSTOMER_CITY,MOBILE,COUNTRY)
select CUSTOMER_NAME, CUSTOMER_STREET,CUSTOMER_CITY,MOBILE,COUNTRY from customer;
select * from cust_info;

--11)insert 5 records into branch.
insert into branch values ('malegaon');
insert into branch values ('washim');
insert into branch values ('akola');
insert into branch values ('pune');
insert into branch values ('karad');

--12)Rename branch table to branch_info.
alter table branch rename to branch_info;