USE sales;
-- Question 1: show total payment amount for each payment date
-- Display payment date and total amount, sort descending by date, Limit to top savepoint
SELECT paymentDate, SUM(amount) AS total_amount
FROM payments 
GROUP BY paymentDate
ORDER BY paymentDate DESC 
LIMIT 5;

-- Question 2: find the avarage gredit limt of each customer 
-- Display customer name, country, and avarage credit limit, group by customer name and country
SELECT customerName, country,
AVG(creditLimit) AS avarage_credit_limt
FROM customers
GROUP BY customerName, country;


-- Questoin 3: find the total price of product orderd from orderdetails table
-- Display productCode, quantity orderd, and total price, grouped by product code and quantity orderd
SELECT productCode, quantityOrdered, SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;


-- Question 4: find the highest payment amount for for each check number from payments table 
-- Display check number and highest amount paid, group by check number 
SELECT checkNumber, MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;