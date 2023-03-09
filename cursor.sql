use 8657capgemini;
create table table1(id int,name varchar(60),class varchar(70));
insert into table1(id,name,class)values(1,'shristee','MCA'),(2,'Ajay','BCA'),(3,'Shweta','MCA'),(4,'Dolly','BCA'),(5,'Heena','MCA'),(6,'Kiran','BCA'),(7,'Sonal','MCA'),(8,'Dimple','BCA'),(9,'Shyam','MCA'),(10,'Mohit','BCA');
select * from table1;
Delimiter $$
create procedure
list_name(inout name_list varchar(4000))
begin
declare is_done integer
default 0;
declare is_name
varchar(67) default"";
declare stud_cur cursor for
select name from table1;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET is_done = 1;
 open stud_cur;
 get_list:loop fetch stud_cur into is_name;
 if is_done =1 then leave  get_list ; end if; 
 set name_list=concat(is_name,";",name_list);
 end loop get_list;
 close stud_cur;
 end$$
 SET @name_list ="";  
	CALL list_name(@name_list);  
	SELECT @name_list;
