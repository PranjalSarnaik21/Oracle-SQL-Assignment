--1)Display the short description of employees table.? 
desc employees;

--2)Display unique salary values from employee tables.? 
select distinct salary from employees;

--3)Display unique last name values from employees table.? 
select unique last_name from employees;

--4)Display records of employees whose department_id ‘90’? 
select * from employees where department_id=90;

--5)Display records of employees where salary less than 15000 and their job_id is ‘SA_MAN’. 
select * from employees where salary<15000 and job_id='SA_MAN';
SELECT * FROM EMPLOYEES;

--6)Display records of employees where hire_date is in a range of ‘01/06/2003’ to ‘01/06/2006’?. 
select * from employees where hire_date between '01-06-03' and '01-06-06';

--6)Find records of employees where job_id’s are ‘SA_MAN SA_REP and IT_PROG’? 
select * from employees where job_id in ('SA_MAN', 'SA_REP', 'IT_PROG');

--7)Find records of employees where department_id not in ’90, 60, 50’?.  
select * from employees where department_id not in (90,60,50);

--8)Sort departments table according to department_name column in descending form? 
select * from departments order by department_name desc;
 