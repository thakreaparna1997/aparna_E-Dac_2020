use assignment2;
/*
1)	create table Department with dept_id(integer),dept_name(varchar(50)).
dept_id will be foreign key in Employee table.*/
create table department(dept_id integer(20) primary key ,dept_name varchar(50));
drop table department;
/*dept_id		dept_name
1		Finance
2		Training
3		Marketing*/
insert into department values(1,"finance"),(2,"training"),(3,"marketing");
/*
empid	emp_name	dept_id	salary	 manager
1	Arun		1		8000	  4
2 	kiran		1		7000	  1	
3	Scott		1		3000	  1
4	Max		2		9000	
5	Jack		2		8000	  4
6	King				6000	  1*/
create table employee1(emp_id int,emp_name varchar(20),dept_id int(10),salary int(20),manager int, constraint fk_deptEmp foreign key (dept_id) references department(dept_id));

-- select all from authors sort ascending by author name.
select * from authors order by aname asc;
-- select all from publishers sort descending by publisher name
select * from publishers order by pname desc;

/*. select all data and sum of salary from employee and group according to deptid.
2. select deptid and sum of salary where salary is greater than 17000 and group by deptid.
*/

select sum(salary) from employee1 group by dept_id;
select sum(salary)  from employee1 where salary >17000 group by dept_id;

/*
1. select deptid and sum of salary where sum of salary is greater than 18000 and grup by deptid.  
2. select deptid and sum of salary where sum of salary is less than 20000 and grup by deptid.
*/

select dept_id,sum(salary) from employee1 group by dept_id having sum(salary)>18000;
select dept_id,sum(salary) from employee1 group by dept_id having sum(salary)<20000;



