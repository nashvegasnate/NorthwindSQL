--4. I need a list of sales figures broken down by category name.  
--Include the total $ amount sold over all time and the total number of items sold.

SELECT 
  [Order Details].ProductID,
  Products.ProductName,
  SUM([Order Details].UnitPrice * Quantity) - SUM(CASE
    WHEN Discount <> 0
      THEN ([Order Details].UnitPrice * Quantity) * Discount
        ELSE 0
      END
  ) AS Total,

  SUM(Quantity) AS 'Total Units Sold'
FROM [Order Details]
  JOIN Products
    ON Products.ProductID = [Order Details].ProductID
  JOIN Categories
    ON Categories.CategoryID = Products.CategoryID
GROUP BY [Order Details].ProductID, Products.ProductName



