use 8657capgemini;
create table customers(id int,name varchar(40),age int,address varchar(50),salary double);
desc customers;
insert into customers(id,name,age,address,salary)values(1,'Ramesh',32,'Ahmedabad',2000.00),(2,'Khilan',25,'Delhi',1500.00),(3,'Kaushik',23,'Kote',2000.00),(4,'Chaitali',25,'Mumbai',6500.00),(5,'Hardik',27,'Bhopal',8500.00),(6,'Komal',22,'MP',45000.00),(7,'Muffy',24,'Indore',10000.00);
select * from customers;
select name, sum(salary) from customers group by name;
select id,name,age,address,salary from customers group by age having count(age)>=2;