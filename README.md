E-Commerce Sales Analytics

📌 Project Overview

This project focuses on Data Cleaning and Exploratory Data Analysis (EDA) of an E-Commerce Sales dataset using Python.

The objective is to understand sales performance, customer behavior, product categories, regional performance, payment preferences, delivery performance, and relationships between numerical variables.

---

🎯 Objectives

- Clean and preprocess the E-Commerce dataset
- Identify and handle missing values
- Check and remove duplicate records
- Convert data types where required
- Detect potential outliers using the IQR method
- Perform statistical analysis
- Create useful features from order dates
- Analyze revenue trends
- Analyze product category performance
- Analyze regional sales performance
- Understand customer payment preferences
- Analyze customer ratings
- Identify correlations between numerical variables
- Document important business insights

---

📊 Dataset

The dataset contains 5,000 E-Commerce sales records and 12 original attributes.

Main Attributes

Column| Description
"order_id"| Unique identifier for an order
"order_date"| Date when the order was placed
"customer_id"| Unique customer identifier
"product_category"| Category of the purchased product
"region"| Customer/order region
"quantity"| Number of products purchased
"unit_price"| Price per product
"discount"| Discount applied to the order
"payment_method"| Payment method used
"delivery_days"| Number of days taken for delivery
"customer_rating"| Customer rating
"revenue"| Revenue generated from the order

---

🧹 Data Cleaning

The following data-cleaning operations were performed:

1. Loaded the dataset using Pandas.
2. Checked the dataset dimensions and structure.
3. Checked for missing values.
4. Checked for duplicate records.
5. Converted "order_date" into datetime format.
6. Standardized text-based columns.
7. Checked numerical variables for potential outliers using the IQR method.
8. Created additional date-based features.

---

⚙️ Feature Engineering

The following features were created from "order_date":

- "order_year"
- "order_month"
- "order_month_name"
- "order_day"

These features were created to support time-based sales analysis.

---

📈 Exploratory Data Analysis

The following analyses and visualizations were performed:

1. Revenue Distribution

Analyzed the distribution of revenue generated from orders.

2. Revenue by Product Category

Compared total revenue across different product categories.

3. Revenue by Region

Analyzed regional sales performance.

4. Payment Method Analysis

Examined customer preferences for different payment methods.

5. Monthly Revenue Trend

Analyzed changes in revenue over time.

6. Customer Rating Analysis

Examined the distribution of customer ratings.

7. Correlation Analysis

Used a correlation heatmap to identify relationships between numerical variables such as quantity, unit price, discount, delivery days, customer rating, and revenue.

---

🔍 Key Insights

The analysis provides insights into:

- High-performing product categories
- Regional revenue differences
- Customer payment preferences
- Monthly sales trends
- Customer satisfaction levels
- Relationships between sales and numerical variables
- Potential areas for improving business performance

---

🛠️ Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook
- Git & GitHub

---

📁 Project Structure

ecommerce-sales-analytics/
│
├── Data/
│   ├── raw/
│   └── processed/
│
├── Notebooks/
│   └── task_1.ipynb
│
├── dashboards/
│
├── reports/
│
├── scripts/
│
├── .gitignore
├── README.md
└── requirements.txt

---

🚀 How to Run the Project

1. Clone the repository

git clone https://github.com/hemamthsairamkudipudi/ecommerce-sales-analytics.git

2. Open the project

cd ecommerce-sales-analytics

3. Install dependencies

pip install -r requirements.txt

4. Open the Jupyter Notebook

jupyter notebook

Open:

Notebooks/task_1.ipynb

---

📌 Project Status

Task 1: Data Cleaning & Exploratory Data Analysis — Completed ✅

Future improvements may include:

- Interactive dashboards
- Advanced sales analysis
- Sales forecasting
- Customer segmentation
- Machine Learning models

---

👨‍💻 Author

Hemant Sai Ram Kudipudi

Data Science / Data Analytics Enthusiast

---

⭐ If you find this project useful, consider giving the repository a star!---

# Task 2: SQL for Data Extraction

## 📌 Objective

The objective of Task 2 is to use SQL for extracting, filtering, aggregating, and analyzing data from the E-Commerce Sales dataset.

SQLite was integrated with Python to create a database and perform SQL-based data analysis.

---

## 🛠️ Technologies Used

- Python
- SQLite
- SQL
- Pandas
- Jupyter Notebook

---

## 📂 Task 2 Components

### 1. SQLite Database

The cleaned E-Commerce dataset was imported into an SQLite database.

**Database:**

```text
Data/ecommerce.db
2. SQL Fundamentals

The following SQL concepts were practiced:

SELECT
WHERE
ORDER BY
LIMIT
GROUP BY
HAVING
3. Advanced SQL

The project also demonstrates:

Subqueries
Common Table Expressions (CTEs)
Window Functions
RANK()
SQL Views
4. Business Questions

The following business questions were answered using SQL:

1.Which product categories generate the highest revenue?
2.Which regions generate the highest sales?
3.How does revenue change month by month?
4.Which payment method is used most frequently?
5.What is the average customer rating by product category?
6.Which orders have revenue above the overall average?
7.What are the top 10 highest-value orders?
8.Which product categories have above-average revenue?
9.How do regions rank based on total revenue?
10.Which month generated the highest revenue?

---

# Task 3: Interactive Dashboard

## 📌 Objective

The objective of Task 3 is to build an interactive E-Commerce Sales Analytics dashboard using Power BI.

The dashboard combines key business metrics, sales trends, category performance, geographical analysis, and interactive filters to provide an easy-to-understand view of business performance.

---

## 🛠️ Technologies Used

- Power BI Desktop
- Power BI Service
- Python
- Pandas
- SQLite

---

## 📊 Dashboard Components

The executive dashboard contains the following visualizations:

### 1. KPI Cards

Three KPI cards were created to display the main business metrics:

- Total Customers
- Total Sales
- Total Orders

These KPIs provide a quick overview of overall business performance.

---

### 2. Sales Trend Over Time

A line chart was created to analyze revenue trends over time.

- X-axis: Order Date / Month
- Y-axis: Revenue
- Visualization: Line Chart

This visualization helps identify monthly sales patterns and changes in revenue throughout the year.

---

### 3. Category Breakdown by Revenue

A bar chart was created to compare revenue generated by different product categories.

- Category: Product Category
- Value: Revenue
- Visualization: Bar Chart

This helps identify the highest and lowest performing product categories.

---

### 4. Geographical Sales Analysis

A geographical map was created to visualize revenue based on different regions.

- Location: Region
- Value: Revenue
- Visualization: Map

The map helps identify regions contributing the most revenue.

---

### 5. Top 10 Customers / Products

A Top 10 analysis was created to identify the highest-performing customers/products based on revenue.

This visualization helps identify the most valuable customers or products contributing to overall sales.

---

## 🎛️ Interactive Filters

Interactive slicers were added to allow users to filter the dashboard dynamically.

The following slicers were created:

- Order Date
- Region
- Product Category

The slicers are synchronized across the dashboard pages so that selecting a value updates the relevant visualizations.

For example, selecting a particular product category updates:

- Total Sales
- Total Orders
- Sales Trend
- Category Analysis
- Other related dashboard visuals

This makes the dashboard interactive and allows users to explore the data from different perspectives.

---

## 📄 Dashboard Pages

The Power BI report contains multiple pages for different analyses:

- **Page 1:** Executive Dashboard
- **Page 2:** Geographical Sales Analysis
- **Page 3:** Top 10 Analysis
- **Page 4:** Additional Dashboard Analysis

---

## 🔍 Key Dashboard Insights

The interactive dashboard provides insights into:

- Overall sales performance
- Total customers and orders
- Monthly revenue trends
- Product category performance
- Regional sales performance
- Top-performing customers/products
- Impact of different product categories on sales
- Regional revenue differences

The interactive slicers allow users to investigate these insights based on specific dates, regions, and product categories.

---

## 📁 Project Structure

```text
ecommerce-sales-analytics/

│
├── Data/
│   ├── raw/
│   └── processed/
│
├── Notebooks/
│   └── task_1.ipynb
│
├── dashboards/
│
├── reports/
│
├── scripts/
│
├── .gitignore
├── README.md
└── requirements.txt