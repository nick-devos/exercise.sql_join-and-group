SELECT pl.productLine AS 'Product Line', sum(o.quantityOrdered) AS '# Sold'
FROM productlines pl JOIN products p ON pl.productLine=p.productLine
JOIN orderdetails o ON o.productCode=p.productCode
GROUP BY pl.productLine
ORDER BY 2 DESC;