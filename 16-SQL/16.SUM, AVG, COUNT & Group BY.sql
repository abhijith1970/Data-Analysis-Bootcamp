SELECT * FROM dbo.Sales

SELECT sum(quantity) [TOTAL Quantity]FROM dbo.Sales

SELECT sum(quantity) [TOTAL Quantity], sum(TotalAmount) [Total Amount] FROM dbo.Sales

SELECT avg(quantity) [Avg Quantity]FROM dbo.Sales

SELECT avg(quantity) [AVG Quantity], avg(TotalAmount) [Avg Amount] FROM dbo.Sales

-- Sum of quantity, Sum of total Amount, avg of quantity ,avg of total amount for each distinct product

SELECT productId,
sum(quantity) [TOTAL Quantity],
avg(quantity) [Avg Quantity],
sum(TotalAmount) [Total Amount],
avg(TotalAmount) [Avg Amount] FROM dbo.Sales
group by ProductID

SELECT productId,StoreId,
sum(quantity) [TOTAL Quantity],
avg(quantity) [Avg Quantity],
sum(TotalAmount) [Total Amount],
avg(TotalAmount) [Avg Amount] FROM dbo.Sales
group by ProductID,StoreID

SELECT count(*) FROM dbo.Sales

SELECT count(PaymentMethod) FROM dbo.Sales--NUll values wont be counted

SELECT PaymentMethod,count(distinct ProductID) FROM dbo.Sales
group by PaymentMethod