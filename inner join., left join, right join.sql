create database dineshdb;
use dineshdb;

create table employees(employeeid int not null, Firstname varchar(255), LastName varchar(255),city varchar(255), country varchar(255), salary bigint);
select * from employees;

insert into employees VALUES(1,'employee1','Lastname1','city1','country1',18000);
insert into employees VALUES(2,'employee2','Lastname2','city2','country2',19000);
insert into employees VALUES(3,'employee3','Lastname3','city3','country3',20000);
insert into employees VALUES(4,'employee4','Lastname4','city4','country4',22000);
insert into employees VALUES(5,'employee5','Lastname5','city5','country5',25000);
insert into employees VALUES(6,'employee6','Lastname6','city6','country6',30000);
insert into employees VALUES(7,'employee7','Lastname7','city7','country7',35000);
insert into employees VALUES(8,'employee8','Lastname8','city8','country8',40000);
insert into employees VALUES(9,'employee9','Lastname9','city9','country9',50000);
insert into employees VALUES(10,'employee10','Lastname10','city10','country10',60000);
insert into employees VALUES(11,'employee11','Lastname11','city11','country11',70000);
insert into employees VALUES(12,'employee12','Lastname12','city12','country12',80000);
insert into employees VALUES(13,'employee13','Lastname13','city13','country13',90000);
insert into employees VALUES(14,'employee14','Lastname14','city14','country14',260000);
insert into employees VALUES(15,'employee15','Lastname15','city15','country15',160000);
insert into employees VALUES(16,'employee16','Lastname16','city16','country16',360000);
insert into employees VALUES(17,'employee17','Lastname17','city17','country17',460000);
insert into employees VALUES(18,'employee18','Lastname18','city18','country18',560000);
insert into employees VALUES(19,'employee19','Lastname19','city19','country19',660000);
insert into employees VALUES(20,'employee20','Lastname20','city20','country20',760000);

create table person(personid int not null, Fullname varchar(255), Nationality varchar(255), city varchar(255),country varchar(255), employeeid int);
select * from person;

insert into person VALUES(1,'person1','Nepalese1','city1','country1',1);
insert into person VALUES(2,'person2','Nepalese2','city2','country2',2);
insert into person VALUES(3,'person3','Nepalese3','city3','country3',3);
insert into person VALUES(4,'person4','Nepalese4','city4','country4',4);
insert into person VALUES(5,'person5','Nepalese5','city5','country5',5);
insert into person VALUES(6,'person6','Nepalese6','city6','country6',6);
insert into person VALUES(7,'person7','Nepalese7','city7','country7',7);
insert into person VALUES(8,'person8','Nepalese8','city8','country8',8);
insert into person VALUES(9,'person9','Nepalese9','city9','country9',9);
insert into person VALUES(10,'person10','Nepalese10','city10','country10',10);
insert into person VALUES(11,'person11','Nepalese11','city11','country11',11);
insert into person VALUES(12,'person12','Nepalese12','city12','country12',12);
insert into person VALUES(13,'person13','Nepalese13','city13','country13',13);
insert into person VALUES(14,'person14','Nepalese14','city14','country14',14);
insert into person VALUES(15,'person15','Nepalese15','city15','country15',15);

select * from employees;
select * from person;

select employees.firstname, employees.lastname, employees.salary, person.fullname, 
person.nationality from employees inner join person on employees.employeeid=person.employeeid;




select * from person where personid between 11 and 15;

