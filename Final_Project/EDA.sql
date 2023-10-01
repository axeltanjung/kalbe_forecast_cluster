CREATE DATABASE kalbe_sales;

USE kalbe_sales;

SHOW TABLES;

# Exploratory Data Analysis
# 1. Berapa rata-rata umur customer jika dilihat dari marital statusnya?
SELECT `Marital Status`, AVG(age) from customer
GROUP BY `Marital Status`;

# 2. Berapa rata-rata umur customer jika dilihat dari gendernya?
SELECT Gender, AVG(age) from customer
GROUP BY Gender;

# 3. Tentukan nama store dengan total quantity terbanyak!
SELECT StoreName, SUM(Qty) AS TotalQuantity from transaction
LEFT JOIN store
ON transaction.StoreID = store.StoreID
GROUP BY StoreName
ORDER BY 2 DESC LIMIT 1;

# 4. Tentukan nama produk terlaris dengan total amount terbanyak!
SELECT `Product Name`, SUM(TotalAmount) AS TotalSales from transaction
LEFT JOIN product
ON transaction.ProductID = product.ProductID
GROUP BY `Product Name`
ORDER BY 2 DESC LIMIT 1;

