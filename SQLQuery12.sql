SELECT CONVERT(VARCHAR, OrderID) AS OrderID FROM OrderDetails
UNION ALL
SELECT CONVERT(VARCHAR, OrderID) AS ORDERID FROM Orders			
ORDER BY OrderID

SELECT CONVERT(VARCHAR, ContactName) AS ContactName FROM Customers
UNION ALL
SELECT CONVERT(VARCHAR, ContactName) AS ContactName FROM Suppliers		
ORDER BY ContactName

SELECT CONVERT(VARCHAR, City) AS City, Country FROM Customers
WHERE CITY LIKE '%a'
UNION
SELECT CONVERT(VARCHAR, CITY) AS City, Country FROM Suppliers
WHERE CITY LIKE '%a'

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

SELECT City, Country FROM Customers
WHERE CONVERT(VARCHAR, Country) = 'Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE CONVERT(VARCHAR, Country) = 'Germany'
ORDER BY City

SELECT * FROM Suppliers
SELECT * FROM Customers

SELECT City, Country FROM Customers
WHERE CONVERT(VARCHAR, Country) = 'Mexico'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE CONVERT(VARCHAR, Country) = 'Mexico'
ORDER BY City

SELECT CONVERT(VARCHAR, 'Customer') AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT CONVERT(VARCHAR, 'Supplier') ContactName, City, Country
FROM Suppliers

SELECT  CONVERT(VARCHAR, CustomerID), ContactName
FROM Customers
GROUP BY ContactName

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country

SELECT COUNT(CustomerID), City
FROM Customers
GROUP BY City

SELECT COUNT(SupplierID), City
FROM Suppliers
GROUP BY City

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC

SELECT SupplierID AS ID COUNT(*) Supplier  ---EXPERIMENT
FROM (SELECT DISTINCT Country FROM Suppliers)
GROUP BY Country
ORDER BY COUNT(SupplierID) DESC


SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName


SELECT ProductName, Unit FROM Products

SELECT DISTINCT Country FROM Customers
Order By Country

SELECT DISTINCT CustomerID, COUNTRY FROM Customers
ORDER BY CustomerID, COUNTRY DESC

SELECT COUNT(DISTINCT Country) FROM Customers--TOTAL OF COUNTRY DISTINCT-UNIQUE

SELECT COUNT(DISTINCT City) FROM Customers

SELECT Count(*) AS DistinctCountries
FROM (SELECT DISTINCT Country FROM Customers)

SELECT distinct city from customers

SELECT * FROM Customers
WHERE Country='sPAIN'