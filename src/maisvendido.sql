SELECT Product.Name, SUM(OrderQty) AS Soma_OrderQty, DaysToManufacture
FROM 
    `intense-acrobat-394414.brutas_rox.SalesOrderDetail` AS salesorderdetail, 
    `intense-acrobat-394414.brutas_rox.SpecialOfferProduct` AS specialofferproduct,
    `intense-acrobat-394414.brutas_rox.Product` AS Product
WHERE 
    Product.ProductID=specialofferproduct.ProductID
AND 
    specialofferproduct.SpecialOfferID=salesorderdetail.SpecialOfferID
AND 
    specialofferproduct.ProductID=salesorderdetail.ProductID
GROUP BY 
    DaysToManufacture,Product.Name
ORDER BY 
    SUM(OrderQty) DESC
    LIMIT 3