SELECT City, COUNT(*) AS customer_count
FROM dbo.[customer.csv]
GROUP BY City;

SELECT Pincode, COUNT(*) AS customer_count
FROM dbo.[customer.csv]
GROUP BY Pincode;

SELECT City,Gender,State,COUNT(*) AS Order_count
FROM dbo.[customer.csv]
WHERE State = 'Tamil Nadu'
GROUP BY City, Gender, State
ORDER BY City;

SELECT Age, COUNT(*) AS customer_count
FROM dbo.[customer.csv]
GROUP BY Age
ORDER BY Age;

SELECT State, COUNT(*) AS Total_Orders
FROM dbo.[customer.csv]
GROUP BY State

SELECT City, MAX(Total_Spent) AS highest_spending
FROM dbo.[customer.csv]
GROUP BY City;

SELECT City, AVG(Total_Spent) AS average_spending
FROM dbo.[customer.csv]
GROUP BY City
ORDER BY average_spending DESC;


SELECT TOP 5 City, COUNT(*) AS customer_count
FROM dbo.[customer.csv]
GROUP BY City
ORDER BY customer_count DESC;

SELECT TOP 5 City, SUM(Total_Spent) AS total_spending
FROM dbo.[customer.csv]
GROUP BY City
ORDER BY total_spending DESC;

SELECT Customer_Tier, AVG(Total_Spent) AS average_spending
FROM dbo.[customer.csv]
GROUP BY Customer_Tier
HAVING AVG(Total_Spent) > 5000;