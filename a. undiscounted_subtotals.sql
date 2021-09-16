--1. What is the undiscounted subtotal for each Order 
--(identified by OrderID).

select [Order Details].OrderID,
  SUM(Quantity * UnitPrice) AS 'Undiscounted Subtotal'
FROM [Order Details]
  JOIN Orders
    ON Orders.OrderId = [Order Details].OrderId
GROUP BY [Order Details].OrderId

--To group in descending order of total, add this:
--order by 'Undiscounted Subtotal' desc
