use 8657capgemini;
create table  employee1(name varchar(45) not null,occupation varchar(60) not null,working_date date,working_hours varchar(10));
desc employee1;
insert into employee1 values('Robin','Scientist','2020-10-04',12),('Warner','Engineer','2020-10-04',10),('Peter','Actor','2020-10-04',13),('Marco','Doctor','2020-10-04',14),('Brayden','Teacher','2020-10-04',12),('Antonio','Business','2020-10-04',11);
select * from employee1;
DELIMITER //
create trigger before_insert_empworkinghours
before insert on
employee1 for each row
begin
if new.working_hours<0
then set 
new.working_hours=0;
end if;
end //
insert into employee1 values('Shivani','Engineer','2020-10-04',-12);

create table  student_info(stud_id int not null,stud_code varchar(15) default null,stud_name varchar(35) default null,subject varchar(25),marks int default null, phone varchar(15) default null,primary key (stud_id))
create table student_details(stud_id  int not null,stud_code varchar(15) default null,stud_name varchar(35) default null,subject varchar(25),marks int default null, phone varchar(15) default null,Lasinserted Time,primary key (stud_id))
DELIMITER //
create trigger 
after_insert_details
after insert on 
student_info for each row
begin
insert into
student_details values
(new.stud_id,new.stud_code,new.stud_name,new.subject,new.marks,new.phone,curtime());
end //
insert into student_info values(10,110,'Alexandar','Biology',67,'2347346438');
select * from student_details;
select * from student_info;

create table students(id int not null auto_increment,name varchar(50) not null,class int not null,email_id varchar(65) not null,primary key(id));
insert into students(name,class,email_id)values('Stephen',6,'stephen@javatpoint.com'),('Bob',7,'bob@javatpoint.com'),('Steven',8,'stephen@javatpoint.com'),('Alexander',7,'alexander@javatpoint.com');
select * from Students;
create table students_log(user varchar(45) not null,descreptions varchar(65) not null);
DELIMITER $$
create trigger 
after_update_studentinfo1
after update
on students for each row
begin
insert into students_log values(user(),concat('Update student Record',old.name,'Previous Class:','Present Class',new.class));
end $$

DELIMITER ;
update students set class=class+1;
select * from students;
select * from students_log;
create table salaries(emp_num int primary key,valid_from date not null,amount dec(8,2) not null default 0);
insert into salaries(emp_num,valid_from,amount)values(102,'2020-01-10',45000),(103,'2020-01-10',65000),(105,'2020-01-10',65000),(107,'2020-01-10',55000),(109,'2020-01-10',40000);
create table total_salary_budget(total_budget decimal(10,2) not null);
insert into total_salary_budget(total_budget)select sum(amount) from salaries;
DELIMITER $$
create trigger
after_delete_salaries
after delete
on salaries for each row
begin
update
total_salary_budget set total_budget=total_budget-old.amount;
end$$
DELIMITER ;
delete from salaries where emp_num=105;
select * from total_salary_budget;
delete from salaries;