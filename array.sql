use 8657capgemini;
create table fruit(fruitid varchar(34));
insert into fruit(fruitid)values("apple"),("banana"),("grapes");
select array(fruitid,"kind","of","fruit") from fruit;

