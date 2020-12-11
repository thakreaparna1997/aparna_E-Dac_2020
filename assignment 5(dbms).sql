create database demo;
use demo;
drop table emp;
Create table EMP ( EMPNO numeric(4) not null, ENAME varchar(30)
 not null, JOB varchar(10), MGR numeric(4), HIREDATE date, SAL numeric(7,2), DEPTNO integer(50) ); 
 Insert into EMP  values(1000,  'Manish' , 'SALESMAN',1003,  '2020-02-18', 600,  30) ;
Insert into EMP 
values(1001,  'Manoj' , 'SALESMAN', 1003,  '2018-02-18', 600,  30) ;
Insert into EMP 
 values(1002 , 'Ashish', 'SALESMAN',1003 , '2013-02-18',  750,  30 );
Insert into EMP 
 values(1004,  'Rekha', 'ANALYST', 1006 , '2001-02-18', 3000,  10);
Insert into EMP 
values(1005 , 'Sachin', 'ANALYST', 1006 ,  '2019-02-18', 3000, 10 );
Insert into EMP 
values(1006,  'Pooja',  'MANAGER'  ,     null    , '2000-02-18' ,6000, 10 );
select * from emp;

Create table dept (dno numeric(4) not null, dname varchar(10) not null,area varchar(30));
Insert into dept(dno,dname,area) values(10,'Store','Mumbai');
Insert into dept(dno,dname,area) values(20,'Purchase','Mumbai');
Insert into dept(dno,dname,area) values(30,'Store', 'Delhi');
Insert into dept(dno,dname,area) values(40,'Marketing','Pune');
Insert into dept(dno,dname,area) values(50,'Finance','Delhi');
Insert into dept(dno,dname,area) values(60,'Accounts','Mumbai');

/*1.	Write a Procedure that accepts values of two non-zero numbers using
 IN parameter and perform addition, subtraction, multiplication, division and print.*/
 
 delimiter $$
 create procedure abc(in var1 int,in var2 int)
 begin 

 select var1+var2;
 select var1-var2;
 select var1*var2;
 select var1/var2;
 end$$
 call abc(2,3);
 
 /*2.	Write a Procedure to print the string in
 REVERSE order. Take the input using IN parameter. (Ex .Database , o/p :esabatad)*/
 
 delimeter $$
 
 create procedure reverse1( var varchar(50))
 begin
 select reverse(var);
 end$$
 call reverse1('database');
 
 
 /*3.	Write a Procedure to display top 5 
 employee based on highest salary and display employee number, employee name and salary.*/
 
 delimeter $$
 create procedure que4()
 begin
 
 select empno ,ename,sal from emp order by sal desc limit 5;
end;
end$$
call que4();

/*4.	Write a Procedure to create table emp_test
 with e_id integer, e_name varchar(10), e_joining_date date as columns*/
 
 delimiter $$
 create procedure one()
 begin 
 create table emp_test(e_id integer(10),e_name varchar(10),e_joining_date date);

 end$$
 call one();
 
 /*5.	Write a Procedure to add a department row in the DEPT table with the following values for columns*/
 
 delimiter $$
 create procedure three()
 begin
 Insert into dept(dno,dname,area) values(70,'Store','nagpur');
end$$
 
 call three();
 
 /*6.	Write a program that declares an integer variable called num, 
 assigns a value to it and print, the value of the variable itself, its square, and its cube.*/
 
 delimiter $$
 
 create procedure four1(in num int)
 begin
 
 select num;
 select num*num;
 select num*num*num;
end$$

call four1(5);

 delimiter $$
 create procedure four3(out b int)
 begin
 declare c int default 10;
declare a int default 20;
set b=a+c;
 
end$$

call four3(@b);
select @b;


 /* 8.	Write a program that demonstrates the usage of IN and OUT parameters.*/
 
 delimiter $$

CREATE PROCEDURE SP_2(INOUT STR VARCHAR(10))

BEGIN
SET STR=(SELECT REVERSE(STR));END $$

SET @STR='DATABASE';
end$$


CALL SP_2(@STR);

SELECT @STR AS REV;


 
 
 



