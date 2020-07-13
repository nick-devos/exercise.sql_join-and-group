SELECT p.productName AS 'Product Name', sum(o.quantityOrdered) AS 'Total # Ordered',
	(o.quantityOrdered * o.priceEach) AS 'Total Sale'
FROM products p LEFT JOIN orderdetails o ON p.productCode=o.productCode
GROUP BY p.productName
ORDER BY 3 desc;