

create database aug2nd;

use aug2nd;

create table student(stid int(4),stname varchar(20),stmarks int);

describe student;

alter table student add column stadd varchar(30);
alter table student rename column stid to stnum;
alter table student modify column stname varchar(40);
alter table student drop column stmarks;

rename table student to person;
desc person;

drop table person;


/*  dml-insert update,delete*/

insert into student values(189,'devasena',89);
   
   insert into student values
      (789,'bahubali',90),
      (132,'kattapa',290),
      (657,'mahishmathi',590),
      (234,'kalakeya',190),
      (378,'shivagami',990);

describe student;

update student set stname='ballala' where stid=234;
delete from student where stname='shivagami';

select * from student;
select stid from student;
select stid,stname from student;
select stid,stname,stmarks from student;

set autocommit=0;
 insert into student values
      (123,'ramu',190),
      (124,'raju',290),
      (125,'remo',390);
commit;


delete from student where stid=124;

select * from student;

rollback;


create role goat;

grant select,update,delete on aug2nd.* to goat;

create user 'robo' identified by 'robo123' default role goat;

revoke select,update,delete on aug2nd.* from goat;

/*----------------------Constraints---------------------*/


create table emp(empid int not null,empname varchar(20),empsal decimal(4,2));

insert into emp values(123,'sathya',89.1);
insert into emp values(123,'soma',79.1);
insert into emp values(null,'sathya',89.1);
insert into emp(empname,empsal) values('keerthi',67.6);

alter table emp add constraint unique(empname);
insert into emp values(900,'keerthi',87.9);

select * from emp;

create table emp1(eid int primary key,ename varchar(20) not null,esal int check(esal<30000));

insert into emp1 values(123,"keerthi",8900);
insert into emp1 values(125,"keerthi",9000);

select * from emp1;

create table emp2(eid int primary key, ename varchar(20) unique,esal int default 10000);

insert into emp2(eid,ename) values(123,'keerthi');
insert into emp2(eid,ename) values(122,'ramu');
insert into emp2 values(128,'remo',7890);

select * from emp2;


create table demo(td date,tt time,tdt datetime);

insert into demo values(current_date(),current_time(),now());

select * from demo;


/*forign key*/

create table customers
(cusid int primary key auto_increment,
cusname varchar(20),cusadd varchar(20));

insert into customers(cusname,cusadd) values
  ("samatha","mumbai"),
   ("divya","hyd"),
    ("keerthi","kochi"),
     ("devasena","delhi");

select * from customers;

create table transactions(
transid int primary key auto_increment,
amount decimal,
cusid int,
foreign key(cusid) references customers(cusid)
);

insert into transactions(amount,cusid) values
(23.78,1),
(12.78,2),
(67.78,3),
(78.78,1),
(90.78,2),
(34.78,2),
(12.78,2);

select * from transactions;

drop table transactions;


show tables;
drop table emp;



CREATE TABLE emp (
  empno decimal(4,0) NOT NULL,
  ename varchar(10) default NULL,
  job varchar(9) default NULL,
  mgr decimal(4,0) default NULL,
  hiredate date default NULL,
  sal decimal(7,2) default NULL,
  comm decimal(7,2) default NULL,
  deptno decimal(2,0) default NULL
);



CREATE TABLE dept (
  deptno decimal(2,0) default NULL,
  dname varchar(14) default NULL,
  loc varchar(13) default NULL
);

INSERT INTO emp VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO emp VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO emp VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO emp VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO emp VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO emp VALUES ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO emp VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO emp VALUES ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
INSERT INTO emp VALUES ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO emp VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
INSERT INTO emp VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
INSERT INTO emp VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
INSERT INTO emp VALUES ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
INSERT INTO emp VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');

INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');
INSERT INTO dept VALUES ('30','SALES','CHICAGO');
INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');


desc emp;
desc dept;
select * from emp;
select * from dept;

select ename,job,mgr,sal,dname,loc from emp,dept;

select ename,job,mgr,sal,dname,loc from  emp inner join dept on emp.deptno=dept.deptno;

/*left --*/
select e.ename,e.job,e.mgr,e.sal,d.dname,d.loc,e.deptno 
from emp e left outer join dept d on e.deptno=d.deptno;

/*right outer*/
select e.ename,e.job,e.mgr,e.sal,d.dname,d.loc,e.deptno,d.deptno 
from emp e right outer join dept d on e.deptno=d.deptno;




select max(sal) from emp;
select min(sal) from emp;
select avg(sal) from emp;
select sum(sal) from emp;

select * from emp;

select ename from emp order by ename asc;


show tables;

desc institute;

select * from institute;

create table login(username varchar(20),password varchar(30));

insert into login values
('sathya','sathya123'),
('keerthi','keerthi123');

commit;



select * from employee;


