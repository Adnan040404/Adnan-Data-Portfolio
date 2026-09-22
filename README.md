# Muhammad Adnan: Data Portfolio

I'm a data analyst who works with invoice and payment reconciliation, and I'm
building toward data engineering. This page lists the projects I'd point you to.
Each one has its own repo with a README, a way to run it, and tests where they apply.

All data in these projects is generated or from public sample datasets. None of it
comes from a real client or employer.

This page used to hold copies of every practice project I'd made. I've cleared it
out so it only shows work I can walk you through in detail.

## Pipelines and reconciliation

| Project | What it does | Tools |
|---|---|---|
| [Sales Data ETL Pipeline](https://github.com/Adnan040404/sales-data-etl-pipeline) | Merges messy exports from three systems into a clean SQL database, an Excel report and SQL insights. Every input row is accounted for. | Python, pandas, SQL, Excel, pytest |
| [Weather Data ETL Pipeline](https://github.com/Adnan040404/weather-data-etl-pipeline) | Pulls weather from a REST API into SQL with retries, validation and safe re-runs. Reports in HTML and Excel. Runs with no key or server. | Python, SQLite, pytest |
| [Dropship Reconciliation Engine](https://github.com/Adnan040404/dropship-reconciliation-engine) | Invoice-to-payment reconciliation written twice, in pandas and in SQL, with identical results. | Python, SQL |
| [Payout Reconciliation Report](https://github.com/Adnan040404/payout-reconciliation-excel-report) | A formula-driven Excel report showing what was paid, what is missing and what doesn't add up. | Excel, Python |
| [AR Aging & Collections Analyzer](https://github.com/Adnan040404/ar-aging-collections-analyzer) | Ages open invoices into buckets, nets credit memos and overpayments against the oldest debt first, and computes DSO. The Excel aging summary is entirely live formulas. | Python, SQL, Excel |

## Reporting and analysis

| Project | What it does | Tools |
|---|---|---|
| [Sales Performance Dashboard](https://github.com/Adnan040404/sales-powerbi-dashboard) | Two-page Power BI dashboard on a star-schema model with DAX measures. *Files are ready and checked offline; the repo README says what is still being verified.* | Power BI, DAX |
| [Sales Analysis: SQL, Excel and Tableau](https://github.com/Adnan040404/Sales-Analysis-with-SQL-Excel-and-Tableau) | Revenue, store, product and customer analysis of a sample retail database. | SQL, Excel, Tableau |
| [PySpark Pizza Analytics](https://github.com/Adnan040404/Databricks-End-to-End-Spark-Project-with-Unity-Catalog) | Seven business questions in PySpark with data-quality checks and results verified against pandas. Runs locally, and as Databricks notebooks. | PySpark, Databricks, pytest |

## More

- Personal site: [portfolio-adnan040404.vercel.app](https://portfolio-adnan040404.vercel.app)
- LinkedIn: [muhammad-adnan-740336293](https://linkedin.com/in/muhammad-adnan-740336293)
- Email: adnandanish0404@gmail.com

Older practice projects are kept private. I'm happy to talk about them.
