🍕 Databricks End-to-End Spark Project with Unity Catalog

This project demonstrates an End-to-End Data Engineering pipeline using PySpark on Databricks with Unity Catalog for governance.
We implement Object-Oriented Programming (OOP) principles and the Factory Design Pattern to build a modular and reusable ETL pipeline.

📂 Dataset

Source: Pizza Orders Dataset (Kaggle)

The dataset contains details about pizza orders, including:

Order ID

Pizza Name

Category

Size

Quantity

Price

Date & Time

🔄 Pipeline Flow

Data Ingestion → Load raw data into Unity Catalog volumes.

Data Cleaning → Remove nulls, duplicates, and enforce schema.

Data Transformation → Apply business rules, aggregations, and enrich data.

Data Storage → Store results as Delta Tables under Unity Catalog.

Analytics & Reporting → Generate insights via PySpark queries.

Orchestration → Use a Workflow Notebook as the entry point for triggering ETL with user inputs.

🏗️ Factory Pattern in ETL

The Factory Pattern is a Creational Design Pattern that allows object creation without exposing the instantiation logic.

✅ In this project:

A Factory Class decides which ETL component (Ingestion, Cleaning, Transformation) to create.

This ensures scalability and modularity for the pipeline.

📊 Business Requirements

The project solves the following analytical queries:

Most sold pizza in Chicken Category month-wise.

Most sold pizza in every Category overall.

Most sold pizza during 5:00 PM to 10:00 PM overall.

Most sold Large Pizza month-wise.

Total amount of Small Pizza sold in every category.

Total Chicken Pizza sales in May.

Month-wise pizza sales for every pizza, sorted by most sold.

🧑‍💻 Object-Oriented Programming (OOP) in Python

This project is designed with OOP principles:

Class → Blueprint for ETL components.

Object → Instance of a class with state & behavior.

init Method → Constructor for initialization.

Encapsulation → Each transformation step is packaged as a class.

Reusability → Classes can be reused for multiple datasets.

Example:

class DataCleaner:
    def __init__(self, df):
        self.df = df
    
    def remove_nulls(self):
        return self.df.na.drop()

    def remove_duplicates(self):
        return self.df.dropDuplicates()

⚡ PySpark Optimization – Broadcast Join

PySpark joins require data shuffling, which is costly.
For small datasets, we use Broadcast Join to avoid shuffles and improve performance.

from pyspark.sql.functions import broadcast

result = large_df.join(broadcast(small_df), "pizza_id")

🗂️ Unity Catalog Integration

Unity Catalog provides:

Centralized governance across workspaces.

Fine-grained access control on tables and views.

Data lineage tracking.

Secure storage of raw and processed data.

📍 In this project, all data is stored under:

/Volumes/pizza_catalog/pizza_schema/pizza_orders/

🚀 Workflow Notebook

The Workflow Application Notebook is the entry point of the project:

Accepts user inputs (date range, category, pizza size).

Triggers the ETL pipeline using the Factory Pattern.

Saves processed results as Delta Tables for reporting.

📂 Project Structure
📦 pizza-etl-databricks
 ┣ 📂 notebooks
 ┃ ┣ 01_ingestion.py
 ┃ ┣ 02_cleaning.py
 ┃ ┣ 03_transformation.py
 ┃ ┣ 04_reporting.py
 ┃ ┗ 05_workflow_application.py
 ┣ 📂 configs
 ┃ ┗ etl_config.json
 ┣ 📂 data
 ┃ ┗ raw_pizza_orders.csv
 ┣ 📂 utils
 ┃ ┗ factory.py
 ┣ README.md

✅ Key Skills Covered

Databricks & Unity Catalog

PySpark (Transformations, Aggregations, Joins)

Object-Oriented Programming in Python

Factory Design Pattern for ETL

Delta Lake Storage & Querying

PySpark Optimization (Broadcast Joins)

Workflow Orchestration in Databricks