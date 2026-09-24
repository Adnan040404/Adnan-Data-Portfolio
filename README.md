# Muhammad Adnan: Data Portfolio

I'm a data analyst who works with invoice and payment reconciliation, and I'm
building toward data engineering. This page lists my projects **in the order I'd
suggest reading them**, each marked with its level, so you know what to expect.
Every one has its own repo with a README, a way to run it, and tests.

All data is generated or from public sample datasets. None of it comes from a real
client or employer. I can explain every project line by line, including the bugs
I found in my own first versions. Several READMEs describe them.

## Professional: closest to my day job

Built around the problems I solve at work (reconciliation, aging, messy exports).

| # | Project | What it does | Tools |
|---|---|---|---|
| 1 | [Dropship Reconciliation Engine](https://github.com/Adnan040404/dropship-reconciliation-engine) | Invoice-to-payment reconciliation written twice, in pandas and in SQL, tested to give identical results. 77 tests. | Python, SQL |
| 2 | [AR Aging & Collections Analyzer](https://github.com/Adnan040404/ar-aging-collections-analyzer) | Ages invoices into buckets, nets credit memos and overpayments against the oldest debt first, computes DSO. The Excel report is live formulas. 33 tests. | Python, SQL, Excel |
| 3 | [Sales Data ETL Pipeline](https://github.com/Adnan040404/sales-data-etl-pipeline) | Merges messy exports from three systems into a SQL database and Excel report. Every input row is accounted for. 14 tests. | Python, SQL, Excel |

## Intermediate: solid, one clear skill each

| # | Project | What it does | Tools |
|---|---|---|---|
| 4 | [Weather Data ETL Pipeline](https://github.com/Adnan040404/weather-data-etl-pipeline) | REST API to SQL with retries, validation and safe re-runs. Runs with no key or server. 19 tests. | Python, SQLite |
| 5 | [PySpark Pizza Analytics](https://github.com/Adnan040404/Databricks-End-to-End-Spark-Project-with-Unity-Catalog) | Seven business questions in PySpark, every result checked against pandas. Runs locally. 16 tests. | PySpark, Databricks |
| 6 | [Payout Reconciliation Report](https://github.com/Adnan040404/payout-reconciliation-excel-report) | A formula-driven Excel report of what was paid, what is missing and what doesn't add up. 7 tests. | Excel, Python |
| 7 | [Sales Analysis: SQL, Excel and Tableau](https://github.com/Adnan040404/Sales-Analysis-with-SQL-Excel-and-Tableau) | Analysis of a sample retail database, including a wrong first conclusion I caught and corrected. | SQL, Excel, Tableau |
| 8 | [Bike Shop Sales & Profitability](https://github.com/Adnan040404/bike-shop-sql-powerbi-analysis) | SQL and Power BI analysis. Found and fixed a profit formula that gave an impossible 99.7% margin. | SQL, Power BI |
| 9 | [Sales Performance Dashboard](https://github.com/Adnan040404/sales-powerbi-dashboard) | Two-page Power BI dashboard on a star-schema model. *Checked offline; the repo README says what is still being verified.* | Power BI, DAX |

## Beginner practice: where I practised the basics

Smaller projects, kept and tidied. Each README says what was wrong with my first
version and what I did about it.

| # | Project | What it does | Tools |
|---|---|---|---|
| 10 | [Hospital Database: SQL Practice](https://github.com/Adnan040404/hospital-management-sql-project) | 33 practice queries on a small hospital database, from filters to window functions. Fixed a script that didn't run and a query that gave the wrong answer. 17 tests. | SQL, Python |
| 11 | [HR Attrition Dashboard](https://github.com/Adnan040404/HR_Employe_Analytics_dashboard) | Excel dashboard on attrition. Found that three pivots counted headcount instead of leavers, and that the corrected rates reverse the department conclusion. 11 tests. | Excel, Python |

## More

- Personal site: [portfolio-adnan040404.vercel.app](https://portfolio-adnan040404.vercel.app)
- LinkedIn: [muhammad-adnan-740336293](https://linkedin.com/in/muhammad-adnan-740336293)
- Email: adnandanish0404@gmail.com

Older practice projects I no longer show are kept private.
