create database union_ope;
create table goods(productid int not null, productname varchar(255), productnumber bigint, quantity bigint);
select * from goods;
select * from orderdetails;

insert into goods VALUES(1,'momo',5007,12);
insert into goods VALUES(2,'chawmein',6002,14);
insert into goods VALUES(3,'pasta',1001,32);
insert into goods VALUES(4,'burger',9008,12);
insert into goods VALUES(5,'sausage',3002,17);

create table orderdetails(orderid int not null, ordernumber int, quantity bigint);
insert into orderdetails values(1,'2001',12);
insert into orderdetails values(2,'3001',23);
insert into orderdetails values(3,'6001',12);
insert into orderdetails values(4,'4001',14);
insert into orderdetails values(5,'5001',9);

select productnumber, quantity from goods
union
select ordernumber, quantity from orderdetails;