CREATE TABLE IF NOT EXISTS Customers (
    CustomerID,
    CustomerName,
    Country
);

CREATE TABLE IF NOT EXISTS Products (
    ProductID,
    ProductName,
    CustomerID,
    ExportCountry
);

INSERT INTO Customers (CustomerID, CustomerName, Country)
VALUES
(1, 'Aarav', 'India'),
(2, 'Anmol', 'USA'),
(3, 'George', 'UK'),
(4, 'Aaron', 'Canada'),
(5, 'Victoria', 'Australia');

INSERT INTO Products (ProductID, ProductName, CustomerID, ExportCountry)
VALUES
(101, 'Laptop', 1, 'Singapore'),
(102, 'Mobile', 2, 'Germany'),
(103, 'Tablet', 3, 'France'),
(104, 'Keyboard', 4, 'Japan'),
(105, 'Monitor', 5, 'Brazil');

SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';

SELECT * FROM Customers
WHERE CustomerName LIKE 'a%' AND CustomerName LIKE '%or%';

SELECT c.CustomerName, c.Country, p.ProductName, p.ExportCountry
FROM Customers c
JOIN Products p ON c.CustomerID = p.CustomerID
WHERE c.CustomerName LIKE 'a%' AND c.CustomerName LIKE '%or%';

SELECT DISTINCT ExportCountry
FROM Products;