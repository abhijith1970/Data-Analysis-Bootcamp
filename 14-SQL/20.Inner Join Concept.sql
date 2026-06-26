

use [Sales Database]

--Creating Table1 & inserting records in Table1
create table table1 (C1 int, C2 nvarchar(max))
insert into table1 values (1,'A'),
(1,'B'),
(2,'C'),
(NULL,'D'),
(3,'E'),
(7,'DA')

--Creating Table2 & inserting records in Table2
create table table2 (C1 int, C3 nvarchar(max))
insert into table2 values (1,'XA'),
(2,'MB'),
(2,'NX'),
(NULL,'MO'),
(4,'XY'),
(5,'TF')

SELECT * FROM table1
SELECT * FROM table2


SELECT * FROM table1 inner join table2 on table1.C1 = table2.C1

SELECT table1.C1,table1.C2,table2.C3 FROM table1
inner join table2 on table1.C1 = table2.C1