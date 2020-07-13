SELECT DATE_FORMAT(o.orderDate, '%M') AS Month_, DATE_FORMAT(o.orderDate, '%Y') AS Year_, SUM(od.priceEach * od. quantityOrdered) AS Payments_Received
FROM orders o JOIN orderdetails od ON o.orderNumber=od.orderNumber
GROUP BY Month_, Year_;