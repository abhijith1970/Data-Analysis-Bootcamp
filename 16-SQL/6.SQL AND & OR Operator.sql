SELECT * FROM [dbo].[EmployeeRecords]

SELECT * FROM [dbo].[EmployeeRecords]
where LastName = 'Miller' and EmployeeID = 3
IN and both should be correct and in or any one condion can be correct to be executed

SELECT * FROM [dbo].[EmployeeRecords]
where Department = 'IT' or Department =  'Finance' 
 
SELECT * FROM [dbo].[EmployeeRecords]
where (Department = 'IT' or Department =  'Finance' ) and Salary > 75000
 