SELECT * FROM [dbo].[employees]

SELECT * into #1 FROM dbo.employees

SELECT * FROM #1

INSERT INTO #1 
VALUES(10,'Aditya','Thakur','Finance',25000,NULL)



update #1
set Salary = 55000
where Salary is null

update #1
set Hire_date ='2020-01-15'
where Employee_id = 10

