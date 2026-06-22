SELECT * FROM table1

SELECT * FROM table2

SELECT * FROM table1 left join table2
on table1.c1=table2.C1
WHERE table2.C3 is NULL

SELECT * FROM table1 right join table2
on table1.c1 = table2.C1
WHERE table1.c2 IS NULL