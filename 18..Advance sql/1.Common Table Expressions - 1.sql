/*
A Common Table Expression (CTE) in SQL is a temporary result set that you can reference within a 
SELECT, INSERT, UPDATE, or DELETE statement. CTEs are defined using the WITH keyword, 
and they can make complex queries easier to write, understand, and maintain by breaking them into simpler parts.
*/
SELECT * FROM employees

SELECT * INTO #temp1 FROM employees

SELECT * FROM #temp1

--Example 1: CTE	

WITH cte as (
SELECT * FROM #temp1
)
SELECT * FROM cte

--Example 2:

WITH TEST_CTE as (
SELECT Employee_id,First_name FROM #temp1 where employee_id in(2,4)
)

SELECT * FROM TEST_CTE

--Example 3:
with [common table expression] as (
SELECT * FROM #temp1 where Employee_id in(1,2,3)

) 
SELECT * into #temp2 FROM [common table expression]

SELECT * FROM #temp2

--So cte just dies after that batch of execution so we create a temporary table i mean just copy that into another table 
--soo i can last the whole seesion to work it out

--Example 4: 
WITH CTE_1 as (
SELECT * FROM #temp1 where Employee_id in(2,4,6)
)
UPDATE #temp1 set Employee_id=101 where Employee_id in(select distinct Employee_id from cte_1)

SELECT * FROM #temp1

--Exmaple 5:
WITH CTE_2 as (
SELECT * FROM #temp1 WHERE Employee_id=1
)

delete from #temp1 where Employee_id in(select distinct Employee_id from cte_2)

--Example 6:
with cte_3 as (
select * from #temp1 where Employee_id in(101)
)
insert into  #temp1 select * from cte_3

select * from #temp1
	