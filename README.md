# retail-data-cleaning
# Ominichannel retail dataset
## Project Overview

This project focuses on cleaning and preparing a retail dataset for analysis. The main objective is to ensure data quality by handling missing values, removing duplicates, standardizing formats, and validating data types. The cleaned dataset can then be used for further data analysis, visualization, and business insights.

Project Structure
retail-data-cleaning
- data: raw_retail_data.csv
- notebooks: data_cleaning.ipynb
- outputs: cleaned_retail_data.csv
- README.md              

- ## Technologies Used
1. Python – For data cleaning and manipulation
2. Pandas – Handling missing values, duplicates, data type conversions
3. Jupyter Notebook – Interactive environment for documenting the cleaning process
4. Git & GitHub – Version control and project repository

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
