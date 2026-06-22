CREATE TABLE Departments1 (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(100)
);

CREATE TABLE Employees1(
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);


INSERT INTO Departments1(DepartmentID, DepartmentName)
VALUES
(101, 'Human Resources'),
(102, 'Finance'),
(103, 'IT');

-- STEP 5: Insert the employee data with your new custom name for Employee 1 [cite: 3]
INSERT INTO Employees1 (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'Abhijith', 'Sharma', 'abhijith.sharma@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);

-- STEP 6: Run a quick select to verify everything looks beautiful
SELECT * FROM Employees1;
SELECT * FROM Departments1;

--1)Write a SQL query to list the names of employees along with the names of the departments they work in.

SELECT FirstName,LastName,DepartmentName FROM Employees1 e inner join Departments1 d
on e.DepartmentID=d.DepartmentID

--2)Write a SQL query to list all the departments and the employees working in them, including departments with no employees.

SELECT DepartmentName,FirstName FROM Employees1 e right join Departments1 d
on e.DepartmentID=d.DepartmentID


--3)Write a SQL query to find the names of employees who do not belong to any department (i.e., no matching department ID).

SELECT DepartmentName,FirstName FROM Employees1 e left join Departments1 d
on e.DepartmentID=d.DepartmentID
where e.DepartmentID is NULL
 

--4)Write a SQL query to list the names of employees who work in the same department as 'Jane Doe'.

SELECT * FROM Employees1
where DepartmentID = (
select DepartmentID from Employees1
WHERE FirstName = 'JANE' AND LastName='DOE'
)

--5)Write a SQL query to find the department with the highest total salary paid to its employees.

SELECT * from Departments1
where DepartmentID=(
SELECT top 1 DepartmentID
froM Employees1
group by DepartmentID
order by sum(Salary) DESC

)


