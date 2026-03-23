-- total_revenue
SELECT SUM(total_sales) AS total_revenue
FROM cleaned_retail_data;

-- best_selling_products
SELECT product, SUM(quantity) AS total_units_sold
FROM cleaned_retail_data
GROUP BY product
ORDER BY total_units_sold DESC
LIMIT 10;

-- geographic_sales
SELECT city, SUM(total_sales) AS total_sales
FROM cleaned_retail_data
GROUP BY city
ORDER BY total_sales DESC;




