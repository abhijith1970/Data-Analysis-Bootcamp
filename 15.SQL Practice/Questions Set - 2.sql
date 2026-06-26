
select * from Employees

--1. How do you select employees who work in the 'IT' department and have a salary greater than 75,000?

SELECT * FROM Employees
WHERE Department = 'IT' and Salary >75000

--2. How do you find employees who work in the 'HR' department or have a salary less than 60,000?

SELECT * FROM Employees
WHERE Department = 'hr' or Salary <60000

--3. How do you select employees who do not work in the 'Finance' department?

SELECT * FROM Employees
WHERE Department != 'Finance' 


--4. How do you find employees whose salary is between 60,000 and 70,000 and who work in the 'Finance' department?

SELECT * FROM Employees
WHERE (Salary >= 60000 and Salary <=70000) and Department = 'Finance'


--5. How do you find employees who work in the 'IT' department and do not have a salary greater than 80,000?

SELECT * FROM Employees
WHERE Department ='IT' and Salary < 80000

--6. How do you find employees who work in the 'HR' or 'Finance' departments and have a salary greater than 65,000?

SELECT * FROM Employees
WHERE Salary >= 65000 and (Department ='Finance' or Department ='hr')

--7. How do you select employees whose last name starts with 'D' and do not work in the 'HR' department?

SELECT * FROM Employees
WHERE LastName like 'D%' and Department != 'hr'

--8. How do you find employees who do not work in the 'IT' department and have a salary greater than 70,000?

SELECT * FROM Employees
WHERE Salary > 70000 and Department != 'it'

--9. How do you select employees who work in the 'IT' department and either have a salary greater 
--than 75,000 or have the first name 'Laura'?

SELECT * FROM Employees
where Department ='it'
AND (Salary >75000 or FirstName = 'laura')

--10. How do you find employees who do not work in the 'HR' or 'IT' departments?

SELECT * FROM Employees
WHERE Department != 'hr' AND  Department !='it'