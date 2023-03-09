use 8657capgemini;
create table employee1(emp_id int,emp_name varchar(60),job_name varchar(60),manager_id int,hire_date date,salary double,commission double,dep_id int);
desc employee1;
insert into employee1(emp_id,emp_name,job_name,hire_date,salary,dep_id)values(68319,'KAYLING','PRESIDENT','1991-11-18',6000.00,1001);
drop table employee1;
select * from employee1;
insert into employee1(emp_id,emp_name,job_name,manager_id,hire_date,salary,dep_id)values(66928,'BLAZE','MANAGER',68319,'1991-05-01',2750.00,3001),(67832,'CLARE','MANAGER',68319,'1991-06-09',2550.00,1001),(65646,'JONAS','MANAGER',68319,'1991-04-02',2957.00,2001),(67858,'SCARLET','ANALYST',65646,'1997-04-19',3100.00,2001),(69062,'FRANK','ANALYST',65646,'1991-12-03',3100.00,2001);
select * from employee1;
alter table employee1 drop column commission;
alter table employee1 add column commission int;
update employee1 set commission=2345 where dep_id=1001 or dep_id=3001;
delete from employee1 where job_name='ANALYST';
select * from employee1;
delete from employee1 where job_name='MANAGER' and emp_name='CLARE';
update employee1 set manager_id=68310 where job_name='PRESIDENT';
truncate table employee1;
select * from employee1;
drop table employee1;