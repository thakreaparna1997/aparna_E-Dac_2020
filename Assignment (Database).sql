create database Assignment;
use assignment;
create table Member(Member_id integer(5),
Member_name varchar(30),
Member_address varchar(50),
Acc_Open_Date Date,
Membership_type varchar(20),
Penalty_Amount integer(7));
select * from Member;
create table Book(Book_no integer(6),
Book_Name varchar(30),
Author_name varchar(30),
Cost integer(7), 
Category char(10));
select * from Book;
create table Issue(Lib_Issue_Id integer(10),
Book_no integer(6),
Member_id integer(5),
Issue_Date date,
Return_date date);
select * from Issue;
alter table Member drop Penalty_Amount;
insert into Member values(1,"Richa Sharma","Pune",
'10-12-05',"lifetime");
insert into Member values(1,"Richa Sharma","Pune",
'2010-05-12',"lifetime");
insert into Book values(101,"Let Us C","Dennis Richie",
450,"System");
insert into Book values(102,"Oracle-Complete Ref","Loni",
550,"Database");
insert into Book values(103,"Mastering SQL","Loni",
250,"Database");
insert into Book values(104,"PL AQL-Ref","ScottUrman",
750,"Database");
select * from Book;
insert into Member values(2,"Garima Sen","Pune",
curdate(),"Annual");
update Book set cost = 300 where book_id=103;
drop table Issue;
insert into Issue values(7001,101,1,'2006-10-12',null);
select * from Issue;
insert into Issue values(7002,102,2,'2006-12-25',null);
insert into Issue values(7003,104,1,'2006-1-15',null);
insert into Issue values(7004,101,1,'2006-4-7',null);
insert into Issue values(7005,104,2,'2006-11-25',null);
insert into Issue values(7006,101,3,'2006-2-18',null);
drop database demo;
create table ab(id integer(5) unique);
drop table ab;
UPDATE book SET  cost = 300 WHERE Book_no=103;
update book set cost=300 where book_no=103;

