



create database [Advance SQL Questions]

USE [Advance sql questions]

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName NVARCHAR(100),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, EmployeeName, Salary)
VALUES
(1, 'Alice Smith', 70000.00),
(2, 'Bob Johnson', 85000.00),
(3, 'Carol White', 95000.00),
(4, 'David Brown', 60000.00),
(5, 'Eve Davis', 75000.00),
(6, 'Frank Miller', 90000.00),
(7, 'Grace Lee', 80000.00),
(8, 'Hannah Clark', 62000.00),
(9, 'Ivy Harris', 74000.00),
(10, 'Jack Lewis', 98000.00);


SELECT * FROM Employees

-- 2nd highest salary
SELECT MAX(salary) [Second highest salary]FROM employees 
WHERE salary <(SELECT max(Salary) FROM Employees)

--3rd highest salary
SELECT max(Salary) [Third highest salary]FROM Employees
where Salary <(
SELECT MAX(salary) FROM employees 
WHERE salary <(SELECT max(Salary) FROM Employees))


--Using CET
WITH cte as ( 
SELECT *, DENSE_RANK() OVER (order by salary desc)  as [Dr]FROM Employees

)
SELECT Salary[Second highest salary] FROM cte
where [DR] = 2

--3 rd highest salary
WITH cte as (
SELECT *, DENSE_RANK() OVER (order by salary desc) as [DR]FROM Employees

)

SELECT Salary [Third Highest salary] FROM cte
where DR = 3

--3 rd approach Using sub querry and DENSE rank
SELECT Salary [2 nd highest salary]FROm
(SELECT *,DENSE_RANK() oVER (oRDER by salary desc) [dr] FROM Employees) x
where dr = 2

--Another approach
SELECT TOP 1 salary [2 nd highest] FROM 
(SELECT distinct top 2 salary FROM Employees order by salary desc)x
order by Salary asc