/* 1.	Write function that accepts a positive number from a user and displays its factorial 
on the screen.create database functions;*/

use functions;
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

delimiter $$
CREATE FUNCTION FACT(X INT) RETURNS INT
BEGIN
DECLARE FACT INT;
DECLARE I INT;
SET FACT=1 , I=1;

L1:LOOP
	IF X>0 THEN 
		SET FACT=FACT*I;
		SET I=I+1;
		SET X=X-1;
		ITERATE L1;
		ELSE
		LEAVE L1;
	END IF;
	END LOOP L1;
RETURN FACT;
END$$

SELECT FACT(3);


/*2.	Write a function that accepts a positive number ‘n’ and displays whether that
 number is a Prime number or not.*/
 
 delimeter $$
 create function prime1(x int) returns varchar(50)
 begin
	DECLARE M ,I INT;
	SET I=2;
	SET M=X/2;
	IF X=0 || X=1 THEN 
		RETURN 'NOT PRIME';
    ELSE
		L1: LOOP
		WHILE I<=M DO
			IF X%2=0 THEN 
				RETURN 'NOT PRIME';
				LEAVE L1;
				ELSE
				SET I=I+1;
				ITERATE L1;
			END IF;
	   END WHILE;
       RETURN 'PRIME';
	END LOOP L1;
	END IF;
END$$

SELECT PRIME1(44);


/*3.	Write a function to Convert an inputed number of inches into yards,
 feet, and inches. For example, 124 inches equals 3 yards, 1 foot, and 4 inches.*/
 
 delimiter $$
CREATE FUNCTION CON(NUM INT3) RETURNS VARCHAR(50)
BEGIN
RETURN CONCAT(NUM,' Inches ',round(NUM/36),' Yards ',round(NUM/12),' Foot ');
END$$

SELECT CON(124);
 
 
 /*4.	Write a function to update salary of the employees of specified dept by 10%. Take dept no as parameter.*/
 
 delimiter $$
CREATE FUNCTION SAL(DEPTID INT3) RETURNS VARCHAR(50)
BEGIN
UPDATE EMP SET SAL=(SAL+(SAL*0.1)) WHERE DEPTNO=DEPTID;
RETURN 'UPDATED';
END$$
SELECT * FROM EMP;

SELECT SAL(10);

/*5.	Create a function named USER_ANNUAL_COMP that has a parameter p_eno for passing on the values of  an employee number of the employee and p_comp for passing the compansation. In the function calculates and returns the annual compensation of the employee by using the following formula.
annual_compensation =  (p_sal+p_comm)*12
If the salary or commission value is NULL then zero should be substituted for it.  Give a call to USER_ANNUAL_COMP.
*/

delimiter $$
CREATE FUNCTION USER_ANNUAL_COMP (P_ENO INT4,P_COMP INT4) RETURNS INT8
BEGIN
DECLARE ANNUAL_COM, SALR INT8;
SET SALR=(SELECT (SAL) FROM EMP WHERE EMPNO=P_ENO);
SET ANNUAL_COM = (SALR + P_COMP)*12;
RETURN ANNUAL_COM;
END$$
SELECT SAL FROM EMP WHERE EMPNO=1004;
SELECT USER_ANNUAL_COMP(1004,200);
 
 
 /*6.	Create a procedure called USER_QUERY_EMP that accepts three parameters. 
 Parameter p_myeno is of IN parameter mode which provides the empno value. The other two parameters
 p_myjob and p_mysal are of OUT mode. The procedure retrieves the salary and job of an employee with 
 the provided employee number and assigns those to the two OUT parameters respectively. The procedure
 should raise the error if the empno does not exist in the EMP table by displaying an appropriate message*/
 
 delimiter $$
CREATE PROCEDURE USER_QUERY_EMP  (IN P_ENO INT, OUT P_JOB VARCHAR(10), OUT P_SAL INT3 ) 
BEGIN
DECLARE NO INT;
SET NO = (SELECT COUNT(*) FROM EMP WHERE EMPNO=P_ENO);
IF NO=0 THEN 
SELECT 'employee not exists';
SET P_JOB='';
SET P_SAL=0;
ELSE 
SELECT SAL,JOB INTO P_SAL,P_JOB FROM EMP WHERE EMPNO=P_ENO;
END IF;
END$$

CALL USER_QUERY_EMP(1004,@JOB,@SAL);
SELECT @JOB,@SAL

/*7.	Create a procedure to print the inputted string
 in reverse order. If  inputted string is null display an appropriate message*/
 
 
 delimiter $$
CREATE PROCEDURE REV(IN STR VARCHAR(10),OUT REV VARCHAR(40))
BEGIN
IF isnull(STR) THEN
	SET REV='STRING IS NULL';
ELSE
	SET REV=(SELECT REVERSE(STR));
END IF;
END $$
SET @STR='DATABASE';
CALL SP_2(@STR);
SELECT @STR AS REV;
 
 
 /*8.	Create a procedure named ‘tabledetails’ which gives all the details of a particular table stored in database.*/

delimiter $$
CREATE PROCEDURE tabledetails()
BEGIN
SHOW TABLES;
END $$

CALL tabledetails;

    
 