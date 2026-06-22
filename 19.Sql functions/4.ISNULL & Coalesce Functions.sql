CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);


INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, Address)
VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-1234', '123 Elm St'),
(2, 'Bob', 'Smith', NULL, '555-5678', NULL),
(3, 'Charlie', 'Williams', 'charlie.williams@example.com', NULL, '456 Oak St'),
(4, 'Diana', 'Brown', NULL, NULL, '789 Pine St'),
(5, 'Eve', 'Davis', 'eve.davis@example.com', '555-8765', NULL);

SELECT * FROM Customers

--IS NULL

SELECT CustomerID,isnull(Email,'Email NA'),isnull(PhoneNumber,'Phone number NA ') FROM Customers

--Coalesce Function this fucntion gives the output of first non null values
--So from our table if first email is not null the it will return that and if email is null and ph no is not it will return that

SELECT* FROM Customers
SELECT CustomerID,coalesce(Email,phonenumber,address,'contact NA')[coalesce function] FROM Customers
--if u see the output of this table then in the 4 th row botth email and ph no was null soo it returned the address