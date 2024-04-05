--1.Write a query to count the number of employee and commission is 0.25 to 0.35.  
select count (*) from employees where COMMISSION_PCT between 0.25 and 0.35;
 select * from employees;

/*2. Write a query to get the job ID and maximum salary of the employees 
where maximum salary is greater than or equal to 5000.*/ 
select job_id , salary from employees where salary >= 5000;
 

 --3. Print name start with 's' and print it proper sequence. 
select * from employees where first_name like 'S_%' order by first_name;
 

--4. Write a query to get the average salary and number of employees working the department 100. 
select count(DEPARTMENT_ID), avg(salary) from employees where DEPARTMENT_ID=100;

--5. Write firstname having length 5+ characters 
select first_name from employees where length(first_name)>5 ;
 

--6. Print the sum salary department wise and order properly . 
select DEPARTMENT_ID,count(DEPARTMENT_ID),sum(salary) from employees group by DEPARTMENT_ID 
order by DEPARTMENT_ID;
 

--7. Write a query to get the department ID and the minimum payable in each department.
select DEPARTMENT_ID,min(salary)from employees group by DEPARTMENT_ID order by DEPARTMENT_ID;

 --8. Print how many employees are work under manager(sequence wise).  
select count(*) from employees where manager_id in (205,108,201,114) group by manager_id order by count(*);
 

--9. Write a query to get the maximum salary of an employee working in IT_PROG department.  
select max(salary)from employees where job_id = 'IT_PROG';
 

--10. Print lowest,highest and average salary department wise 
select DEPARTMENT_ID,min(salary), max(salary),avg(salary) from employees where DEPARTMENT_ID is not null
group by DEPARTMENT_ID;