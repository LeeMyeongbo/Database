
DROP DATABASE IF EXISTS cinema;
DROP USER IF EXISTS  cinema@localhost;
create user cinema@localhost identified by 'cinema';
create database cinema;
grant all privileges on cinema.* to cinema@localhost with grant option;

USE cinema;

create table Theater (
	theaterid integer primary key,
	theatername varchar(20),
	location varchar(20)
);

create table Cinema (
	theaterid integer,
	cinemaid integer check(cinemaid >= 1 and cinemaid <= 10),
	moviename varchar(30),
	price integer check(price <= 20000),
	seat integer,
	foreign key(theaterid) references Theater(theaterid),
	primary key(theaterid, cinemaid)
);

create table Customer (
	custid integer primary key,
	custname varchar(20),
	address varchar(30)
);

create table Reserve (
	theaterid integer,
	cinemaid integer check(cinemaid >= 1 and cinemaid <= 10),
	custid integer,
	seatid integer,
	unique(custid, seatid),
	rdate Date,
	foreign key(theaterid, cinemaid) references Cinema(theaterid, cinemaid),
	foreign key(custid) references Customer(custid),
	primary key(theaterid, cinemaid, custid)
);
