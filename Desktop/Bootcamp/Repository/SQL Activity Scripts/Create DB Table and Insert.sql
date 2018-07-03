CREATE DATABASE Second_International_Bank;

CREATE TABLE Customers 
(
ID int auto_increment NOT Null
,FirstName varchar(30)
,LastName varchar(30)
,Loan boolean
,Checking decimal(19,2)
,Savings decimal(19,2)
,primary key (id)
);

insert into Customers (FirstName, LastName, Loan, Checking, Savings)
Values ('Elise', 'Lindsey', True, 12345678, 12345678);


insert into Customers (FirstName, LastName, Loan, Checking, Savings)
Values ('Michelle', 'Lindsey', False, 2345678, 145678);

insert into Customers (FirstName, LastName, Loan, Checking, Savings)
Values ('Ty', 'Lindsey', True, 5678, 78);

insert into Customers (FirstName, LastName, Loan, Checking, Savings)
Values ('Cheryl', 'Lindsey', True, 15678, 1278);

insert into Customers (FirstName, LastName, Loan, Checking, Savings)
Values ('Peggy', 'Lindsey', True, 1678, 178);
