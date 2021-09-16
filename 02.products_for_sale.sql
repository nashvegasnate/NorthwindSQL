--2. What products are currently for sale (not discontinued)?

SELECT ProductName, UnitsInStock
FROM Products
WHERE UnitsInStock != 0
