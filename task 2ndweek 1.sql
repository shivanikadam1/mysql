use 8657capgemini;
create table customer2(cid int primary key not null,cname varchar(80),address varchar(70));
select * from customer2;
create table product1(pid int primary key not null,pname varchar(60) unique,availablestock int,price double,description varchar(70),cid int references customers2(id));
select * from product1;
insert into product1 values(101,'Pen',50,10,'This pen is lexi pen',1001 );
insert into customer2 values(1001,'om','mumbai');