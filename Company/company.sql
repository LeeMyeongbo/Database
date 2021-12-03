
DROP DATABASE IF EXISTS company;
DROP USER IF EXISTS  company@localhost;
create user company@localhost identified by 'company';
create database company;
grant all privileges on company.* to company@localhost with grant option;

USE company;

create table Department (
	deptno integer primary key,
	deptname varchar(20),
	manager varchar(20)
);

create table Employee (
	empno integer primary key,
	emp_name varchar(20),
	phoneno varchar(30),
	address varchar(20),
	sex varchar(5),
	position varchar(20),
	deptno integer,
	foreign key(deptno) references Department(deptno)
);

create table Project (
	projno integer primary key,
	projname varchar(20),
	deptno integer,
	foreign key (deptno) references Department(deptno)
);

create table Works (
	empno integer,
	projno integer,
	hours_worked integer,
	primary key(empno, projno),
	foreign key(empno) references Employee(empno),
	foreign key(projno) references Project(projno)
);

insert into Department values(1, 'IT', '배민수');
insert into Department values(2, '기획', '조사리');
insert into Department values(3, '영업', '고재현');
insert into Employee values(1, '이명보', '01056615471', '대구', '남', '정규', 1);
insert into Employee values(2, '김철수', '01021545428', '인천', '남', '대리', 3);
insert into Employee values(3, '문가영', '01032549858', '서울', '여', '대리', 2);
insert into Employee values(4, '황철민', '01065847754', '대구', '남', '과장', 1);
insert into Employee values(5, '김민희', '01099845555', '대전', '여', '정규', 3);
insert into Project values(1, 'A', 2);
insert into Project values(2, 'B', 1);
insert into Project values(3, 'C', 3);
insert into Works values(1, 1, 5);
insert into Works values(2, 1, 1);
insert into Works values(1, 2, 1);
insert into Works values(3, 3, 4);
insert into Works values(5, 1, 2);
insert into Works values(5, 2, 1);
