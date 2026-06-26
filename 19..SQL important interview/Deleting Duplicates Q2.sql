-- Create the table with EmployeeID and Email
CREATE TABLE EmployeeRecords_1 (
    EmployeeID INT,
    Email VARCHAR(100)
);


-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords_1 (EmployeeID, Email) VALUES
(1, 'alice@example.com'),
(2, 'bob@example.com'),
(3, 'carol@example.com'),
(4, 'david@example.com'),
(2, 'bob@example.com'),        -- Duplicate entry (same EmployeeID and Email)
(4, 'david@example.com'),      -- Duplicate entry (same EmployeeID and Email)
(5, 'shared@example.com'),     -- Valid case: Same email, different EmployeeID
(6, 'shared@example.com');     -- Valid case: Same email, different EmployeeID


SELECT * FROM EmployeeRecords_1
order by EmployeeID

SELECT distinct * INTO #1 FROM EmployeeRecords_1

truncate table employeerecords_1

insert into EmployeeRecords_1 select * from #1

SELECT * FROM EmployeeRecords_1

--now removing fake email id (duplicates)
with cte as (
SELECT *,ROW_NUMBER() over (partition by email order by employeeid) [rw]  FROM EmployeeRecords_1
)
--SELECT * FROM cte
delete  from cte where rw=2 

SELECT * FROM EmployeeRecords_1

--retaining higer employee id
with cte as (
SELECT *,ROW_NUMBER() over (partition by email order by employeeid desc) [rw]  FROM EmployeeRecords_1
)
--SELECT * FROM cte
delete  from cte where rw=2 

SELECT * FROM EmployeeRecords_1