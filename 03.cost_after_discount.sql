--3. What is the cost after discount for each order?  
--Discounts should be applied as a percentage off.

SELECT 
  OrderId, 
  SUM(Quantity * UnitPrice) AS 'Undiscounted Price',
  SUM(CASE 
      WHEN Discount <> 1
      THEN (UnitPrice * Quantity) * Discount
      ELSE 0
    END
      ) AS Discount,
SUM(UnitPrice * Quantity) - SUM(CASE
      WHEN Discount <> 1
      THEN (UnitPrice * Quantity) * Discount
      ELSE 0
    END
      ) AS Total
FROM [Order Details]
GROUP BY OrderID

 

  
