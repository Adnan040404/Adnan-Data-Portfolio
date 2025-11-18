# Sales Analysis with SQL, Excel, and Tableau

## Table of Contents

- [Project Background](#project-background)
- [Data Source](#data-source)
- [Executive Summary](#executive-summary)
- [Insights Deep Dive](#insights-deep-dive)
- [Recommendations](#recommendations)
- [Assumptions and Caveats](#assumptions-and-caveats)
- [Update](#update)

## Project Background

This project analyzes the sales performance of a fictional BikeStore business, using real-world-inspired data from a sample SQL database. The goal is to assess the company's revenue trends, customer behavior, and store performance over time. This end-to-end analysis, conducted using SQL, Microsoft Excel, and Tableau, provides insights into sales across various dimensions, including products, stores, and customers.

The project simulates a real-world business scenario where a data analyst works to identify opportunities for growth and improve operational efficiency by examining historical data.

## Data Source

- **Dataset**: The dataset used is the [BikeStores Sample Database](https://www.sqlservertutorial.net/getting-started/sql-server-sample-database/), which includes two schemas: `sales` and `production`. These schemas contain nine interrelated tables that represent business operations, including customer orders, staff, product inventory, and store data.

- **Schemas**:

  - **Sales Schema**: Contains information about customer orders, staff, stores, and order details.
  - **Production Schema**: Includes information about products, categories, brands, and stock levels.

- **North Star Metrics**:

  - **Total Revenue**: The primary metric measuring business success, derived from the sum of sales across different stores and products.
  - **Total Units Sold**: The number of products sold, providing a direct measure of product demand.

- **Dimensions**:
  - **Time** (Year, Month): Revenue trends over time.
  - **Location** (State, Store): Geographical performance by state and store.
  - **Product Category**: Sales by different product categories (e.g., Mountain Bikes, Road Bikes).
  - **Customer**: Insights into top customers by revenue.

![BikeStores Database Diagram](SQL-Server-Sample-Database.png)

## Executive Summary

The sales performance analysis for the BikeStore company reveals key trends across multiple dimensions. Revenue peaked in 2017, but saw a decline in 2018. The highest revenue came from New York, and Baldwin Bikes dominated the store-level sales, accounting for 68% of total revenue. Among product categories, Mountain Bikes generated the most revenue, while Pamela Newman was the top customer, contributing significantly to overall sales. This analysis highlights geographical hotspots and product preferences, identifying areas for potential growth.

![Sales Performance Dashboard](dashboard.png)

## Insights Deep Dive

- **Revenue Trends by Year**: Revenue in 2017 saw a substantial increase compared to 2016, but dropped again in 2018. Analyzing monthly performance, the peak sales occurred around April 2018, followed by fluctuations.
- **Revenue by State**: New York leads with the highest sales, followed by California and Texas. This suggests that marketing efforts and sales strategies in New York have been particularly effective.

- **Store Performance**: Among the stores, Baldwin Bikes dominates the sales, contributing 68% of total revenue. Santa Cruz Bikes and Rowlett Bikes trail behind, showing room for improvement in these locations.

- **Product Category Breakdown**: Mountain Bikes were the top-selling category, generating over Rp3 million in revenue. Road Bikes and Cruiser Bikes followed, each bringing in over Rp1 million. This highlights the strong market demand for these product types.

- **Top 10 Customers**: Pamela Newman is the top customer, with nearly Rp38,000 in purchases. Other high-value customers include Abby Gamble and Sharyn Hopkins, emphasizing the importance of retaining these key customers.

## Recommendations

- **Expand Marketing in Underperforming States**: States like Texas and California, while still profitable, have room for growth. Expanding targeted marketing campaigns in these regions could drive higher revenue.

- **Diversify Product Offerings in Low-Performing Categories**: Categories like Children Bicycles and Comfort Bicycles generated the least revenue. Consider expanding product lines or promoting these categories to boost sales.

- **Store-Level Optimization**: While Baldwin Bikes is performing well, stores like Santa Cruz Bikes and Rowlett Bikes need more attention. Revamping the product assortment or introducing localized promotions could improve their sales.

- **Customer Retention Programs**: High-value customers like Pamela Newman and Abby Gamble should be the focus of loyalty programs or personalized offers to ensure continued business and increase lifetime customer value.

## Assumptions and Caveats

- **Data Completeness**: The dataset covers three years (2016-2018). While this offers valuable trends, the results might not reflect the business's long-term performance.
- **Seasonality**: The analysis assumes no significant seasonal effects. However, real-world sales might exhibit seasonal spikes, especially for products like bikes.
- **Exclusion of Costs**: This analysis focuses solely on revenue without factoring in the costs associated with production, shipping, or marketing. Future work could include profitability analysis for a more complete business assessment.
- **Sampling Bias**: This is a sample dataset, and while it simulates a real-world scenario, actual business dynamics could introduce additional complexities.

## Update

Added an interactive Tableau version of the Sales Performance Dashboard.

![Sales Performance Dashboard](tableau_dashboard.png)

