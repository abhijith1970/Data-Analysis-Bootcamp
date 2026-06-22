SELECT * FROM [dbo].[EmployeeRecords];

SELECT * FROM [dbo].[EmployeeRecords]
where not FirstName = 'John' and  not Salary = 60000

SELECT * FROM [dbo].[EmployeeRecords]
where not LastName ='Miller' or not Department  = 'HR'

SELECT * FROM [dbo].[EmployeeRecords]
where Salary between 75000 and 85000

SELECT * FROM [dbo].[EmployeeRecords]
where not Salary between 75000 and 85000

SELECT * FROM [dbo].[EmployeeRecords]
where Department in ('HR','IT')

SELECT * FROM [dbo].[EmployeeRecords]
where Department NOT in ('HR','IT')	
