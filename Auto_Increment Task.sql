use 8657capgemini;
create table persons(personid int not null auto_increment,firstname varchar(55),lastname varchar(60),age int,primary key(personid));
desc persons;
insert into persons(firstname,lastname,age)values('Shivani','Kadam',21),('om','shinde',8),('samu','raut',15),('Mayuri','shinde',22),('swara','Bhosale',23),('Sakshi','Devale',22);
select * from persons;