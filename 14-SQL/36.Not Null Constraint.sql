create database constraints

use constraints


--Constraints 
--Conditions that can be applied on columns of a table & these conditions are to be followed while
--inserting records into the table


--Not Null constraint

--Case1: We will have to create the new table
Create table test_no_null(
EID int not null,
age tinyint,
first_name varchar(256)



)

SELECT * FROM test_no_null

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME LIKE 'test_no_null'
--CHECKING IF THE COUMNS ARE NULLLABLE OR NOT

insert into test_no_null values(1,23,'Mayank')

insert into test_no_null values(null,23,'Mayank')--Thorws and error

insert into test_no_null values(2,NULL,'Mayank')

--Case 2: The table already existis:
--We want to make first name coulmn nullable:

alter table test_no_null 
alter column first_name varchar(256) NOT NULL

INSERT INTO test_no_null values(3,33,null)-- Thorws and error



alter table test_no_null
alter column age tinyint NOT null

-- so here the table already consists of null value soo it cant be updated now thast why the above line will throw the error