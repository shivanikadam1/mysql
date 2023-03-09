use 8657capgemini;
create table customers2(customerId int primary key auto_increment,customerName varchar(50),contactName varchar(60),address varchar(60),city varchar(50),postalCode varchar(50), country varchar(50));
desc customers2;
insert into customers2(customerName,contactName,address,city,postalCode,country)values('Alfred','Maria Anders','obere str.57','Berlin','12209','Germany'),('Ana Trujillo','Ana Trujillo','Avda. de la Constitucion 2222','Mexico D.F','05021','Mexico'),('Antonio Moreno Taqueria','Antonio Moreno','Mataderos 2312','Mexico D.F','05023','Mexico'),('Around the horn','Thomas Hardy','120 Hanovar sq.','London','WA1 1DP','UK'),('Berglunds snabbkop','Christina Berglund','Berguvsvagen 8','Lulea','S-958 22','Sweden');
select * from customers2;
DELIMITER $$
create procedure
GETSCustomerData()
begin
select * from customers2;
end$$
DELIMITER ;
call GETSCustomerData;
DELIMITER $$
create procedure
detailscustomer(in city1 varchar(30))
begin
select * from customers2
where city=city1;
end$$
DELIMITER ;
call detailscustomer('mexico D.F');