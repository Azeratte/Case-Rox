SELECT concat(FirstName,' ', LastName) as Name, COUNT(SalesOrderID) as cont
FROM  `intense-acrobat-394414.brutas_rox.Person` AS Person, 
      `intense-acrobat-394414.brutas_rox.Sales_Customer` AS Customer, 
      `intense-acrobat-394414.brutas_rox.SalesOrderHeader` AS Salesorderheader
WHERE 
      CAST(Person.BusinessEntityID AS STRING)=Customer.PersonID
AND customer.CustomerID=Salesorderheader.CustomerID
GROUP BY FirstName, LastName