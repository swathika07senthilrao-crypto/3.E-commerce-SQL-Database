# 3. SQL Customer Analytics Project

## 📌 Project Overview

This project demonstrates SQL query writing and data analysis using Microsoft SQL Server. It focuses on exploring customer data, filtering records, sorting results, aggregating data, and writing subqueries to extract meaningful insights.

The project uses a customer dataset stored in the `CustomerAnalytics` database.

## 🎯 Objectives

* Retrieve customer information using `SELECT`.
* Filter customer records using `WHERE`.
* Sort data using `ORDER BY`.
* Group data using `GROUP BY`.
* Perform aggregations using `COUNT()`, `SUM()`, `AVG()`, and `MAX()`.
* Filter grouped results using `HAVING`.
* Write subqueries to perform more advanced data analysis.
* Identify top customers and cities based on different criteria.

## 🛠️ Tools & Technologies

* **Database:** Microsoft SQL Server
* **Query Language:** SQL (T-SQL)
* **IDE:** SQL Server Management Studio (SSMS)
* **Version Control:** Git and GitHub

## 📂 Project Structure

```text
SQL-Customer-Analytics/
│
├── SELECT QUERIES.sql
├── ORDERBY QUERY.txt
├── GROUPBY QUERY.sql
├── SUBQUERIES.sql
└── README.md
```

## 🧠 SQL Concepts Covered

### 1. SELECT Queries

Retrieve specific columns and customer records.

Examples:

* Display the first five records.
* Retrieve customer names, cities, ages, and genders.
* Find customers belonging to a specific city.
* Filter customers by age, tier, spending, or registration date.

### 2. WHERE Clause

Filter records based on specified conditions.

Examples:

* Find female customers from Thane.
* Find customers younger than 35.
* Find Gold-tier customers from Pune.
* Identify customers with spending above 10,000.
* Filter customers using `IN`, `BETWEEN`, and `LIKE`.

### 3. ORDER BY Clause

Sort records in ascending or descending order.

Examples:

* Sort customers by city and age.
* Display the highest-spending female customers.
* Sort customers by registration date.
* Retrieve the top five cities by customer count.

### 4. GROUP BY Clause

Group records to analyze customer distributions and spending patterns.

Examples:

* Count customers by city.
* Count customers by pincode, age, and state.
* Analyze customers by city, gender, and state.
* Calculate maximum and average spending by city.
* Find the top five cities by customer count.
* Calculate total spending by city.
* Find customer tiers with average spending above 5,000.

### 5. Aggregate Functions

The project uses the following aggregate functions:

| Function  | Purpose                           |
| --------- | --------------------------------- |
| `COUNT()` | Count records or customers        |
| `SUM()`   | Calculate total spending          |
| `AVG()`   | Calculate average age or spending |
| `MAX()`   | Find the highest spending value   |

### 6. Subqueries

Use nested SQL queries to compare individual customer values against calculated results.

Examples:

* Find customers older than the average age.
* Identify customers spending more than the overall average.
* Find customers belonging to the same city as a specified customer.
* Identify cities with customer counts above the average city count.

## 🔍 Example Queries

### Find female customers from Thane

```sql
SELECT Customer_ID, Customer_Name, City, Gender, Age
FROM dbo.[customer.csv]
WHERE City = 'Thane'
  AND Gender = 'Female';
```

### Find the top five cities by customer count

```sql
SELECT TOP 5
    City,
    COUNT(*) AS customer_count
FROM dbo.[customer.csv]
GROUP BY City
ORDER BY customer_count DESC;
```

### Find customers spending more than the average

```sql
SELECT Customer_Name, Total_Spent
FROM dbo.[customer.csv]
WHERE Total_Spent > (
    SELECT AVG(Total_Spent)
    FROM dbo.[customer.csv]
);
```

## 💡 Key Learnings

* Writing SQL queries to retrieve and analyze customer data.
* Applying multiple filtering conditions.
* Using sorting and grouping to summarize data.
* Applying aggregate functions to derive insights.
* Combining `GROUP BY`, `HAVING`, and `ORDER BY`.
* Using subqueries for comparisons against aggregate results.
* Practicing SQL Server syntax and database querying fundamentals.

## 🚀 How to Run the Project

1. Install Microsoft SQL Server and SQL Server Management Studio.
2. Create or select the `CustomerAnalytics` database.
3. Import the customer dataset and ensure the table is named `dbo.[customer.csv]`.
4. Open the `.sql` files in SSMS.
5. Execute the queries individually to explore the results.

## 📌 Future Improvements

* Explore indexes and query execution plans for performance optimization.
* Develop customer segmentation and spending analysis.
* Build a dashboard using Power BI or another visualization tool.
