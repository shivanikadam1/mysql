use 8657capgemini;
/*************************Single index*************************/
create index ss on office(officeid);
show index from office;
/*************************Unique Index***********************/
create unique index sm on studmarks(total_marks);
show index from studmarks;
/*************************Composite Index***********************/
create index sm1 on stud1(stud_id,stud_name,subject,marks);
show index from stud1;
/*************************Implicit Index***********************/
create table customerinfo(cid int primary key not null,cname varchar(50));
show index from customerinfo;