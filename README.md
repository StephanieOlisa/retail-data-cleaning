# retail-data-cleaning
# Ominichannel retail dataset
## Project Overview

This project focuses on cleaning and preparing a retail dataset for analysis. The main objective is to ensure data quality by handling missing values, removing duplicates, standardizing formats, and validating data types. The cleaned dataset can then be used for further data analysis, visualization, and business insights.

Project Structure
retail-data-cleaning
- data: raw_retail_data.csv
- notebooks: data_cleaning.ipynb
- outputs: cleaned_retail_data.csv
- sql
- Power Bi Dashboard 
- README.md              

- ## Technologies Used
1. Python – For data cleaning and manipulation
2. Pandas – Handling missing values, duplicates, data type conversions
3. Jupyter Notebook – Interactive environment for documenting the cleaning process
4. Power BI
5. Git & GitHub – Version control and project repository

## Data Cleaning Steps
The dataset was cleaned using the following steps:
- Load Dataset
 The raw dataset was imported from data/raw_retail_data.csv.
- Check Dataset Structure
 Verified columns, data types, and sample records using df.info() and df.head().
- Handle Missing Values (NULLs)
 Identified missing values using df.isnull().sum().
- Dropped rows or filled missing values depending on the column.
- Remove Duplicates
 Checked for duplicates using df.duplicated() and removed them.
- Standardize Date and Time
 Converted order dates to a consistent YYYY-MM-DD format using pd.to_datetime(dayfirst=True).
- Validate Data Types
 Ensured numerical columns were in the correct type (int or float).
- Save Cleaned Dataset
- Exported the cleaned dataset to outputs/cleaned_retail_data.csv for further analysis.

``` Python
import pandas as pd
df = pd.read_csv("retail_sales_dashboard_dataset.csv")
print (df.shape)
df.head
df.info
df.describe
df.duplicated()
df.isnull().sum()
df.dropna()
df['order_date'] = pd.to_datetime(df['order_date'], dayfirst=True)
df['order_date'].head()
df.dtypes
```

## Repository Workflow
Clone the repository locally:
- git clone https://github.com/StephanieOlisa/retail-data-cleaning.git
Make changes or run the notebook in notebooks/data_cleaning.ipynb.
- Stage and commit changes:
 git add .
 git commit -m "Update data cleaning"
- Push changes to GitHub:
 git push origin main

## Key Learnings
- Learned to systematically clean a dataset to make it analysis-ready.
- Practiced handling missing values, duplicates, and date formatting.
- Understood the importance of maintaining raw datasets untouched.
- Gained experience using Git & GitHub for version control and project documentation.

## SQL
The cleaned dataset was loaded into a relational database and queried using SQL. 
Structured queries were written to extract key business metrics such as total revenue, best-selling products by volume, and sales distribution across locations.
By using SQL operations like GROUP BY, ORDER BY, and aggregate functions such as SUM and AVG, the dataset was transformed into meaningful summaries that support business decision-making.

``` SQL
-- total_revenue
SELECT SUM(total_sales) AS total_revenue
FROM cleaned_retail_data;
```
``` SQL
-- best_selling_products
SELECT product, SUM(quantity) AS total_units_sold
FROM cleaned_retail_data
GROUP BY product
ORDER BY total_units_sold DESC
LIMIT 10;
```
``` SQL
-- geographic_sales
SELECT city, SUM(total_sales) AS total_sales
FROM cleaned_retail_data
GROUP BY city
ORDER BY total_sales DESC;
```
## Power BI Dashboard: Insights and Business Recommendations
# 📊 Key Insights from my Dashboard

1. Strong Overall Performance
- Total Revenue: 1.18M
- Total Profit: 267.27K
- Total Orders: 3000

## Insight:
The business is generating healthy revenue with good profit margins, indicating efficient operations.

## 2. Revenue Peaks Mid-Year
- Revenue trend shows a major peak around August (~120K)
- Drop observed towards November

## Insight:
- Sales increase mid-year, possibly due to seasonal demand
- Late-year dip suggests reduced customer activity or poor promotions

## 3.Top Performing Products
- Phone Case has the highest quantity sold
- Followed by:
- Laptop Sleeve
- Backpack

## Insight:
- Small accessories are fast-moving items
- These products drive volume-based revenue

## 4. Geographic Sales Concentration
- Highest sales come from: Port Harcourt, Kaduna and Lagos region

## Insight:
Sales are regionally concentrated, meaning: Some cities are stronger markets than others

## 5. Sales Channel Distribution
- Online: ~51.5%
- Offline: ~48.5%

## Insight:
- Sales are almost evenly split
- Slight dominance of online sales

## 6. Monthly Profit Trends
- Highest profit months: August, September and October

## Insight:
- Q3 is the most profitable period
- Indicates strong seasonal demand

# Strategic Business Recommendations

## 1. Focus on High-Demand Products
- Increase stock for:
Phone cases
Laptop accessories

## Action:
Bundle products (e.g., phone case + screen guard)

## 2. Boost Low-Performing Months
November shows decline

## Action:
- Introduce: Promotions, Discounts and Holiday campaigns

## 3. Expand High-Performing Locations
- Invest more in: Port Harcourt and Kaduna

## Action:
- Open more distribution channels
- Increase marketing in these areas

## 4. Strengthen Online Sales
Online slightly leads

## Action:
- Improve: Website experience, Delivery speed and Digital marketing

## 5. Optimize Inventory Planning
- Q3 shows high demand

## Action:
- Stock up before peak months
- Avoid stockouts

## Screenshort of the Dashboard
<img width="1205" height="672" alt="image" src="https://github.com/user-attachments/assets/c39c8ea2-584d-4270-b6a7-b72061cbe2be" />

## Final Analysis and Business Recommendations

The analysis of the retail sales dashboard reveals several key insights into business performance, customer behavior, and sales trends.

The company generated a total revenue of 1.18 million and a profit of 267.27 thousand from 3,000 orders, indicating strong overall performance and operational efficiency. Revenue trends show a significant peak around August, suggesting seasonal demand patterns, while a noticeable decline occurs towards November.

Product analysis indicates that accessories such as phone cases, laptop sleeves, and backpacks are the highest-selling items by quantity. This highlights the importance of focusing on fast-moving, high-demand products to sustain revenue growth.

Geographically, sales are concentrated in key cities such as Port Harcourt and Kaduna, indicating strong regional markets that can be further expanded. Additionally, sales channels are nearly evenly split between online and offline platforms, with a slight dominance of online sales.

Based on these findings, several strategic recommendations are proposed. The company should prioritize stocking and promoting high-demand products, particularly accessories. Marketing efforts should be intensified during low-performing periods to maintain consistent revenue flow. Expansion strategies should target high-performing regions, while digital channels should be optimized to further increase online sales.

Finally, inventory planning should align with seasonal demand patterns, particularly in preparation for peak sales periods, to prevent stock shortages and maximize profitability.

