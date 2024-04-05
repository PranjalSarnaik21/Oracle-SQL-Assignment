--1)Write a query to list the number of jobs available in the employee's table.? 
select count(job_id) from employees;

--2)Write a query to get the total salaries payable to employees. 
select sum(salary) from employees;
select * from employees;
--3)Write a query to get the maximum salary of an employee working as a Programmer. 
select max(salary)from employees where job_id='IT_PROG';

--4)Write a query to get the average salary and number of employees working the department 90 
select count(*),avg(department_id) from employees where department_id=90;

--5)Write a query to get the average salary and number of employees working the department 90   

--6)write a query to get the difference between the highest and lowest salaries. 
select max(salary)- min(salary)from employees;

--7)Write a query to get the average salary for each job ID excluding programmer. 
select avg(salary) from employees where not job_id='IT_PROG' ;

--8)Write a query to get the total salary, maximum, minimum, 
--average salary of employees (job ID wise), for department ID 90 only. 
select sum(salary),max(salary),min(salary),avg(salary)from employees
where department_id=90 group by job_id;

--9)Write a query to get the average salary for all departments employing more than 10 employees. 
select count(*),avg (salary),department_id from employees group by department_id having count(*)>10;

--10)Write a SQL query to count the number of employees in each department. 
select count(*) number_of_employees, department_id from employees 
where department_id is not null group by department_id;
--Return department code and number of employees. 