drop database orderdb;
create schema `orderdb`;
use `orderdb`;

create table orders(
orderid varchar(25),
buyerid varchar(50),
amount double,
orderdate date,
address varchar(100),
status varchar(50));

insert into orders values('O101','B104',1000.00,'2021-08-07','Marathalli Bangalore','Order Placed');
insert into orders values('O102','B103',2020.00,'2021-08-12','VTU Belgaum','Order Packing');
insert into orders values('O103','B105',390.00,'2021-08-19','Vijayanagar Mysore','Order Dispatched');
insert into orders values('O104','B101',410.00,'2021-08-24','Darbe Puttur','Order Delivered');
insert into orders values('O105','B102',100.00,'2021-09-04','Kamakya Bangalore','Order Dispatched');


#select * from orders;

create table productsordered(
buyerid varchar(50),
prodid varchar(50),
sellerid varchar(25),
quantity integer,
primary key(buyerid,prodid));

insert into productsordered values('B101','P101','S105',1);
insert into productsordered values('B102','P102','S104',2);
insert into productsordered values('B103','P103','S103',3);
insert into productsordered values('B104','P104','S102',4);
insert into productsordered values('B105','P105','S101',5);

#select * from productsordered;
