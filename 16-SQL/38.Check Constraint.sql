use constraints

--Check Constraint
--It checks for certain condition that can be applied on the columns of a table, if this condition is not
--fulfilled, we will not be able to insert the records into the table

--Case 1 : Table doesn't exist
Create table test_check (
EID int,
firstname varchar(256),
age tinyint check(age>=10)

)

SELECT * FROM test_check

INSERT INTO test_check values(1,'Mayank',20)

INSERT INTO test_check values(2,'Abhi',9)
--Thowrs an error bcz the check constraint so age should be grater than or equal to 10

update test_check set Eid =11 where EID = 1
--Case 2: table exsits:
alter table test_check
add check (EID > 5)

INSERT INTO test_check values(3,'ABHigana',23)
-- tHROWS AND ERROR BCZ EID SHOULD BE GREATER THN 5