SELECT * FROM table1

SELECT * FROM table2

SELECT * FROM table1 left join table2-- can also use outer join
on table1.C1=table2.C1

SELECT * FROM table1 a left join table2 b
on a.C1=b.C1

SELECT a.c1,a.c2,b.c3 FROM table1 a left join table2 b
on a.C1=b.C1