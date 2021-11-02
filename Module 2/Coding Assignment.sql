--1 Find all the tracks that have a length of 5,000,000 milliseconds or more.
SELECT
milliseconds
FROM Tracks
WHERE milliseconds >=5000000;

--2 Find all the invoices whose total is between $5 and $15 dollars.
SELECT
InvoiceId,
CustomerId
FROM Invoices 
WHERE Total >= 5 AND Total <=15;

--3 Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.
SELECT
CustomerId,
FirstName,
LastName,
Company
FROM Customers
WHERE State == 'RJ' OR State == 'DF' OR State == 'AB' OR State == 'BC' OR State == 'CA' OR State == 'WA' OR State = 'NY';

--4 Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.
SELECT
InvoiceId,
CustomerId,
Total,
InvoiceDate
FROM Invoices 
Where CustomerId == 56 OR CustomerId == 58 AND Total > 1 AND Total < 5;

--5 Find all the tracks whose name starts with 'All'.
Select *
FROM Tracks
WHERE Name LIKE 'All%';

--6 Find all the customer emails that start with "J" and are from gmail.com.
SELECT * 
FROM Customers
WHERE Email LIKE 'J%' AND Email LIKE '%gmail.com';

--7 Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.
SELECT *
FROM Invoices
WHERE BillingCity == 'Brasilia' OR BillingCity == 'Edmonton' OR BillingCity == 'Vancouver'
ORDER BY InvoiceID DESC;

--8 Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.
SELECT CustomerId, COUNT(InvoiceId)
FROM Invoices
GROUP BY CustomerId 
ORDER BY COUNT(InvoiceId) DESC;

--9 Find the albums with 12 or more tracks.
SELECT AlbumId, COUNT(TrackId)
FROM Tracks
GROUP BY AlbumId
HAVING COUNT(TrackID) >= 12;