SELECT * FROM [dbo].[employees]

insert into dbo.employees (Employee_id,First_name,Last_name,Department,Salary,Hire_date)
values(6,'Abhijith','Reddy','IT',67000,'12-06-2023')

insert into dbo.employees (Employee_id,First_name,Last_name,Department)
values(7,'Ashish','Nehra','IT')

insert into dbo.employees 
values(8,'Tony','Stark','IT',90000,'12-06-2014')

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
where table_name = 'employees '	