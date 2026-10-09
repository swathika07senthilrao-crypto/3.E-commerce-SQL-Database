SELECT Customer_Name,City,Age
FROM dbo.[customer.csv]
ORDER BY City ASC, Age DESC;

SELECT Customer_ID,Customer_Name,Registration_Date
FROM dbo.[customer.csv]
WHERE Customer_Name LIKE 'D%'
ORDER BY Registration_Date DESC;

SELECT TOP 5
    Customer_Name,
    Total_Spent
FROM dbo.[customer.csv]
WHERE Gender = 'Female'
ORDER BY Total_Spent DESC;

SELECT 
Customer_Name,Customer_Tier
FROM dbo.[customer.csv]
ORDER BY Customer_Tier ASC;

SELECT TOP 5
    City,
    COUNT(*) AS customer_count
FROM dbo.[customer.csv]
GROUP BY City
ORDER BY customer_count DESC;
