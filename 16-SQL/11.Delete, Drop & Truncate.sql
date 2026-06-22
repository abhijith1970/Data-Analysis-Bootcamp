SELECT * FROM [dbo].[employees]

SELECT * INTO #3 FROM dbo.employees

SELECT * FROM #3

DELETE FROM #3
where Last_name = ' '

--whatever we do like in upadte de;te statments where clause is very very important 
--or the whole table can be affected

truncate table #3

SELECT * FROM #3

--so all the records will be deleted but the names of column stay as it is (truncate)


--DELETE : Delete certain records from table 
--if we will use delete without where conditon all the records from the table will be deleted but structure remains

--Truncate : it will delete all the records from the table but the structure of the table remina same (ex coulmn names)

-- drop : all the records will be deleted and tablr structre will also be gone .