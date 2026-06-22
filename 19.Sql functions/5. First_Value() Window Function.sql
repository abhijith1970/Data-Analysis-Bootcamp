create database [window fun]


CREATE TABLE EmployeeSalaries (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Salary INT,
    Department VARCHAR(50)
);


INSERT INTO EmployeeSalaries (EmployeeID, EmployeeName, Salary, Department)
VALUES
(1, 'Alice', 50000, 'HR'),
(2, 'Bob', 60000, 'HR'),
(3, 'Charlie', 55000, 'HR'),
(4, 'David', 75000, 'Finance'),
(5, 'Eve', 80000, 'Finance'),
(6, 'Frank', 72000, 'Finance'),
(7, 'Grace', 90000, 'IT'),
(8, 'Heidi', 95000, 'IT'),
(9, 'Ivan', 87000, 'IT');

SELECT * FROM EmployeeSalaries

SELECT *
,FIRST_VALUE(Salary) over (order by salary asc) [Minimum Salary]
FROM EmployeeSalaries

SELECT *
,FIRST_VALUE(EmployeeName) over (order by salary asc) [Employee with minimum Salary]
FROM EmployeeSalaries

SELECT *
,FIRST_VALUE(EmployeeName) over (order by salary asc) [Employee with minimum Salary]
,FIRST_VALUE(Salary) over (order by salary asc) [Minimum Salary]
FROM EmployeeSalaries

SELECT* 
,FIRST_VALUE(EmployeeName) over (partition by department order by salary )[FIRST VALUE]  
FROM  EmployeeSalaries