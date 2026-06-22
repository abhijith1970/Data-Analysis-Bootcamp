SELECT * FROM Employees	

--1)Write a SQL query to find the names of employees whose first names start with the letter 'J'.

SELECT * FROM Employees
where FirstName  like 'j%'

--2)Write a SQL query to find the names of employees whose last names end with the letter 'n'.

SELECT FirstName,LastName from Employees
WHERE LastName like '%n'

--3)Write a SQL query to find the email addresses of employees that contain the word "john".

SELECT FirstName,LastName,Email FROM Employees
where Email like '%john%'


--4)Write a SQL query to find the names of employees whose first names have exactly 5 characters.

SELECT FirstName FROM Employees 
where FirstName like '_____'

--5)Write a SQL query to find the names of employees whose last names contain the letter 'a' as the second character.

SELECT LastName FROM Employees
where LastName like '_a%'

