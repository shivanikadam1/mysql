use 8657capgemini;
create table team(team_id int,name varchar(50),city varchar(50),state varchar(50));
desc team;
insert into team(team_id,name,city,state)values(1,'sunrisers', 'Hyderabad','Telengana'),(2,'Royal Challengers Bangalore','Bangalore','Karnataka'),(3,'Mumbai Indians','Mumbai','Maharashtra'),(4,'Kolkata Knight Riders','kolkata','West Bengal'),(5,'Rising Pune Supergiants','Pune','Maharashtra'),(6,'Delhi Daredevils','Delhi','New Delhi'),(7,'Kings XI Punjab','Mohal','Punjab'),(8,'Gujrat Lion','Rajkot','Gujrat');
select * from team;
select name from team order by name;
select name from team where state like 'telengana';
select name from team where city like 'hyderabad';
select name from team where city='pune' and state='maharashtra';
select state,city,name from team order by state desc;
select state,city,name from team order by city desc;
select state,count(name) from team group by state;
create table player(player_id int,name varchar(50),country varchar(50), dob date,team_id int,auction_price double,total_matches int);
select * from player;
desc player;
select state,city,name from team order by  state desc,city desc;

select state,count(name) from team group by state;
insert into player(player_id,name,country,dob,team_id,auction_price,total_matches)values(1,'G Gambhir','India','1981-10-14',4,12.50,15),(2,'PP chawala','India','1988-12-24',4,4.25,12),(3,'JW Hastinge','Australia','1985-11-04',4,1.30,2),(4,'GB Hogg','Australia','1971-02-04',4,0.50,5),(5,'Jo Holder','West Indies','1991-11-05',4,0.70,4),(6,'Kuldeep Yadav','India','1994-12-14',4,0.40,3),(7,'CA Lynn','Australian','1990-04-10',4,1.30,2),(8,'M Morkel','South Africa','1984-10-06',4,2.80,10),(9,'C Munro','New Zealand','1987-03-11',4,0.30,4),(10,'SP Narine','West Indies','1988-07-26',4,9.50,11);
select * from player;
select country,count(name) from player group by country;
select country,count(name),total_matches from player group by country having total_matches>=10;