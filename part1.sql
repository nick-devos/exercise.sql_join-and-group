SELECT c.customerName AS 'Customer Name', CONCAT(e.lastName, ', ', e.firstName) AS 'Sales Rep'
FROM customers c, employees e
WHERE c.salesRepEmployeeNumber=e.employeeNumber
ORDER BY c.customerName;