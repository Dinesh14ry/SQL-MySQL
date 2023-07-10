create database pri_fore_key;
use pri_fore_key;

create table staff(staffid int not null primary key, fullname varchar(255), city varchar(255), country varchar(255));

insert into staff VALUES(1,'staff1','city1','country1');
insert into staff VALUES(2,'staff2','city2','country2');
insert into staff VALUES(3,'staff3','city3','country3');
insert into staff VALUES(4,'staff4','city4','country4');
insert into staff VALUES(5,'staff5','city5','country5');

select * from staff;
select * from customer;

create table customer(customerid int not null, customername varchar(255), address varchar(255), phone nvarchar(10),
staffid int,
foreign key(staffid)references staff(staffid)
);

insert into customer values(2,'customer2','address2','phone2',2);
