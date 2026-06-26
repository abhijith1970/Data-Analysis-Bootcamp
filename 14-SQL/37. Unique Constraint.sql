use constraints

--Unique Constraint
--It ensures that a column consists of unique values

--Case 1 : when the table already exists
alter table test_uni
add unique(lastname)
--NOw the last should also be unique

--Case 2 : we need to create the table
Create table test_uni(
SID  int unique,
age tinyint not null,
firstname varchar(256) not null unique,
lastname varchar(256)

)

SELECT * FROM test_uni

INSErt INTO test_uni VALUES (1,22,'Mayank','Nehra')


INSErt INTO test_uni VALUES (1,24,'Rohit','sigh')
-- thorws and error bcz it is not unique


INSErt INTO test_uni VALUES (null,22,'akhil','jain')
-- we can execute this bcz sid we only defined unique not null


INSErt INTO test_uni VALUES (2,23,null,'Nehra')
-- thowrs and eroor no null and it should be unique

truncate table test_uni