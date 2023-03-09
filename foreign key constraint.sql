use 8657capgemini;
create table customers1(id int primary key not null,name varchar(89),age int,address varchar(78),salary decimal(18,2));
select * from customers1;
insert into customers1 values(1001,'shivani',24,'phaltan',33000);
create table orders(id int primary key not null,Date datetime,amount int,customerid int references customers1(id));
select * from orders;
insert into orders values(101,'2023-02-27 03:11:23',12000,1001);