USE CustomerAnalytics;
GO

SELECT TOP 5 *
FROM dbo.[customer.csv];

SELECT Customer_ID,Customer_Name,City,Gender,Age 
FROM dbo.[customer.csv]
WHERE City = 'Thane'
AND GENDER='Female';

SELECT Customer_ID,Customer_Name,City,Gender,Age 
FROM dbo.[customer.csv]
WHERE Age < 35;

SELECT Customer_Name 
FROM dbo.[customer.csv]
WHERE Customer_Name LIKE 'S%';

SELECT Customer_ID,Customer_Name 
FROM dbo.[customer.csv]
WHERE Customer_Tier = 'Gold'
AND City='Pune';

SELECT Customer_Name,Total_spent, Total_Orders
FROM dbo.[customer.csv]
WHERE Total_Spent > 10000
AND Total_Orders BETWEEN 5 AND 10;


SELECT Customer_Name,City, Registration_Date,City
FROM dbo.[customer.csv]
WHERE Registration_Date > '2024-01-01'
AND State='karnataka';

SELECT Customer_Name,City,Pincode
FROM dbo.[customer.csv]
WHERE Pincode IN (989324);
