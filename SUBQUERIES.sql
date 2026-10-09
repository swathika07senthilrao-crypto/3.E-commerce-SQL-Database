SELECT Customer_Name,Age 
FROM dbo.[customer.csv]
WHERE Age > (
    SELECT AVG(Age)
    FROM dbo.[customer.csv]
);

SELECT Customer_Name,Total_Spent
FROM dbo.[customer.csv]
WHERE Total_Spent > (
    SELECT AVG(Total_Spent)
    FROM dbo.[customer.csv]
);

SELECT Customer_Name,City
FROM dbo.[customer.csv]
WHERE City IN (
    SELECT City
    FROM dbo.[customer.csv]
    WHERE Customer_Name = 'Rahul Sharma'
);

SELECT City, COUNT(*) AS customer_count
FROM dbo.[customer.csv]
GROUP BY City
HAVING COUNT(*) > (
    SELECT AVG(city_count)
    FROM (
        SELECT COUNT(*) AS city_count
        FROM dbo.[customer.csv]
        GROUP BY City
    ) AS city_counts
);