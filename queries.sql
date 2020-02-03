-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName FROM Product AS P
JOIN Category AS C
ON P.CategoryID = C.ID;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT ID, CompanyName FROM `Order` AS O
JOIN Shipper AS S
ON O.Shipvia = S.id
WHERE O.OrderDate < `2012-08-09`;

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT P.ProductName, Quantity FROM OrderDetail AS O
JOIN Product AS P
ON O.ProductId = P.Id
WHERE O.OrderId = 10251
ORDER BY ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT Id AS `Order ID`, CompanyName AS `Customers Company Name`, E.LastName AS `Employee Last Name` FROM `Order` AS O
JOIN Customer AS C
ON O.CustomerId = C.Id
JOIN Employee AS E
ON E.Id = O.EmployeeId;