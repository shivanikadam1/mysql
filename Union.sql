use 8657capgemini;
select * from dept;
select * from office;
/****************************JOIN*****************************/
select deptname,state,officename,noofemp from dept join office on dept.deptid=office.deptid;
/****************************UNION*****************************/
select deptname,deptid from dept union select officename,officeid from office;
select deptname,deptid from dept union (select officename,deptid from office) order by deptid desc;
select deptname,deptid from dept union all select officename,officeid from office;

create table stud1(stud_id int primary key not null,stud_name varchar(50),subject varchar(60),marks int);
insert into stud1(stud_id,stud_name,subject,marks)values(1,'Mark','English',68),(2,'Joseph','Physics',70),(3,'john','Maths',70),(4,'Barack','Maths',90),(5,'Rinky','Maths',85),(6,'Adaam','Science',92),(7,'Andrew','Science',83),(8,'Brayan','Science',85);
select * from stud1;
create table stud2(stud_id int primary key not null,stud_name varchar(50),subject varchar(60),marks int);
insert into stud2(stud_id,stud_name,subject,marks)values(1,'Donald','History',85),(2,'Joseph','physics',70),(3,'stephen','GEography',70),(4,'Abraham','Java',75),(5,'John','Maths',70);
select * from stud2;
select stud_name,marks from stud1 union All select stud_name,marks from stud2;