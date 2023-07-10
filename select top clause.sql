create database top_clause;
use top_clause;

create table persons(personid int not null unique, personname varchar(255), country varchar(255));
insert into persons values(1,'name1','country1');
insert into persons values(2,'name2','country2');
insert into persons values(3,'name3','country3');
insert into persons values(4,'name4','country4');
insert into persons values(5,'name5','country5');
select * from persons;

select top 1 * from persons;