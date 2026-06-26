

CREATE TABLE append1 (C1 int, C2 nvarchar(255), C3 int)
INSERT INTO append1 VALUES 
(1,'A',7),
(2,'B',8),
(3,'C',9)


CREATE TABLE append2 (C1 int, C2 nvarchar(255), C3 int)
INSERT INTO append2 VALUES 
(11,'AA',17),
(2,'B',8),
(33,'C1',91)


SELECT * FROM append1

SELECT * FROM append2

SELECT C1,C2,C3 FROM append1
union all
SELECT C1,C2,C3 FROM append2
--So here still duplicates might be pop up in the output


SELECT C1,C2,C3 FROM append1
union
SELECT C1,C2,C3 FROM append2
---NO duplicates here

-- AND both  the coulumns should be same and the data types also should be same 
-- and even order which are they are written also should be same
