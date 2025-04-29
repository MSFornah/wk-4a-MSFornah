-- QUESTION 1
SELECT paymentDate, SUM(amount) AS total_payment
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- QUESTION 2
SELECT customerName, country, AVG(creditLimit) AS avg_credit_limit
FROM customers
GROUP BY customerName, country;

-- QUESTION 3
SELECT productCode, quantityOrdered, 
       MAX(priceEach) * quantityOrdered AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;


-- QUESTION 4
SELECT checkNumber, MAX(amount) AS highest_payment
FROM payments
GROUP BY checkNumber;
