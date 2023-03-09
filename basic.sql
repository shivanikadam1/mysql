use 8657capgemini;
create table customer(cid int,cname varchar(67),address varchar(56),age int,orderdproducts varchar(45));
select * from customer;
alter table customer add column phno int(10);
insert into customer(cid,cname,address,age,orderdproducts)values(1001,'shivani','phaltan',21,'top'),(1002,'samu','pune',15,'tshirt'),(1003,'atharv','mumbai',13,'shoes');
select * from customer;
insert into customer(cid,cname,address)values(1004,'om','thakurki');
select * from customer;
desc customer;
alter table customer modify column cname text(78);
desc customer;
alter table customer add column(qualification varchar(67),permanentadd varchar(24));
desc customer;
alter table customer modify column cname varchar(78), modify column qualification text(78);
desc customer;
alter table customer drop column permanentadd;

