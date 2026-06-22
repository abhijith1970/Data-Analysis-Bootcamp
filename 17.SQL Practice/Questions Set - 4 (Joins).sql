SELECT * FROM customers

SELECT * FROM Orders

SELECT * FROM Products



--1) Identify pairs of customers who live in the same country.

SELECT x.CustomerName,y.CustomerName
FROM Customers x inner join Customers y 
on x.Country=y.Country and x.CustomerID != y.CustomerID and x.CustomerID > y.CustomerID
-- So here first we will apply inner join them if we just apply inner join the same data will be given side by side bcz of same table soo
--to only get 1 we use not equal to and then again 2 records migth come those are correct but just they copy soo we will keep less than or greater than we will get one

--2) Find the customer who has spent the most on their orders.

SELECT  c.CustomerName, SUM(p.Price) AS TotalSpent
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
INNER JOIN Products p ON o.ProductID = p.ProductID
GROUP BY c.CustomerName
ORDER BY TotalSpent DESC

--3) Find customers who have ordered more than one type of product.

SELECT CustomerName,COUNT(distinct ProductName) [no of prodcuts ordered]FROM Customers c inner join Orders o
on c.CustomerID = o.CustomerID
inner join Products p 
on o.ProductID = p.ProductID
group by CustomerName
having count( distinct ProductName)>1

--4) List all products and their corresponding orders, using a RIGHT JOIN, including products that have never been ordered.

SELECT orderid,ProductName,p.ProductID FROM Orders o right join Products p
on o.ProductID=p.ProductID


--5) Retrieve all orders placed by customers from the USA.

select c.CustomerName,o.OrderID,c.Country,ProductName from Customers C INNER JOIN Orders o
on c.CustomerID=o.CustomerID
inner join Products p 
on o.ProductID=p.ProductID
where  country = 'usa'

--6) Find the names of customers who have ordered a product priced above $500.

SELECT distinct c.CustomerName,p.ProductName,sum(p.Price)[Total spent] FROM Customers c inner join Orders o 
on c.CustomerID=o.CustomerID
inner join Products p 
on o.ProductID=p.ProductID
group by CustomerName , ProductName
having sum(p.Price) > 500



--7) Find customers who have ordered the same product more than once.

SELECT CustomerName,productid, count(OrderID) FROM Customers c INNER JOIN Orders o 
on c.CustomerID=o.CustomerID
group by CustomerName,ProductID
having count(OrderID) > 1