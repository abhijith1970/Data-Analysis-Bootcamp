

--Primary Key Constraint

--Case 1 : When new is to be created
create table test_pk_1 (
eid int primary key,
gender char(1),
age tinyint,
firstname varchar(256)
)

insert into test_pk_1 values(1,'M',23,'Mayank')

select * from test_pk_1

insert into test_pk_1 values (1,'F',19,'Priya')
--throws an error

insert into test_pk_1 values (null,'M',25,'Raj')
--still throws and error bcz of null value

truncate table test_pk_1


--Case 2 : Table Already exists
alter table test_pk_1
add primary key (age)
--throws and error bcz one table should contain only one primary key

create table test_pk_2 (
SID int not null unique,
firstname nvarchar(256),
age tinyint not null
)

alter table test_pk_2
add primary key (sid,age)

alter table test_pk_2
add primary key (sid)