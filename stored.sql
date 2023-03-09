use 8657capgemini;
create table studmarks(stud_id smallint(5) not null auto_increment primary key,total_marks int,grade varchar(5));
desc studmarks;
insert into studmarks(total_marks,grade)values(450,'A'),(480,'A+'),(490,'A++'),(440,'B+'),(400,'C+'),(380,'C'),(250,'D'),(200,'E'),(100,'F'),(150,'F'),(220,'E');
select * from studmarks;
DELIMITER $$
CREATE PROCEDURE
GETStudentData()
BEGIN
select * from studmarks;
end$$
DELIMITER ;
call GetStudentData;
DELIMITER $$
create procedure
detailsstudent(in studentid int)
begin
select * from studmarks
where stud_id=studentid;
end$$
DELIMITER ;
call detailsstudent(2);

DELIMITER $$
create procedure
spGetStudentClass(in studentid int,out class varchar(20))
begin
declare marks int
default 0;
select total_marks into marks from studmarks
where stud_id=studentid;
if marks>=400 then
set class="First Class";
elseif marks>=300 and marks<400 then
set class="Second Class";
else
set class="Failed";
end if;
end$$
DELIMITER ;
call spGetStudentClass(2,@class);
select * from studmarks;
select @class;