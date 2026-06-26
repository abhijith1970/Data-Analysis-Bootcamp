--Recursive CTE
--Factorial of a given number

with [r cte] as (
--anchor query
SELECT 1 as n

union all

--Recursive querry
SELECT n+1 FROM [r cte] where n<=4


)

SELECT * FROM [r cte]

with [s cte] as (
--anchor query
SELECT 1 as n

union all

--Recursive querry
SELECT n+1 FROM [s cte] where n<=4


)
SELECT exp(sum(log(n))) [Factorial] FROM [s cte]