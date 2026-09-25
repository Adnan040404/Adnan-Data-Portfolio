# Muhammad Adnan: Data Portfolio

I'm a financial data analyst who works with invoice and payment reconciliation, and
I'm building toward data engineering. This page lists my projects in the order I'd
suggest reading them, with the ones closest to my day-to-day work first. Every project
has its own repo, and each README says what the project does, how to run it, what
decisions I made and where its limits are.

All data is generated or from public sample datasets. None of it comes from a real
client or employer. Where the first version of a project had a mistake, the README
says what it was and how I found it.

## Projects

| # | Project | What it does | Tools |
|---|---|---|---|
| 1 | [Dropship Reconciliation Engine](https://github.com/Adnan040404/dropship-reconciliation-engine) | Invoice-to-payment reconciliation written twice, in pandas and in SQL, tested to give identical results. 77 tests. | Python, SQL, pandas |
| 2 | [AR Aging & Collections Analyzer](https://github.com/Adnan040404/ar-aging-collections-analyzer) | Ages invoices into buckets, nets credit memos and overpayments against the oldest debt first, computes DSO. The Excel report is live formulas. 33 tests. | Python, SQL, Excel |
| 3 | [Sales Data ETL Pipeline](https://github.com/Adnan040404/sales-data-etl-pipeline) | Merges messy exports from three systems into a SQL database and Excel report. Every input row is accounted for. 14 tests. | Python, SQL, Excel |
| 4 | [PySpark Pizza Analytics](https://github.com/Adnan040404/Databricks-End-to-End-Spark-Project-with-Unity-Catalog) | Seven business questions in PySpark, every result checked against pandas. Runs locally. 16 tests. | PySpark, Databricks |
| 5 | [Payout Reconciliation Report](https://github.com/Adnan040404/payout-reconciliation-excel-report) | A formula-driven Excel report of what was paid, what is missing and what doesn't add up. 7 tests. | Excel, Python |
| 6 | [Weather Data ETL Pipeline](https://github.com/Adnan040404/weather-data-etl-pipeline) | REST API to SQL with retries, validation and safe re-runs. Runs with no key or server. 19 tests. | Python, SQLite |
| 7 | [Bike Shop Sales & Profitability](https://github.com/Adnan040404/bike-shop-sql-powerbi-analysis) | SQL and Power BI analysis. Found and fixed a profit formula that gave an impossible 99.7% margin. | SQL, Power BI |
| 8 | [HR Attrition Dashboard](https://github.com/Adnan040404/HR_Employe_Analytics_dashboard) | Excel dashboard on attrition. Found that three pivots counted headcount instead of leavers, and that the corrected rates reverse the department conclusion. 11 tests. | Excel, Python |
| 9 | [Hospital Database: SQL Practice](https://github.com/Adnan040404/hospital-management-sql-project) | 33 practice queries on a small hospital database, from filters to window functions. Fixed a script that didn't run and a query that gave the wrong answer. 17 tests. | SQL, Python |
| 10 | [Sales Performance Dashboard](https://github.com/Adnan040404/sales-powerbi-dashboard) | Two-page Power BI dashboard on a star-schema model. *Checked offline; the repo README says what is still being verified.* | Power BI, DAX |

## Contact

- LinkedIn: [muhammad-adnan-740336293](https://linkedin.com/in/muhammad-adnan-740336293)
- Email: adnandanish0404@gmail.com
- Based in Lahore, Pakistan. Open to remote work and relocation.
