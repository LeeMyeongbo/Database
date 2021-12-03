
DROP DATABASE IF EXISTS sales;
DROP USER IF EXISTS  sales@localhost;
create user sales@localhost identified by 'sales';
create database sales;
grant all privileges on sales.* to sales@localhost with grant option;

USE sales;

create table Salesperson (
	s_name varchar(20) primary key,
   	age integer,
	salary integer
);

create table Customer (
	c_name varchar(20) primary key,
	city varchar(20),
	industrytype varchar(20)
);

create table Orders (
	num integer,
	c_name varchar(20),
	s_name varchar(20),
	amount integer(20),
	primary key(c_name, s_name),
	foreign key(c_name) references Customer(c_name),
	foreign key(s_name) references Salesperson(s_name)
);

insert into salesperson values("TOM", 24, 40000);
insert into salesperson values("Garen", 31, 35000);
insert into salesperson values("Lux", 22, 35000);
insert into salesperson values("Mithy", 29, 38000);
insert into salesperson values("GAL", 32, 41000);

insert into customer values("Thal", "LA", "fishing");
insert into customer values("Faker", "LASVEGAS", "progamer");
insert into customer values("Showmaker", "LA", "programmer");
insert into customer values("Grim", "DAEGU", "programmer");
insert into customer values("ASD", "PARIS", "fashion");

insert into orders values(1, "Faker", "TOM", 2);
insert into orders values(2, "Faker", "GAL", 3);
insert into orders values(3, "Grim", "TOM", 1);
insert into orders values(4, "ASD", "Mithy", 4);
insert into orders values(5, "Thal", "Lux", 2);
