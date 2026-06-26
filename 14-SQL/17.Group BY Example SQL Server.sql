SELECT * FROM dbo.Sales

SELECT PaymentMethod ,sum(totalamount) as[ Sum of Sales ]  FROM dbo.Sales
Group by PaymentMethod

SELECT productId,PaymentMethod ,sum(totalamount) as[ Sum of Sales ]  FROM dbo.Sales
Group by productId, PaymentMethod
order by ProductID