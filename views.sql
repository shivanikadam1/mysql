use 8657capgemini;
create table studentdet(rollno int,name varchar(60),address varchar(70),phone bigint(10),age bigint(10));
insert into studentdet(rollno,name,address,phone,age)values(1,'rahul','delhi',9045089774,18),(2,'ramesh','gurgagon',8056664288,18),(3,'sujit','phaltan',9975865306,20),(4,'suresh','delhi',9047740149,18);
select * from studentdet;
create view studentview as select name,phone,age from studentdet where age>18;
select * from studentview;

create table studentnew(sid int primary key not null,sname varchar(70),address varchar(60));
insert into studentnew(sid,sname,address)values(1,'Harsh','kolkata'),(2,'Ashish','Durgapur'),(3,'Pratik','Delhi'),(4,'Dhanaraj','Bihar'),(5,'Ram','Rajasthan');
select * from studentnew;
create table studentmarks(id int primary key not null,name varchar(70),marks int,age int);
insert into studentmarks(id,name,marks,age)values(1,'Harsha',90,19),(2,'suresh',50,20),(3,'Pratik',80,19),(4,'Dhanaraj',95,21),(5,'Ram',85,18);
select * from studentmarks;
create view detailsofstudent as select name,marks,age from studentmarks where marks<90;
select * from detailsofstudent;
/* alter query in view*/
alter view detailsofstudent as select sname,marks,age,address from studentnew s join studentmarks s1 on s.sid=s1.id;
select * from detailsofstudent;
/* update query in view*/
CREATE OR REPLACE VIEW MarksView AS SELECT studentnew.sname,studentnew.address,studentmarks.marks,studentmarks.age FROM studentnew,studentmarks WHERE studentnew.sname=studentmarks.name;
SELECT * FROM MarksView;
create view studentnames as select sname,address from studentnew order by sname;
select * from studentnames;
/* Delete Query in view */
delete from studentnames where sname='pratik';

CREATE VIEW SampleView AS SELECT sid,sname FROM Studentnew WHERE sname IS NOT NULL WITH CHECK OPTION;
INSERT INTO SampleView(SID,Sname)VALUES(12,'shivani');
desc student;
select * from sampleview;
INSERT INTO sampleview(SID)VALUES(12);