SELECT 
  SalesOrderID, 
  OrderDate, 
  TotalDue
FROM 
  `intense-acrobat-394414.brutas_rox.SalesOrderHeader` AS salesorderheader
WHERE 
  OrderDate BETWEEN '2011-09-01' AND '2011-09-30'
AND TotalDue>1000
ORDER BY TotalDue DESC