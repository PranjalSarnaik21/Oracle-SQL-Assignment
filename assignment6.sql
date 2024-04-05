--1)Write an SQL query to fetch “FIRST_NAME” from Employee table in upper case. 
select upper(first_name),first_name from employees;

--2)Write an SQL query to fetch “LAST_NAME” from Employee table in INITCAP case. 
select initcap(last_name),last_name from employees;

--3)Write an SQL query to fetch “JOB_ID” from Employee table in lower case. 
select lower(job_id),job_id from employees;

--4)Write an SQL query to print the first three characters of? FIRST_NAME from Employee table 
select substr (first_name,1,3),first_name from employees;

/*5)Write an SQL query to find the position of the alphabet (‘a’) 
in the first name column ‘Alexander’ from employee table. */
select first_name, instr (first_name,'a') from employees;

/*6)an SQL query that fetches the unique values of Commission_pct 
from Employee Write s  table and prints its length.*/ 
SELECT UNIQUE(COMMISSION_PCT),LENGTH(COMMISSION_PCT)FROM EMPLOYEES;

/*7)Write an SQL query to print all Employee Employees table 
order by FIRST_NAME Ascending and DEPARTMENT_ID Descending. */
select * from employees order by first_name asc ,department_id desc;

/*8)'www.3ritech.com' remove'www'string from left side. */
select ltrim('www.3ritech.com','www')from dual;

/*9'www.3ritech.com' remove'.com'string from right side.*/ 
select rtrim('www.3ritech.com','.com')from dual;

/*10)Add  5 ‘@’ character from starting position or leftside of string.*/ 
select lpad('ab',7,'@')from dual;

--11)Add  5 ‘@’ character from ending position or rightside of string. 
select rpad('ab',7,'@')from dual;

--12)add _ from leftside of 'sqltutorials' 
select lpad('sqlttorials',12,'$')from dual;

--13)add $ from rightside of 'sqlttorials' 
select rpad('sqlttorials',12,'$')from dual;

--14)both side add 3 ‘&’ to first_name column of employees table &&&(first_name)&&& from employees. 
select lpad(rpad(first_name,length(first_name)+3,'&'),length(first_name)+6,'&')from employees;

 --15)Replace s with ‘$’ from “sqltutorials” 
select replace('sqltutorials','s','$')from dual;

--16)Replace ‘a with ‘@’ in first_name of employees.  
select replace (first_name,'a','@'),first_name from employees;

--17)Reverse last_name of  employees. 
select reverse(last_name),last_name from employees;

 /*18)Combine first_name and last_name with space and then display only last_name. 
[help—use following fun Substr,instr,concate] */
SELECT CONCAT(FIRST_NAME,CONCAT(' ',LAST_NAME))AS FULLNAME,
SUBSTR(CONCAT(CONCAT(FIRST_NAME,' '),LAST_NAME),
INSTR(CONCAT(CONCAT(FIRST_NAME,' '),LAST_NAME),' ')+1) 
FROM EMPLOYEES;

--19)2345.67895643 round it 3 
select round(2345.67895643,3) from dual;--2345.679

--20)2345.67895643 trunc it 3 
select trunc(2345.67895643,3) from dual;--2345.678

--21)find mod of 56 % 3  
select mod(56,3) from dual;--2

--22)reverse "programming_language" 
select reverse('programming_language')from dual;

--23)add 3 '&' char to starting of 'sql' 
select lpad ('sql',6,'&') from dual;

--24) from 'sql'add both side 3'#'   "###sql###" 
select lpad(rpad('sql',6,'#'),9,'#')from dual;

--25)remove ###$$$ from "###$$$sqlprograming$$$$#### 
select ltrim(rtrim('###$$$sqlprograming$$$$####','###$$$'),'###$$$')from dual;
  

 

 

 