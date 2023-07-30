SELECT SUM(OrderQty) AS Soma_OrderQty, Name, Product.ProductID, OrderDate
FROM 
  `intense-acrobat-394414.brutas_rox.SalesOrderDetail` AS salesorderdetail, 
  `intense-acrobat-394414.brutas_rox.SalesOrderHeader` AS salesorderheader, 
  `intense-acrobat-394414.brutas_rox.Product` AS product
WHERE 
  product.ProductID=salesorderdetail.ProductID
AND 
  salesorderdetail.SalesOrderID=salesorderheader.SalesOrderID
GROUP BY  ProductID, OrderDate, Name
ORDER BY SUM(OrderQty) DESC