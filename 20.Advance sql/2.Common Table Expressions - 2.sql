SELECT * FROM employees

select * into #temp1 from dbo.employees

SELECT * FROM #temp1

--Example :1
with cte_1 as (
SELECT * FROM #temp1 where Employee_id in (1,2)
),cte_2 as(
SELECT * FROM #temp1 where Employee_id in (3,4)
)

SELECT * FROM cte_1
union all
SELECT * FROM cte_2

--Example 2:
with cte3 as(
SELECT * FROM #temp1 where Employee_id =1
),cte4 as (
SELECT * FROM #temp1 where Employee_id in (3)
)


SELECT * INTO #temp2 FROM(

) as combined

SELECT * FROM #temp2

--Example 3:
with cte3 as(
SELECT * FROM #temp1 where Employee_id =1
),cte4 as (
SELECT * FROM #temp1 where Employee_id in (3)
)

INSERT INTO #temp2 select * from (
SELECT * FROM cte3
union all
SELECT * FROM cte4
) x

select * from #temp2

--Example 4
with cte3 as (
select employeeid,firstname,Salary from #1 where EmployeeID = 2
),cte4 as (
select employeeid,firstname,Salary from #1 where EmployeeID in (4)
)

delete from #1 where EmployeeID in (select distinct employeeid from cte3
union all
select distinct EmployeeID from cte4
)


select * from #1

--Example 5 :
with cte3 as (
select employeeid,firstname,Salary from #temp1 where EmployeeID = 9
),cte4 as (
select employeeid,firstname,Salary from #temp1 where EmployeeID in (10)
)

update #temp1 set employeeid = 100 where EmployeeID not in (select distinct employeeid from cte3
union all
select distinct EmployeeID from cte4
)