SELECT * 
FROM ProfitData

-- Previous months profit
SELECT *,lag(Profit) over (partition by  product order by monthnumber) [Lag function] 
FROM ProfitData

-- lag() --> previous 
-- lead()--> next one 

SELECT MonthNumber,MonthName,sum(Profit),
lag(sum(Profit)) over (order by monthnumber)[Previous month's profit] 
FROM ProfitData
group by MonthNumber,MonthName
order by MonthNumber