SELECT * into #temp1
FROM [dbo].[employees];	

SELECT *FROM #temp1;

SELECT * into #temp3
FROM [dbo].[EmployeeRecords];

SELECT * FROM  #temp3;

So there are two types of temporary tables #temp is just temporary we can t use that in other quesries but
##temp3 can be used in other queries also