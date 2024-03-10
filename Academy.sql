create database Academy

use Academy

create table Groups
(
Id int primary key identity(1000, 1) not null,
Name nvarchar(10) not null check(Name != ' ') unique,
Rating int not null check(Rating between 0 and 5),
Year int not null check(Year between 1 and 5)
)

create table Departments
(
Id int primary key identity(1000, 1) not null,
Financing money not null check(Financing > 0) default 0,
Name nvarchar(100) not null check(Name != ' ') unique
)

create table Faculties
(
Id int primary key identity(1000, 1) not null,
Name nvarchar(100) not null check(Name != ' ') unique
)

create table Teachers
(
Id int identity(1000, 1) not null primary key,
EmploymentDate date not null check(EmploymentDate > '01-01-1990'),
Name nvarchar(max) not null check(Name != ' '),
Premium money not null check(Premium > 0) default 0,
Salary money not null check(Salary > 0 and Salary != 0),
Surname nvarchar(max) not null check(Surname != ' ')
)

select * from Groups
select * from Departments
select * from Faculties
select * from Teachers

drop table Faculties