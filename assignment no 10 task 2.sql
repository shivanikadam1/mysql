use 8657capgemini;
create table student1(RollNo int primary key,name varchar(50),address varchar(50),phone bigint(10),age int);
desc student1;

insert into student1(rollno,name,address,phone,age)values(1,'Harsh','Delhi',8759770477,18),(2,'Pratik','Bihar',7333834034,19),(3,'Riyanka','Siliguri',9876543210,20),(4,'Deep','Ramnagar',8520369741,18),(5,'Saptarhi','Kolkata',9654783210,19),(6,'Dhanraj','Barabajar',7412589630,20),(7,'Rohit','Balurghat',9630258741,18),(8,'Niraj','Alipur',7412356890,19);
select * from student1;
create table course(course_id int,roll_no int);
drop table course;
alter table student1 add foreign key(RollNo) references course(rollno);
alter table office add foreign key(deptid) references dept(deptid);
insert into course(course_id,roll_no)values(1,1),(2,2),(2,3),(3,4),(1,5),(4,9),(5,10),(4,11);
select * from course;
select * from student1 inner join course on student1.RollNo=course.roll_no;
select course.course_id,student1.name,student1.age from  student1 inner join course on student1.RollNo=course.roll_no;
select student1.name,course.course_id from student1 left join course on course.roll_no=student1.RollNo;
select student1.name,course.course_id from student1 right join course on course.roll_no=student1.RollNo;
select * from student1 cross join course on course.roll_no=student1.RollNo;