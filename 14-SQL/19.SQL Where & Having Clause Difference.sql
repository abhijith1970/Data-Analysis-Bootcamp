

select * from dbo.Sales
where TotalAmount>=161

select * from dbo.Sales

select productid, sum(totalamount) [Sum of sales] from dbo.Sales
group by ProductID
having sum(totalamount)<700

select productid,sum(totalamount) [Sum of sales] from dbo.Sales
where TotalAmount>=161
group by productid
having sum(totalamount)>=250
order by PRODUCTid desc

select productid,sum(totalamount) [Sum of sales] from dbo.Sales
where TotalAmount>=161
group by productid
having sum(totalamount)>=250
order by sum(totalamount) asc

--In simple terms — WHERE works on raw rows, HAVING works on aggregated results like SUM, COUNT, AVG etc.