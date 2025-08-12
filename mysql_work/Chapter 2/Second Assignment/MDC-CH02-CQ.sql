SELECT * FROM CUSTOMER;

SELECT * FROM INVOICE;

SELECT * FROM INVOICE_ITEM;

SELECT LastName, FirstName, Phone
FROM CUSTOMER;

SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE FirstName = 'Nikki';


SELECT LastName, FirstName, Phone, DateIn, DateOut
FROM CUSTOMER
JOIN INVOICE  ON CUSTOMER.CustomerID = INVOICE.CustomerID
WHERE INVOICE.TotalAmount > 100;


SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE FirstName LIKE 'B%';


SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE LastName LIKE '%cat%';


SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE Phone LIKE '_23%';

SELECT 
    MAX(TotalAmount) AS MaxTotal,
    MIN(TotalAmount) AS MinTotal
FROM INVOICE;


SELECT AVG(TotalAmount) AS AverageTotal
FROM INVOICE;


SELECT COUNT(*) AS NumberOfCustomers
FROM CUSTOMER;


SELECT *
FROM CUSTOMER
ORDER BY LastName, FirstName;


SELECT LastName, FirstName, COUNT(*) AS CustomerCount
FROM CUSTOMER
GROUP BY LastName, FirstName;


SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE CustomerID IN (
    SELECT CustomerID
    FROM INVOICE
    WHERE TotalAmount > 100
)
ORDER BY LastName ASC, FirstName DESC;


SELECT CUSTOMER.LastName, CUSTOMER.FirstName, CUSTOMER.Phone
FROM CUSTOMER, INVOICE
WHERE CUSTOMER.CustomerID = INVOICE.CustomerID
  AND INVOICE.TotalAmount > 100
ORDER BY CUSTOMER.LastName ASC, CUSTOMER.FirstName DESC;


SELECT LastName, FirstName, Phone
FROM CUSTOMER
JOIN INVOICE ON CUSTOMER.CustomerID = INVOICE.CustomerID
WHERE TotalAmount > 100
ORDER BY LastName ASC, FirstName DESC;


SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE CustomerID IN (
    SELECT CustomerID
    FROM INVOICE
    WHERE InvoiceNumber IN (
        SELECT InvoiceNumber
        FROM INVOICE_ITEM
        WHERE Item = 'Dress Shirt'
    )
)
ORDER BY LastName ASC, FirstName DESC;


SELECT LastName, FirstName, Phone
FROM CUSTOMER, INVOICE, INVOICE_ITEM
WHERE CUSTOMER.CustomerID = INVOICE.CustomerID
  AND INVOICE.InvoiceNumber = INVOICE_ITEM.InvoiceNumber
  AND Item = 'Dress Shirt'
ORDER BY LastName ASC, FirstName DESC;


SELECT LastName, FirstName, Phone
FROM CUSTOMER
JOIN INVOICE ON CUSTOMER.CustomerID = INVOICE.CustomerID
JOIN INVOICE_ITEM ON INVOICE.InvoiceNumber = INVOICE_ITEM.InvoiceNumber
WHERE Item = 'Dress Shirt'
ORDER BY LastName ASC, FirstName DESC;


SELECT LastName, FirstName, Phone
FROM CUSTOMER
JOIN INVOICE ON CUSTOMER.CustomerID = INVOICE.CustomerID
JOIN INVOICE_ITEM ON INVOICE.InvoiceNumber = INVOICE_ITEM.InvoiceNumber
WHERE INVOICE_ITEM.Item = 'Dress Shirt'
ORDER BY LastName ASC, FirstName DESC;



