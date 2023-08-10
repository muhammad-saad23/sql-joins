create database tab;
use tab;

create table customer(
customerid  int(5) ,
firstname varchar(10),
country varchar(10)
);

insert into customer
value(1,'jack','Germany'),(2,'Joe','France'),(3,'karl','Italy');

select * from customer;

create table orders(
customerid  int(5),
courses varchar(10)
);

insert into orders
value(1,'PHP'),(2,'c++'),(3,'Phython');

select * from orders;

select * from customer,orders where customer.customerid=orders.customerid;
select c.firstname,o.courses from customer as c join orders as o on c.customerid=o.customerid;