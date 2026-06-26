SELECT * FROM dbo.Sales

SELECT 
productId,
sum(Totalamount) [Sum of sales],
sum(Quantity) [Sum of quantity],
avg(Totalamount)[avg of sales],
avg(Quantity) [avgg of quantity]
FROM dbo.Sales
group by ProductID
having sum(Totalamount) <700 and  sum(Quantity) =21

