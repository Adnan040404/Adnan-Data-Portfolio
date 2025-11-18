🚀 Databricks ETL Pipeline

📌 Overview

This project demonstrates a complete ETL (Extract, Transform, Load) pipeline using Databricks.
It leverages:

Delta Lake → For efficient and reliable data storage

PySpark & Spark SQL → For data transformations and querying

Matplotlib → For data visualization

Error Handling & Data Validation → To ensure data quality

The pipeline shows how to extract data from an external source, transform and load it into Delta tables, and then visualize insights.

🛠️ Dependencies

Python 3.x

Databricks Platform

Apache Spark / Spark SQL

Matplotlib

Requests Library

Dotenv Library

📂 Project Structure

etl_process.py → Handles extraction and ETL operations

visualization.py → Handles SQL queries & data visualization

README.md → Project documentation

▶️ Running the Project

Clone this repository.

Set up environment variables in a .env file.

Open Databricks and create notebooks for etl_process.py and visualization.py.

Run etl_process.py → to perform extraction, transformation, and loading.

Run visualization.py → to generate analytical visualizations.

🔑 Environment Variables

Set the following in a .env file:

SERVER_HOSTNAME → Databricks server hostname

ACCESS_TOKEN → Personal access token for Databricks API authentication

⚙️ ETL Workflow
1️⃣ Extraction (extract.py)

Extracts data from a given URL

Uploads it to Databricks FileStore (DBFS) using Databricks REST APIs

Utility functions (mkdirs, create, add_block, close) handle file operations

✔️ Output: Raw data stored in DBFS

2️⃣ Transformation & Loading (transform_load.py)

Reads the extracted data using PySpark

Infers schema automatically

Splits dataset into two DataFrames

Assigns unique IDs

Saves them as Delta tables:

obesity_data1_delta

obesity_data2_delta

✔️ Output: Cleaned & structured Delta Lake tables

3️⃣ Querying & Visualization (query_viz.py)

Uses Spark SQL to query Delta tables

Calculates average Age, Height, and Weight by Gender

Visualizes insights using Matplotlib

✔️ Output: Visual reports for gender-based health metrics

📊 Key Insights

Significant height differences observed across genders → potential focus for health programs

Weight distribution suggests a need for gender-specific diet guidance

Demonstrates the value of combining ETL + Analytics + Visualization in Databricks

✍️ Author

👤 Muhammad Adnan