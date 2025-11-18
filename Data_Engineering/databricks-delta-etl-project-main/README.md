🚀 Project Overview

This project demonstrates an end-to-end ETL pipeline on Azure Databricks using PySpark and Delta Lake.
It covers the complete data engineering workflow – from data ingestion and transformation to querying, visualization, and automation.

The dataset used is FIFA Countries Audience Data, and the pipeline provides insights into audience distribution, GDP-weighted shares, and confederation-level trends.

✅ Key Features

ETL in Databricks Notebook – clean, documented, and version-controlled.

Delta Lake – for ACID transactions, time travel, and scalable data storage.

Spark SQL – applied for transformations and aggregation queries.

Error Handling & Data Validation – ensuring reliability of the pipeline.

Visualization – insights into population vs. audience distribution.

Automated Scheduling – deployed as a Databricks Job with triggers.

Actionable Recommendations – business insights for management teams.

🛠️ Tech Stack

Databricks (Community Edition / Azure)

PySpark (Spark DataFrames, SQL, transformations)

Delta Lake (time travel, versioning, ACID compliance)

DBFS (Databricks File System)

Python (requests, pandas, matplotlib)

📂 Project Structure
.
├── mylib
│   ├── extract.py            # Data extraction
│   ├── transform.py          # Data cleaning & transformation
│   ├── query-analyze.py      # SQL queries & analysis
│   └── Databricks_ETL_Notebook # Main Databricks notebook
│
├── Databricks_ETL.ipynb      # Jupyter notebook version
├── .env                      # Environment configs (hidden)
├── requirements.txt          # Python dependencies
└── README.md                 # Documentation

📊 Dataset – FIFA Countries Audience

File: fifa_countries_audience.csv

Column	Description
country	FIFA member country
confederation	Confederation the country belongs to
population_share	Share of global population (%)
tv_audience_share	Share of global TV audience (%)
gdp_weighted_share	GDP-weighted audience share (%)
🔄 ETL Workflow
1️⃣ Extract

Pulled data from GitHub URL (or manually uploaded to DBFS).

Stored raw data in DBFS.

2️⃣ Transform & Load

Read CSV → Spark DataFrame.

Performed data validation (removed nulls, duplicates).

Added unique IDs using monotonically_increasing_id().

Stored clean data into Delta Lake tables (fifa).

3️⃣ Query & Visualization

Ran Spark SQL queries to aggregate audience data.

Example query:

SELECT
    confederation,
    COUNT(DISTINCT country) AS total_countries,
    SUM(population_share) AS total_population_share,
    SUM(tv_audience_share) AS total_tv_audience_share,
    SUM(gdp_weighted_share) AS total_gdp_weighted_share
FROM fifa
GROUP BY confederation
ORDER BY total_gdp_weighted_share DESC;


Visualized insights with bar charts & tables.

📌 Key Insights

UEFA & AFC contribute the largest share of TV audience despite population differences.

A positive correlation exists between GDP and TV audience share.

Management Recommendation: Marketing & sponsorship campaigns should focus on UEFA & AFC regions, where engagement and purchasing power are highest.

🔐 Delta Lake Capabilities Used

ACID Transactions – ensures data reliability.

Schema Evolution – handled schema changes.

Time Travel – query historical versions of data:

SELECT * FROM fifa VERSION AS OF 2;


Rollback Capability – restore earlier versions if needed.

⚡ Automation

Deployed notebook as a Databricks Job.

Configured workflow scheduling (daily/weekly refresh).

Auto-trigger ensures pipeline runs without manual intervention.


📚 References

Databricks FileStore

Databricks Data Pipeline Guide

Azure Databricks Training

Delta Lake Documentation

✨ Author: Muhammad Adnan

💼 Data Engineer | PySpark & Databricks Enthusiast