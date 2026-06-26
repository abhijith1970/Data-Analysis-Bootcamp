-- Create the table with potential duplicates
CREATE TABLE EmployeeRecords (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    ManagerID INT
);


-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords (EmployeeID, EmployeeName, ManagerID) VALUES
(1, 'Alice Smith', NULL),
(2, 'Bob Johnson', 1),
(3, 'Carol White', 1),
(4, 'David Brown', 2),
(5, 'Eve Davis', 2),
(6, 'Frank Miller', 3),
(2, 'Bob Johnson', 1),  -- Duplicate entry
(4, 'David Brown', 2);  -- Duplicate entry

SELECT * FROM EmployeeRecords
order by EmployeeID,EmployeeName,ManagerID

WITH cte as (
SELECT *,ROW_NUMBER() over (partition by employeeid,employeename,managerid order by employeeid) [Row number] FROM EmployeeRecords
)

--soo here in output duplicates have rownumber value has 2
delete from cte  where [ROW NUMBER] = 2

SELECT * INTO bkp_emp FROM EmployeeRecords

--other approach
SELECT *  FROM  bkp_emp
SELECT distinct * into #1  from bkp_emp
SELECT * FROM #1

--empty the table 
truncate table bkp_emp

--insert hash table values into it

insert into bkp_emp select * from #1

select * from bkp_emp