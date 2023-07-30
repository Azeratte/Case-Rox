WITH CONTAGEM AS (
  SELECT 
    COUNT(*) as cont,
    SalesOrderID
FROM 
    `intense-acrobat-394414.brutas_rox.SalesOrderDetail`
GROUP BY 
    SalesOrderID
HAVING 
    COUNT(*)>=3
) SELECT COUNT(1) AS RESULTADO FROM CONTAGEM