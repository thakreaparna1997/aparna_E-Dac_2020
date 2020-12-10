use assignment2;
--  select dept_name and emp_name where dept_id is same.
SELECT department.dept_name, employee1.emp_name
FROM employee1
INNER JOIN department ON department.dept_id=employee1.dept_id;

-- select all from both tables where dept_id is same.
select * from employee1  join department on department.dept_id=employee1.dept_id;

-- . select dept_id and sum of salary group it by dept_id.
select department.dept_id,sum(salary) from employee1  inner join department 
on department.dept_id=employee1.dept_id
group by department.dept_id;

-- select dept_name and emp_name apply right outer join and left outer join

select department.dept_name,employee1.emp_name from employee1
right join department on department.dept_id=employee1.dept_id;

select department.dept_name,employee1.emp_name from employee1
left join department on department.dept_id=employee1.dept_id;

-- select emp_name with their respective manager names

select employee1.emp_name,employee1.manager from employee1;

-- select epm_name with their respective department names.

select employee1.emp_name,department.dept_name from employee1 
inner join department on department.dept_id=employee1.dept_id;

/*
Emp1			Emp2
emp_no     emp_name	emp_no     emp_name
---------------------   ------------------------
1		A		1		A
2		B		2		B
3		C		4		D
				5		E
*/


create table emp1(emp_no int(10),emp_name varchar(50));
create table emp2(emp_no int(10),emp_name varchar(50));

insert into emp1 values(1,'A'),(2,'b'),(3,'c');
insert into emp2 values(1,'A'),(2,'b'),(4,'d'),(5,'e');

select * from emp1
union
select * from emp2;
select * from employee1;
-- select employee having  same salary as 'Arun'.
SELECT * FROM employee1 WHERE salary  > (SELECT salary FROM employee1 where
emp_name = ‘kiran’);

SELECT * FROM employee1 WHERE salary = (SELECT salary FROM employee1
WHERE emp_name = ‘arun’);

/*
select employee belonging to same dept as 'jack'.
3. select name of employee havin lowest salary.
4. update salary =15000 of employees belonging to same dept as 'Max'.

*/
select emp_name from employee1 where salary=(select min(salary) from employee1);

update employee1 set salary =15000 where dept_id=(select dept_id from department where dept_id=2);

select * from employee1 where dept_id=(select dept_id from department where dept_id=1);