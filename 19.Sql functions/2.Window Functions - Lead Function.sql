cREATE DATABASE [profit db]

USE [profit db]

-- Create a table to store monthly profit data for different products
CREATE  TABLE ProfitData (
    MonthNumber INT,
    MonthName VARCHAR(3),
    Product VARCHAR(50),
    Profit INT
);

-- Insert data into the ProfitData table
INSERT INTO ProfitData (MonthNumber, MonthName, Product, Profit) VALUES
(1, 'Jan', 'Product A', 1000),
(2, 'Feb', 'Product A', 1500),
(3, 'Mar', 'Product A', 1200),
(4, 'Apr', 'Product A', 1700),
(5, 'May', 'Product A', 1300),
(6, 'Jun', 'Product A', 1600),
(1, 'Jan', 'Product B', 2000),
(2, 'Feb', 'Product B', 2500),
(3, 'Mar', 'Product B', 2200),
(4, 'Apr', 'Product B', 2700),
(5, 'May', 'Product B', 2300),
(6, 'Jun', 'Product B', 2600);


SELECT * FROM ProfitData

--To add a new column  that shows next month s  profit of each product

SELECT * , lead(Profit) over (partition by product order by monthnumber) [next months profit]
FROM ProfitData

--we dont want product column in the output but we want each months total profit to be shown by month number and month name 
--also a new column should be added to show next months total profit 

SELECT MonthNumber,MonthName,sum(Profit) [total profit],
lead(sum(Profit)) over( order by monthnumber)[next month profit]
FROM ProfitData
group by MonthNumber,MonthName
order by MonthNumber