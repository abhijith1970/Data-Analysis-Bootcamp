create Database Employee_details



CREATE TABLE employees(
	Employee_id INT PRIMARY KEY,
	First_name VARCHAR(50),
	Last_name VARCHAR(50),
	Department VARCHAR(50),
	Salary DECIMAL(10,2),
	Hire_date DATE
);



INSERT INTO employees(Employee_id,First_name,Last_name,Department,Salary,Hire_date)
VALUES
(1, 'John', 'Doe', 'HR', 50000.00, '2020-01-15'),
(2, 'Jane', 'Smith', 'Finance', 60000.00, '2019-03-23'),
(3, 'Alice', 'Johnson', 'IT', 75000.00, '2021-07-10'),
(4, 'Bob', 'Brown', 'Marketing', 55000.00, '2018-09-30'),
(5, 'Charlie', 'Davis', 'IT', 70000.00, '2022-02-20');

