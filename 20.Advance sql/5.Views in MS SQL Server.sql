SELECT * FROM Employees

 SELECT * INTO emp_bkp FROM Employees

SELECT * FROM emp_bkp

--A view is a virtual table ,it is a stored	SQL querry
--it helps in reducing the complexity of the code
--it helps in implementing security

CREATE view view_1 as(
SELECT * FROM emp_bkp
)

select * from view_1

--CTE: A temporary query shortcut that dies instantly when the query ends so it doesn't waste memory space.

--Temp Table: If you need that data to actually last longer, you upgrade to a Temp Table which holds memory for your entire session.

--Stored Procedure: If you want to bundle those queries into a reusable function you can call anytime, you write a Stored Procedure.

--View: And if you just want a permanent window to look at live data safely without saving any actual files (and which breaks if the source is deleted), you use a View.

--so if we dont want to show the salary of employees

CREATE view VIEW_2 as(
SELECT EmployeeID,FirstName,LastName,DepartmentID FROM emp_bkp

)

select * FROM VIEW_2

--updating the view
-- SO if we update a view it will even impact on base table 
-- so views are basically for retriving the data