SELECT CONCAT(e.lastName, ', ', e.firstName) AS 'Sales Rep', count(o.orderNumber) AS '# Orders', SUM(od.quantityOrdered * priceEach) AS 'Total Sales'
FROM employees e JOIN customers c ON e.employeeNumber=c.salesRepEmployeeNumber
JOIN orders o ON c.customerNumber=o.customerNumber
JOIN orderdetails od ON o.orderNumber=od.orderNumber
WHERE e.jobTitle='Sales Rep'
GROUP BY 1
ORDER BY 3 DESC;