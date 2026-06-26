 
 --Coopying data from existing table to the new table


--case 1: The new table doesnt exist
--case 2 :the new table structure /New table exisits.


--Case 1:
SELECT * FROM dbo.Sales 

SELECT * INTO New_Table_1 FROM dbo.Sales
--so here it copies whole table structure(like coulmns name evyerthing) and even records all the data aslo
SELECT * FROM New_Table_1

-- Certain columns should be copied:
drop table New_Table_1

SELECT productid,quantity into new_table_1 FROM dbo.Sales



--only structure:
SELECT TOP 0 * INTO new_table_2 from dbo.Sales

SELECT * FROM new_table_2

-- INSERTING DATA:
 insert into new_table_2 SELECT * FROM dbo.Sales
 SELECT * FROM new_table_2

 --copying certain columns
 SELECT * INTO new_table_3 from dbo.Sales where 1=0
 -- in last wrong statment so no data copied except schema
 SELECT * FROM new_table_3

 insert into new_table_3 (ProductID,SaleDate) SELECT productid, saledate FROM dbo.Sales