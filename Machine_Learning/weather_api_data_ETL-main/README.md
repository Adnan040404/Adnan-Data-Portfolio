# Weather Data ETL Pipeline

**Author**: Muhammad Adnan  
**Version**: 1.0  
![Python](https://img.shields.io/badge/python-3.9+-blue.svg)
![MySQL](https://img.shields.io/badge/mysql-8.0+-orange.svg)

A complete ETL pipeline that collects, processes, and visualizes weather data from OpenWeatherMap API.

## Features

- **Extract**: Fetches real-time weather data for multiple cities
- **Transform**:
  - Data validation and cleaning
  - Temperature conversion and categorization
  - Wind speed analysis
- **Load**: Stores processed data in MySQL
- **Visualization**:
  - Automatic HTML reports
  - Excel data exports
  - Professional quality charts

## Database Schema

```mermaid
erDiagram
    WEATHER_RECORDS {
        int id PK
        varchar(100) city
        decimal(5,2) temperature
        int humidity
        decimal(5,2) wind_speed
        varchar(50) conditions
        datetime recorded_at
    }
Installation
Clone the repository:

bash
git clone https://github.com/Adnan040404/weather_api_data_ETL.git
cd weather-etl
Install dependencies:

bash
pip install -r requirements.txt
Configure environment:

Create .env file:

ini
OWM_API_KEY="your_openweathermap_api_key"
DB_HOST="localhost"
DB_USER="root"
DB_PASSWORD=""
DB_NAME="weather_data"
Usage
Run the main script:

bash
python weather_reporter.py
Output Files
text
reports/
├── weather_report.html    # Interactive HTML report
├── weather_data.xlsx      # Raw data in Excel format
├── temperatures.png       # Temperature comparison chart
└── conditions.png         # Weather conditions distribution
Scheduling Automation (Windows)
Create daily_weather.bat:

bat
@echo off
cd C:\path\to\weather-etl
python weather_reporter.py
Set up Task Scheduler:

Trigger: Daily at preferred time

Action: Run daily_weather.bat

Project Structure
text
weather-etl/
├── .env                   # Environment variables
├── config/
│   └── settings.py        # Configuration loader
├── etl/
│   ├── extract.py         # Data collection
│   ├── transform.py       # Data processing
│   └── load.py            # Database operations
├── reports/               # Generated outputs
├── weather_reporter.py    # Main script
└── README.md              # This file
Requirements
Python 3.9+

MySQL 8.0+

OpenWeatherMap API key

Libraries in requirements.txt