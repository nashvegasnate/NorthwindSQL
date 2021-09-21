--5. What are our 10 most expensive products?
 
SELECT top 10
SUM(Products.UnitPrice) AS 'Costliest Items',
Products.ProductName
FROM Products
GROUP BY Products.ProductName
ORDER BY 'Costliest Items' desc
