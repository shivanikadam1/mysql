use 8657capgemini;
create table stud(id int,name varchar(68),dept varchar(78),sub1 int,sub2 int,sub3 int,sub4 int,sub5 int);
insert into stud(id,name,dept,sub1,sub2,sub3,sub4,sub5)values(101,'suresh','cse',45,56,78,41,45),(102,'naveen','mech',41,74,52,56,74);
insert into stud(id,name,sub1,sub2,sub3,sub4,sub5)values(103,'Ram',74,56,74,88,86),(104,'john',76,56,78,67,90);
insert into stud(id,sub1,sub2,sub3,sub4,sub5)values(105,56,78,90,45,67);
insert into stud(id,name,dept)values(106,'abhi','EEE');
select * from stud;
update stud set dept='ECE' where id=103;
update stud set dept='IT' where id=104;
update stud set name='saktjhi',dept='civil' where id=105;
update stud set sub1=78,sub2=77,sub3=45,sub4=88,sub5=89 where id=106;
alter table stud add column(total int,percentage float);
update stud set total=sub1+sub2+sub3+sub4+sub5 where id=101;
update stud set total=sub1+sub2+sub3+sub4+sub5 where id=102;
update stud set total=sub1+sub2+sub3+sub4+sub5 where id=103;
update stud set total=sub1+sub2+sub3+sub4+sub5 where id=104;
update stud set total=sub1+sub2+sub3+sub4+sub5 where id=105;
update stud set total=sub1+sub2+sub3+sub4+sub5 where id=106;
update stud set percentage=(total*100)/500 where id=101;
update stud set percentage=(total*100)/500 where id=102;
update stud set percentage=(total*100)/500 where id=103;
update stud set percentage=(total*100)/500 where id=104;
update stud set percentage=(total*100)/500 where id=105;
update stud set percentage=(total*100)/500 where id=106;
delete from stud where sub1=56;
alter table stud add column grade text(20);
update stud set grade='A' where percentage>=90;
update stud set grade='B' where (percentage<90 && percentage>=80);
update stud set grade='C' where (percentage<80 && percentage>=70);
update stud set grade='D' where (percentage<70 && percentage>=60);
update stud set grade='E' where (percentage<60 && percentage>=50);
update stud set grade='F' where percentage<40;
select * from cust;

update cust set phno=123456789,qualification='B.Tech' where cid=1002;
update cust set phno=123456789,qualification='BE' where cid=1003;
select * from cust where qualification='B.tech' and age=15;
select * from cust where qualification='B.tech' or age=21;
select * from cust where not age=22;
select * from cust where custname like 's%';
select * from cust where custname like '%i';
select * from cust where custname like '%s%';
select * from cust where custname like '_h%';
select * from cust where age between 20 and 55;
select * from cust where age in(15,23,10);
select * from cust;
select * from cust where cid=any(select cid where age>=23);
select * from cust where cid=all(select cid from cust where age>=23);
select exists (select custname from cust where age<20);
select not exists (select custname from cust where age<20);
select all(select max(age) from cust);
select * from cust where age is null;
select * from cust where cid=any(select cid from cust where age>=23);
drop table stud;



