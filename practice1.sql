use practice;
create table stud(id int,name varchar(20),address varchar(30));
alter table stud rename stud1;
desc stud1;
alter table stud1 add marks int;
alter table stud1 modify id int not null;
insert into stud1 values(101,'shivani','phaltan',99);
alter table stud1 add constraint e1_pk primary key(id);
select * from stud1;
select id from stud1;
update  stud1 set name='om' where id=101; 
insert into stud1 values(102,'shivani','thakurki',88);
insert into stud1 values(103,'shivraj','mol',86);
delete from stud1   where id=103;
insert into stud1 values(103,'shivam','barad',89);
select marks from stud1 order by marks desc;
select marks from stud1 order by marks;
select * from stud1 where name like 'shivani';
select * from stud1 where marks in(88,89,99);
select * from stud1 where name='om' and address='phaltan';
select * from stud1 where name='om' or address='phaltan';
alter table stud1 modify column name varchar(30) unique;
alter table stud1 modify column marks int default 56;
insert into stud1(id,name,address) values(105,'samu','niragudi');