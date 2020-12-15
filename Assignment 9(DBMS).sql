use assignment2;

/*1.	Find all the employee name starting with ‘sc’;*/

select emp_name from employee1 where emp_name regexp '^[ak]';

select * from employee1;

/*2.	Find all the employee name endiing with ‘ng’;*/
select emp_name from employee1 where emp_name regexp 'an$';

/*3.	write query to find all employee job containing characters ’io’ or ‘ea’.*/
select emp_name from employee1 where emp_name regexp 'an|ru';

/*4.	Write a query to find all names containing characters {s,d}.*/

select emp_name from employee1 where emp_name regexp '[a,r]';

/*5.	CREATE TABLE tutorial (
id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY, 
title VARCHAR(200), 
description TEXT, 
FULLTEXT(title,description)
) ;
*/
	CREATE TABLE tutorial (
id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY, 
title VARCHAR(200), 
description TEXT, 
FULLTEXT(title,description)
) ;


INSERT INTO tutorial (title,description) VALUES
('SQL Joins','An SQL JOIN clause combines rows from two or more tables. It creates a set of rows in a temporary table.'),
('SQL Equi Join','SQL EQUI JOIN performs a JOIN against equality or matching column(s) values of the associated tables. An equal sign (=) is used as comparison operator in the where clause to refer equality.'),
('SQL Left Join','The SQL LEFT JOIN, joins two tables and fetches rows based on a condition, which is matching in both the tables and the unmatched rows will also be available from the table before the JOIN clause.'),
('SQL Cross Join','The SQL CROSS JOIN produces a result set which is the number of rows in the first table multiplied by the number of rows in the second table, if no WHERE clause is used along with CROSS JOIN.'),
('SQL Full Outer Join','In SQL the FULL OUTER JOIN combines the results of both left and right outer joins and returns all (matched or unmatched) rows from the tables on both sides of the join clause.'),
('SQL Self Join','A self join is a join in which a table is joined with itself (which is also called Unary relationships), especially when the table has a FOREIGN KEY which references its own PRIMARY KEY.');

/*6.	Write a query to find ‘Left right’ in description field.*/

SELECT * FROM tutorial WHERE MATCH(title,description) AGAINST('left+right'in boolean mode);

/*7.	Write a query to find the count of ‘Left right’ string matches in description field.*/

SELECT * FROM tutorial WHERE MATCH(title,description) AGAINST(count('left') in boolean mode);


/*8.	Write a query that retrieves all the rows that contain the word 'Joins' but not 'right'.*/

SELECT * FROM tutorial WHERE MATCH(title,description) AGAINST('+join -right'in boolean mode);



