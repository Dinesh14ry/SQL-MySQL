CREATE DATABASE DEFAULTCONSTRAINT;
CREATE TABLE PERSON(PERSONID INT NOT NULL,
FNAME VARCHAR(255),
LNAME VARCHAR(255) NOT NULL,
AGE INT,
CITY VARCHAR(255) DEFAULT 'lALBANDI');
SELECT * FROM PERSON;
INSERT INTO PERSON VALUES(1,'FNAME1','LNAME1',18,'KTM');
INSERT INTO PERSON VALUES(1,'FNAME2','LNAME2',20,'');

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
)
select * from persons;

insert into persons values(2,'shah','anil',18);

CREATE TABLE Orders (
    ID int NOT NULL,
    OrderNumber int NOT NULL,
    OrderDate date DEFAULT GETDATE()
);

