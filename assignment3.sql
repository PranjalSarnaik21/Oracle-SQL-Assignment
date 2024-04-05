--1) Concate Street_address,postalcode,city with ‘,’ from location table. 
select street_address||' '||postal_code ||' '||city from locations;

--2)Select first_name, last_name  and dep_id from employees and concate
--f_name and last_name with space. 
--Use below literal. 
--Ex steven king ‘has a department id is’ 
select first_name||' '||last_name || 'has a department id is'||department_id from employees;

--3)My first name is  steven and I am from ‘IT_PROG’ department.
select 'my first name is'||first_name||'and i am from'||job_id from employees;

--4)Show structure of departments table. Select all data from table. 
desc departments;
select * from departments;

--5)Show table data like (job_title ) ’salary is ‘ max_salary 
select * from jobs;
select job_title||'salary is'||max_salary from jobs;
--ex: President salary is 40000 

--6) location id, street address, postal code, city  give alias name  full address 
--and concate all coloumn with ‘,’
select * from locations;
select location_id||','||street_address||','||postal_code||','||city full_address from locations;

--7)Eliminate duplicate rows of job_id. 
select distinct job_id from jobs;

--8)Display the name of all employees whose DEPARTMENT ID is 60, 110,80,90 with STATEMENT 
--{Department id of (NAME) is (DEPARTMENT ID)} 
select 'Department id of'||first_name||'is'||department_id from employees
where department_id=60 or department_id=110 or department_id=80 or department_id=90;

--9)Write a query for increment of salary by 5000 of EMPLOYEE ID 170,175,180. 
update employees set salary=salary+5000 where employee_id=170 or employee_id=175 or employee_id=180;

--10)Display STATEMENT: {(FULL NAME) is working in (job_id) with (employee_id).} 
select first_name||last_name||'is working in'||job_id||'with'||employee_id from employees;

--11)Write a query for Employees, who are working as PU CLEARK, ST CLEARK, SH CLEARK Having 
--salary between 5000 and 15000 
select * from employees
where  salary between 5000 and 15000 and job_id in ('PU_CLERK', 'ST_CLERK', 'SH_CLERK') ;

--12)Display employees FULL NAME who NOT having {department Id = 80} 
select first_name||last_nAME full_name from employees where not department_id=80;
select first_name||last_nAME full_name from employees where department_id<>80;

--13)Write a query to decrement the salary by 3000 of Employee id 201,204,205. 
select employee_id,salary ,salary-3000 from employees where employee_id in (201,204,205);

--14)Write a query for employees whose salary are greater than or equal to 1000 
--and job id having 'CLERK' at the end. 
select * from employees where salary>=1000 and job_id like '%CLERK';

--15)Write a query to get the employee id, first_name and last_name 
--for those employees do not earn any commission. 
select employee_id,first_name,last_name from employees where COMMISSION_PCT is null;

--16)Display full name,job id, salary of employee from IT_PROG 
--and SA_REP department whose salary between 2000 and 15000 and display their annual salary. 
select * from employees;
select first_name,last_name,job_id, salary ,salary*12 annual_salary from employees
where job_id in('SA_REP','IT_PROG')and salary between 2000 and 15000;

--17)Display full name of employee and print the list in descending whose email id start with J . 
select first_name,last_name,email from employees where email like 'J%' order by email desc;

--18)Display the name of employee who hired in march and their job is SA_REP and manager id is 146,147,148. 
select first_name,hire_date,job_id,manager_id from employees 
where hire_date like '%___03___%' and job_id='SA_REP' and manager_id in(146,147,148);

--19)write a query to display employee name and hire date ,
--give any alias .(Use the literal—myself(emp_name), I hired on(hire_date). 
select 'myself'||first_name||last_name||'I hired on'||hire_date intro from employees;

--20)display all employee whose MANAGER_ID is greater than 103 with having last digit of PHONE_NUMBER is 6 
select *from employees where manager_id>103 and phone_number like'%6';

--21)Display all records who have john, 'Alexander'anywhere in name column. 
select * from employees where first_name in ('John','Alexander')or last_name in ('John','Alexander');
 