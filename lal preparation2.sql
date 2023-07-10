create database secretdb;
use secretdb;

create table customers(customerid int not null unique, customername varchar(255), city varchar(255), country varchar(255));
insert into customers VALUES(1,'name1','city1','country1');
insert into customers VALUES(2,'name2','city2','country2');
insert into customers VALUES(3,'name3','city3','country3');
insert into customers VALUES(4,'name4','city4','country4');
insert into customers VALUES(5,'name5','city5','country5');

create table consumers(consumerid int not null unique, consumername varchar(255), faculty varchar(255));
insert into consumers VALUES(1,'conName1','computer');
insert into consumers VALUES(2,'conName2','civil');
insert into consumers VALUES(3,'conName3','electronic');
insert into consumers VALUES(4,'conName4','mechanics');
insert into consumers VALUES(5,'conName5','architecture');
insert into consumers VALUES(6,'conName6','Geometric');
insert into consumers VALUES(7,'conName7','Commerce');
insert into consumers VALUES(8,'conName8','Science');

alter table consumers add customerid int;

/*
select customername from customers
union
select consumername  from consumers;
*/
/*
select customers.customerid, customers.country, consumers.consumername, consumers.faculty from customers
full join consumers on customers.customerid=consumers.customerid;
*/

create table products(productid int not null, productname varchar(255), category int, price bigint);
create table orderdetail(orderdetailid int not null, orderid bigint, productid int, quantity bigint);
alter table orderdetail add suppliername varchar(255);
update orderdetail set suppliername='AccessIT Infosys ' where orderdetailid=2;
update orderdetail set suppliername='MAX Infosys Supplier' where orderdetailid=3;
update orderdetail set suppliername='Hightech Infosys Supplier' where orderdetailid=4;
update orderdetail set suppliername='Ugratara Infosys Supplier' where orderdetailid=5;
update orderdetail set suppliername='Mercantile Infosys Supplier' where orderdetailid=6;
update orderdetail set suppliername='Dhurba Infosys Supplier' where orderdetailid=7;
update orderdetail set suppliername='Alias Tech Infosys Supplier' where orderdetailid=8;
update orderdetail set suppliername='Hikvision Infosys Supplier' where orderdetailid=9;



insert into products VALUES(1,'momo',1,20);
insert into products VALUES(2,'chawmein',2,18);
insert into products VALUES(3,'sausage',4,25);
insert into products VALUES(4,'pasta',6,30);
insert into products VALUES(5,'pizza',3,35);
insert into products VALUES(6,'burger',3,40);
insert into products VALUES(7,'noodles',4,20);
insert into products VALUES(8,'fried rice',6,20);


insert into orderdetail VALUES (1,'2',1,8);
insert into orderdetail VALUES (2,'1',2,10);
insert into orderdetail VALUES (3,'2',4,82);
insert into orderdetail VALUES (4,'4',3,2);
insert into orderdetail VALUES (5,'5',6,4);
insert into orderdetail VALUES (6,'7',10,10);
insert into orderdetail VALUES (7,'5',8,10);
insert into orderdetail VALUES (8,'4',7,9);
insert into orderdetail VALUES (8,'3',3,2);
insert into orderdetail VALUES (10,'7',5,8);

/*
sql any operator
select productname from products where productid=any(select productid from orderdetail where price=20);
*/

/*
sql where exists operator
select suppliername from orderdetail
where exists
(select productname from products where orderdetail.productid=products.productid and price=20);

*/

/*
select into statement
select * into backup2039 from products;
select * from backup2039;
select productname, category into backup2011 from  products;
select * from backup2011;
select products.productname, products.price, orderdetail.quantity, 
orderdetail.suppliername into backup200 from products
left join orderdetail on products.productid=orderdetail.productid;
select * from backup200;
*/

select * from products;
select * from orderdetail;

select * from customers;
select * from consumers;
create table students(studentid int not null unique, studentname varchar(255), category int, price bigint);
insert into students(studentid,studentname,category,price)
select productid, productname,category,price from products;

select * from students;

use secretdb;
create table employee(employeeid int, employeeName varchar(255), salary bigint);
select * from employee;
insert into employee VALUES (1,'employee1',18000);
insert into employee VALUES (2,'employee2',20000);
insert into employee VALUES (3,'employee3',25000);
insert into employee VALUES (4,'employee4',45000);
insert into employee VALUES (5,'employee5',55000);
ALTER TABLE EMPLOYEE ADD CITY VARCHAR(255);
ALTER TABLE EMPLOYEE ADD COUNTRY VARCHAR(255);

UPDATE EMPLOYEE SET CITY='CITY2' , COUNTRY='COUNTRY2' WHERE EMPLOYEEID=2;
UPDATE EMPLOYEE SET CITY='CITY3' , COUNTRY='COUNTRY3' WHERE EMPLOYEEID=3;
UPDATE EMPLOYEE SET CITY='CITY4' , COUNTRY='COUNTRY4' WHERE EMPLOYEEID=4;
UPDATE EMPLOYEE SET CITY='CITY5' , COUNTRY='COUNTRY5' WHERE EMPLOYEEID=5;

SELECT * FROM EMPLOYEE;
/*
CASE STATEMENT
SELECT EMPLOYEENAME, SALARY,
CASE
WHEN SALARY>=25000 THEN 'SALARY IS GREATER THAN 25 THOUSAND'
WHEN SALARY<=25000 THEN 'SALARY IS LESS THAN 25 THOUSAND'
END AS TEXTRESULT
FROM EMPLOYEE;

SELECT EMPLOYEENAME, SALARY FROM EMPLOYEE
ORDER BY
(
CASE
WHEN CITY IS NULL THEN COUNTRY
ELSE CITY
END);
*/
CREATE TABLE PERSON(PERSONID INT NOT NULL, PERSONNAME VARCHAR(255), SALARY BIGINT, CITY VARCHAR(255), COUNTY VARCHAR(255));
SELECT * FROM PERSON;
INSERT INTO PERSON VALUES(1,'NAME1',18000,'CITY1','COUNTRY1');
INSERT INTO PERSON VALUES(2,'NAME2',20000,'CITY2','COUNTRY2');
INSERT INTO PERSON VALUES(3,'NAME3',25000,'CITY3','COUNTRY3');
INSERT INTO PERSON VALUES(4,'NAME4',30000,'CITY4','COUNTRY4');
INSERT INTO PERSON VALUES(5,'NAME5',40000,'CITY5','COUNTRY5');
INSERT INTO PERSON VALUES(6,'NAME6',45000,'CITY6','COUNTRY6');
INSERT INTO PERSON VALUES(7,'NAME7',60000,'CITY7','COUNTRY7');
INSERT INTO PERSON VALUES(8,'NAME8',90000,'CITY8','COUNTRY8');
INSERT INTO PERSON VALUES(9,'NAME9',12000,'CITY9','COUNTRY9');
INSERT INTO PERSON VALUES(10,'NAME10',23000,'CITY10','COUNTRY10');

SELECT PERSONNAME, CITY,
CASE
WHEN SALARY>=60000 THEN 'SALARY IS GREATER THAN 60 THOUSAND'
WHEN SALARY<=40000 THEN 'SALARY IS SMALLER THAN 40 THOUSAND'
END AS SALARYRESULT
FROM PERSON;

SELECT PERSONNAME, CITY, COUNTY FROM PERSON
ORDER BY
(
CASE
WHEN CITY IS NULL THEN  COUNTY
ELSE CITY 
END);


CREATE TABLE CUSTOMER(CUSTOMERID INT NOT NULL UNIQUE, CUSTOMERNAME VARCHAR(255), QUANTITY INT, PRICE INT);
INSERT INTO CUSTOMER VALUES(1,'CUSTOMER1',12,120);
INSERT INTO CUSTOMER VALUES(2,'CUSTOMER2',2,120);
INSERT INTO CUSTOMER VALUES(3,'CUSTOMER3',30,120);
INSERT INTO CUSTOMER VALUES(4,'CUSTOMER4',50,NULL);
INSERT INTO CUSTOMER VALUES(5,'CUSTOMER5',80,120);
INSERT INTO CUSTOMER VALUES(6,'CUSTOMER6',10,NULL);
INSERT INTO CUSTOMER VALUES(7,'CUSTOMER7',4,120);
INSERT INTO CUSTOMER VALUES(8,'CUSTOMER8',5,120);
INSERT INTO CUSTOMER VALUES(9,'CUSTOMER9',8,NULL);
INSERT INTO CUSTOMER VALUES(10,'CUSTOMER10',9,120);
ALTER TABLE CUSTOMER ADD UNIT BIGINT;
UPDATE  CUSTOMER SET UNIT=2 WHERE CUSTOMERID=1;
UPDATE  CUSTOMER SET UNIT=3 WHERE CUSTOMERID=2;
UPDATE  CUSTOMER SET UNIT=12 WHERE CUSTOMERID=3;
UPDATE  CUSTOMER SET UNIT=50 WHERE CUSTOMERID=4;
UPDATE  CUSTOMER SET UNIT=45 WHERE CUSTOMERID=5;
UPDATE  CUSTOMER SET UNIT=20 WHERE CUSTOMERID=6;
UPDATE  CUSTOMER SET UNIT=20 WHERE CUSTOMERID=7;
UPDATE  CUSTOMER SET UNIT=24 WHERE CUSTOMERID=8;
UPDATE  CUSTOMER SET UNIT=26 WHERE CUSTOMERID=9;
UPDATE  CUSTOMER SET UNIT=29 WHERE CUSTOMERID=10;

SELECT * FROM CUSTOMER;
SELECT CUSTOMERNAME, QUANTITY + (PRICE * UNIT) FROM CUSTOMER;
SELECT CUSTOMERNAME, QUANTITY * (UNIT + COALESCE(PRICE,0)) FROM CUSTOMER;





