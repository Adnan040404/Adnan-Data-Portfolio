# weather_reporter.py
import pandas as pd
import matplotlib.pyplot as plt
from jinja2 import Template
import mysql.connector
from datetime import datetime
import seaborn as sns
import os

# 1. Fetch Data from MySQL (SQLAlchemy version)
def fetch_weather_data():
    try:
        # Using SQLAlchemy to avoid pandas warning
        from sqlalchemy import create_engine
        engine = create_engine('mysql+mysqlconnector://root:@localhost/weather_data')
        
        query = """
        SELECT id, city, temperature, humidity, 
               wind_speed, conditions, recorded_at
        FROM weather_records
        ORDER BY recorded_at DESC
        """
        df = pd.read_sql(query, engine)
        return df
    except Exception as e:
        print(f"Database error: {e}")
        raise
    finally:
        if 'engine' in locals():
            engine.dispose()

# 2. Generate Visualizations (Fixed seaborn warning)
def create_plots(df, output_dir="reports"):
    try:
        os.makedirs(output_dir, exist_ok=True)
        
        # Set modern style
        plt.style.use('default')
        sns.set_style("whitegrid")
        
        # Temperature by City (fixed palette warning)
        plt.figure(figsize=(10, 6))
        ax = sns.barplot(x='city', y='temperature', data=df, 
                        hue='city', palette="viridis", legend=False)
        plt.title('Current Temperatures', pad=20)
        plt.xlabel('City')
        plt.ylabel('Temperature (°C)')
        ax.bar_label(ax.containers[0], fmt='%.1f°C')
        plt.xticks(rotation=45)
        plt.tight_layout()
        plt.savefig(f"{output_dir}/temperatures.png", dpi=300)
        plt.close()
        
        # Conditions Distribution
        plt.figure(figsize=(8, 8))
        df['conditions'].value_counts().plot.pie(
            autopct='%1.1f%%',
            startangle=90,
            colors=sns.color_palette("pastel"),
            wedgeprops={'linewidth': 1, 'edgecolor': 'white'}
        )
        plt.title('Weather Conditions Distribution', pad=20)
        plt.ylabel('')
        plt.tight_layout()
        plt.savefig(f"{output_dir}/conditions.png", dpi=300)
        plt.close()
        
    except Exception as e:
        print(f"Plotting error: {e}")
        raise

# 3. Generate HTML Report
def generate_html_report(df):
    try:
        template = """
<!DOCTYPE html>
<html>
<head>
    <title>Weather Report</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .header { text-align: center; margin-bottom: 30px; }
        .plots { display: flex; flex-wrap: wrap; justify-content: center; }
        .plot { margin: 20px; text-align: center; }
        table { border-collapse: collapse; width: 100%; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #f2f2f2; }
        tr:nth-child(even) { background-color: #f9f9f9; }
        .timestamp { color: #666; margin-top: 20px; }
    </style>
</head>
<body>
    <div class="header">
        <h1>Weather Report</h1>
    </div>
    
    <div class="plots">
        <div class="plot">
            <img src="temperatures.png" width="500">
            <p>Temperature Comparison Across Cities</p>
        </div>
        <div class="plot">
            <img src="conditions.png" width="400">
            <p>Weather Conditions Distribution</p>
        </div>
    </div>
    
    <h2>Latest Weather Data</h2>
    <table>
        <tr>
            <th>City</th>
            <th>Temp (°C)</th>
            <th>Humidity (%)</th>
            <th>Wind (m/s)</th>
            <th>Conditions</th>
            <th>Recorded At</th>
        </tr>
        {% for row in data %}
        <tr>
            <td>{{ row.city }}</td>
            <td>{{ "%.1f"|format(row.temperature) }}</td>
            <td>{{ row.humidity }}</td>
            <td>{{ "%.1f"|format(row.wind_speed) }}</td>
            <td>{{ row.conditions }}</td>
            <td>{{ row.recorded_at.strftime('%Y-%m-%d %H:%M') }}</td>
        </tr>
        {% endfor %}
    </table>
    
    <div class="timestamp">
        <p>Report generated at: {{ timestamp }}</p>
    </div>
</body>
</html>
        """
        
        with open("reports/weather_report.html", "w") as f:
            f.write(Template(template).render(
                timestamp=datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
                data=df.head(10).to_dict('records')
            ))
            
    except Exception as e:
        print(f"Report generation error: {e}")
        raise

# 4. Main function
def generate_report():
    try:
        print("Starting report generation...")
        df = fetch_weather_data()
        create_plots(df)
        generate_html_report(df)
        
        # Export to Excel (with openpyxl)
        df.to_excel("reports/weather_data.xlsx", index=False, engine='openpyxl')
        
        print("\n✅ Report successfully generated in 'reports' folder")
        print(f"📄 HTML Report: reports/weather_report.html")
        print(f"📊 Excel Data: reports/weather_data.xlsx")
        print(f"📈 Charts: reports/temperatures.png, reports/conditions.png")
        
    except Exception as e:
        print(f"\n❌ Error generating report: {e}")

if __name__ == "__main__":
    # Install missing packages automatically
    try:
        import sqlalchemy
        import openpyxl
    except ImportError:
        import subprocess
        import sys
        subprocess.check_call([sys.executable, "-m", "pip", "install", 
                             "sqlalchemy", "openpyxl"])
    
    generate_report()