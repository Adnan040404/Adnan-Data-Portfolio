🏥 Hospital Management System - SQL Project
📌 Project Overview

Hospitals are an essential part of our lives, providing healthcare and medical facilities to people suffering from various illnesses caused by climate changes, work stress, emotional trauma, and other factors.
Managing hospital operations manually is challenging, as it involves handling large amounts of data such as physician schedules, patient diagnoses, medical procedures, and nursing staff records.

This project demonstrates how these daily operations can be efficiently managed using a Relational Database Management System (RDBMS).

The Hospital Management System SQL Project is designed to:

Streamline and optimize hospital operations.

Provide an efficient and user-friendly way to store, retrieve, and manipulate healthcare-related data.

Improve accuracy and reduce redundancy in managing hospital records.

🗄️ Database Details

The database is implemented in MySQL and consists of 7 main tables:

Physician – Stores information about doctors and their positions.

Affiliated_With – Manages physician affiliations with different departments.

Department – Contains hospital department details and head assignments.

Nurse – Records information about nurses, their positions, and registration status.

Patient – Stores patient personal information and primary checkup details.

Patient_Diagnosis – Contains patient diagnosis and prescribed treatments.

Procedures – Holds details about medical procedures and their costs.

🛠️ Features Implemented

✅ Database Design & Table Creation

Created normalized tables with Primary Keys & Foreign Keys.

Inserted sample data to simulate real hospital operations.

✅ SQL Queries & Operations

Sorting & Filtering: Example – list physicians alphabetically.

Joins: Example – patients with their primary check physicians.

Aggregations: Example – average cost of medical procedures.

Subqueries: Example – find procedures above the average cost.

Updates & Alterations: Modify patient records and table structure.

Advanced Queries:

Find the second most expensive procedure.

List physicians heading each department.

Patients diagnosed with specific conditions.

Nurses who are Head or Team Leaders.

📊 Sample SQL Tasks

Get the full name of male patients.

Find the average cost of all procedures.

Update patient details (e.g., change name for patient_id = 5).

Drop unnecessary columns from tables.

Retrieve physician names with their affiliated departments.

List patients diagnosed with Chronic Pain.

⚙️ Tech Stack

Database: MySQL

Language: SQL

🚀 How to Run

Clone this repository.

Import the .sql file into MySQL Workbench or any SQL environment.

Run the CREATE TABLE and INSERT statements to set up the database.

Execute queries to explore hospital operations and insights.

📌 Learning Outcomes

Through this project, you will gain hands-on experience with:

Database schema design.

Writing complex SQL queries (joins, subqueries, aggregations).

Managing real-world healthcare data.

Understanding ETL-like operations inside a relational database.