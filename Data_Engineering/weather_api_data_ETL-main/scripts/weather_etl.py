import requests
import mysql.connector
from datetime import datetime
from dotenv import load_dotenv
import os

# 1. Load environment variables
load_dotenv()
API_KEY = os.getenv('OWM_API_KEY') or "f775366aee48024424b1a513d4c538ca"  # Fallback to your key

# 2. Database connection
def get_db_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="weather_data"
    )

# 3. Main ETL process
def run_etl():
    cities = ["London", "Paris", "Tokyo", "New York", "Berlin"]
    
    for city in cities:
        try:
            # EXTRACT
            url = f"https://api.openweathermap.org/data/2.5/weather?q={city}&appid={API_KEY}&units=metric"
            response = requests.get(url, timeout=10)
            response.raise_for_status()  # Crash if API fails
            data = response.json()
            
            # TRANSFORM
            record = (
                city,
                data['main']['temp'],
                data['main']['humidity'],
                data['wind']['speed'],
                data['weather'][0]['main'],
                datetime.now().strftime('%Y-%m-%d %H:%M:%S')
            )
            
            # LOAD
            conn = get_db_connection()
            cursor = conn.cursor()
            cursor.execute("""
                INSERT INTO weather_records 
                (city, temperature, humidity, wind_speed, conditions, recorded_at)
                VALUES (%s, %s, %s, %s, %s, %s)
            """, record)
            conn.commit()
            print(f"✅ Success: {city}")
            
        except requests.exceptions.HTTPError as e:
            print(f"❌ API Error for {city}: {e.response.text}")
        except Exception as e:
            print(f"❌ General Error for {city}: {str(e)}")
        finally:
            if 'conn' in locals():
                conn.close()

if __name__ == "__main__":
    run_etl()