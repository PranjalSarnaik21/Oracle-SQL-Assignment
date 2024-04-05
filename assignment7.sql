--Exercise on Conversion function 

/*write a SQL query to list the employees’ name, increased their salary by 15%, 
and expressed as number of Dollars{($ salary)($24000)}.*/
select first_name, '$'|| salary*1.15 from employees;
select first_name,concat('$',salary+(salary * 15/100))from employees;

/*write a SQL query to find those employees with hire date in the format like February 22, 1991.
Return employee ID, employee name, salary, hire date.*/ 
select EMPLOYEE_ID,FIRST_NAME,SALARY ,to_char (hire_date , 'fm month,dd,yyyy') from employees;

/*write a SQL query to count the number of characters except the spaces for each employee name.
Return employee name length.*/
select first_name, length(first_name) from employees;
select concat(first_name,last_name),length(concat(first_name,last_name)) from employees;

/*From the following table, write a SQL query to identify those employees 
whose salaries exceed 3000 after receiving a 25% salary increase. 
Return complete information about the employees.*/
select *  from employees where (salary *1.25) > 3000;

/*write a SQL query to find out which employees joined in the month of January.
Return complete information about the employees.*/
select * from employees where extract (month from hire_date) = 01;

/*write a SQL query to find those employees who joined in any month, 
but the name of the month contain the character ‘A’ in second position. 
Return complete information about the employees.*/
select * from employees where to_char(hire_date, 'fm month,dd,yyyy') like '__a%';

/*write a SQL query to find those employees whose name ends with 'S' and six characters long.
Return complete information about the employees.*/ 
select * from employees where first_name like '%_s' and length(first_name)=6;

/*write a SQL query to find those employees who joined in 90's.
Return complete information about the employees. */
select * from employees where extract ( year from hire_date) BETWEEN 2002 and 2003;
select * from employees where hire_date between '01-01-02' and '31-12-03';

--write a SQL query to calculate total purchase amount of all orders. 
--Select sum(price) from purchase_table; 
select sum(orders) total_purchase_amount from purchase;