create database assignment2;
use assignment2;
CREATE TABLE PUBLISHERS
(
    PUBID      integer(3)   PRIMARY KEY,
    PNAME      VARCHAR(30),
    EMAIL      VARCHAR(50)  UNIQUE,
    PHONE      VARCHAR(30)
);


CREATE TABLE  SUBJECTS
(
    SUBID      VARCHAR(5) PRIMARY KEY,
    SNAME      VARCHAR(30)
);


CREATE TABLE  AUTHORS
(
    AUID     integer(5)  PRIMARY KEY,
    ANAME      VARCHAR(30),
    EMAIL      VARCHAR(50)  UNIQUE,
    PHONE      VARCHAR(30)
);



CREATE TABLE  TITLES
(
    TITLEID    integer(5) PRIMARY KEY,
    TITLE      VARCHAR(30),
    PUBID      integer(3),
    SUBID      VARCHAR(5),
    PUBDATE    DATE,
    COVER      CHAR(1)  CHECK ( COVER IN ('P','H','p','h')),
    PRICE      integer(4),
	CONSTRAINT TITLES_PUBID_FK FOREIGN KEY (PUBID) REFERENCES PUBLISHERS(PUBID),
	CONSTRAINT TITLES_SUBID_FK FOREIGN KEY (SUBID) REFERENCES SUBJECTS(SUBID)
);



CREATE TABLE  TITLEAUTHORS
(
    TITLEID    integer(5) ,
    AUID       integer(5) ,
    IMPORTANCE integer(2),
   PRIMARY KEY(TITLEID,AUID),
   CONSTRAINT  TITLESAUTHORS_TITLEID_FK FOREIGN KEY (TITLEID) REFERENCES TITLES(TITLEID),
   CONSTRAINT  TITLESAUTHORS_AUTHID_FK FOREIGN KEY (AUID) REFERENCES AUTHORS(AUID)
);

CREATE TABLE  SUBJECTS_BACKUP
(
    SUBID      VARCHAR(5) PRIMARY KEY,
    SNAME      VARCHAR(30)
);

 INSERT INTO SUBJECTS VALUES ('ORA','ORACLE DATABASE 10g');
 INSERT INTO SUBJECTS VALUES ('JAVA','JAVA LANGUAGE');
 INSERT INTO SUBJECTS VALUES ('JEE','JAVA ENTEPRISE EDITION');
 INSERT INTO SUBJECTS VALUES ('VB','VISUAL BASIC.NET');
 INSERT INTO SUBJECTS VALUES ('ASP','ASP.NET');



 INSERT INTO PUBLISHERS VALUES (1,'WILLEY','WDT@VSNL.NET','91-11-23260877');
 INSERT INTO PUBLISHERS VALUES (2,'WROX','INFO@WROX.COM',NULL);
 INSERT INTO PUBLISHERS VALUES (3,'TATA MCGRAW-HILL','FEEDBACK@TATAMCGRAWHILL.COM','91-11-33333322');
 INSERT INTO PUBLISHERS VALUES (4,'TECHMEDIA','BOOKS@TECHMEDIA.COM','91-11-33257660');



 INSERT INTO AUTHORS VALUES (101, 'HERBERT SCHILD','HERBERT@YAHOO.COM',NULL);
 INSERT INTO AUTHORS VALUES (102, 'JAMES GOODWILL','GOODWILL@HOTMAIL.COM',NULL);
 INSERT INTO AUTHORS VALUES (103, 'DAVAID HUNTER','HUNTER@HOTMAIL.COM',NULL);
 INSERT INTO AUTHORS VALUES (104, 'STEPHEN WALTHER','WALTHER@GMAIL.COM',NULL);
 INSERT INTO AUTHORS VALUES (105, 'KEVIN LONEY','LONEY@ORACLE.COM',NULL);
 INSERT INTO AUTHORS VALUES (106, 'ED. ROMANS','ROMANS@THESERVERSIDE.COM',NULL);



 INSERT INTO TITLES VALUES (1001,'ASP.NET UNLEASHED',4,'ASP','2002-4-12','P',540);
 INSERT INTO TITLES VALUES (1002,'ORACLE10G COMP. REF.',3,'ORA','2005-5-1','P',575);
 INSERT INTO TITLES VALUES (1003,'MASTERING EJB',1,'JEE','2005-2-3','P',475);
 INSERT INTO TITLES VALUES (1004,'JAVA COMP. REF',3,'JAVA','2005-4-2','P',499);
 INSERT INTO TITLES VALUES (1005,'PRO. VB.NET',2,'VB','2005-6-15','P',450);
 select * from titles;



 INSERT INTO TITLEAUTHORS VALUES (1001,104,1);
 INSERT INTO TITLEAUTHORS VALUES (1002,105,1);

 INSERT INTO TITLEAUTHORS VALUES (1003,106,1);

 INSERT INTO TITLEAUTHORS VALUES (1004,101,1);

 INSERT INTO TITLEAUTHORS VALUES (1005,103,1);
 INSERT INTO TITLEAUTHORS VALUES (1005,102,2);
 
select pname,phone,email from publishers;
select aname,phone from authors;
select titleid,title,pubdate from titles;
select auid, titleid, importance from titleauthors;

-- select subject name "oracle" from subjects table
select sname="ORACLE DATABASE 10g" from subjects;

-- select subject name starts whith 'j'
select sname from subjects where sname like "j%";
-- select subject name which contains ".net" .
select sname from subjects where sname like "%.net";
-- select author name ends whith 'er'.
select aname from authors where aname like "%er";
-- select publishers name which contains "hill".
select pname from publishers where pname like "%hill%" ;


/*1.select title from title table having price less than 500.
2. select title from title table published before '3 april'.
3. select subject name from subject having id as 'java' or 'jee'.
4. seelct author name from author table id greater than '103'.
5. select all from title having titleid as 101 or price > 400.
*/

select title from titles where price < 500;
select title from titles where pubdate < '2005-03-01';
select sname from subjects where subid='java' or subid='jee';
select aname from authors where auid > 103;
select * from titles having titleid=101 or price> 400;
-- select all from publishers table  where publisher name is ('TECHMEDIA', 'WROX');
select * from publishers where pname in ('TECHMEDIA', 'WROX');

/*select maximum price from titles table.
2. select average importance from titleauthors. 
3. select number of records from author table.
4. select sum of prices of all books.
*/

select max(price) from titles;
select avg(importance) from titleauthors;
select count(auid) from authors;
select sum(price) from titles;

/*1. select title from title table where month is 'Apr'.
2. select year from system date.
3. select month from system date.
4. select last day of month when 'java' book published.
*/
/*create table Employee with emp_id (number),emp_name(char(50)) and insert some value.
1. Add one column name 'dept_id ' in table name 'Employee';
2. Change the datatype of column 'char' from tablename 'Employee' to 'varchar2'.
3. update name of employee to 'Scott'
4. truncate the table.
*/
create table employee(emp_id integer(10),emp_name char(50));
insert into employee values(1,'aparna');
alter table employee modify emp_name varchar(10);
update employee set emp_name="thakre" where emp_id=1;
truncate employee;
SELECT CHAR_LENGTH("SQL cammands");
SELECT CONCAT("SQL ",  "is ", "fun!");

/*1. round
2. truncate 
3. ceil
4. floor
5. sign(-15)
6. mod
7. sqrt
8. power
*/
SELECT ROUND(235.415, 2);
select ceil(245.23);
select floor(240.15);
select sign(-15);
select mod(150,2);
select sqrt(144);
select power(4,2);


