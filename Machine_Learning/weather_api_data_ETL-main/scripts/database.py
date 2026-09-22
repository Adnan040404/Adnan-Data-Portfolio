import mysql.connector
from config import Config

class WeatherDB:
    def __init__(self):
        self.connection = mysql.connector.connect(**Config.DB_CONFIG)
        
    def initialize_database(self):
        create_table_query = """
        CREATE TABLE IF NOT EXISTS weather_records (
            id INT AUTO_INCREMENT PRIMARY KEY,
            city VARCHAR(100),
            temperature DECIMAL(5,2),
            humidity INT,
            wind_speed DECIMAL(5,2),
            conditions VARCHAR(50),
            recorded_at DATETIME
        )
        """
        with self.connection.cursor() as cursor:
            cursor.execute(create_table_query)
        self.connection.commit()
    
    def insert_weather_data(self, data):
        insert_query = """
        INSERT INTO weather_records 
        (city, temperature, humidity, wind_speed, conditions, recorded_at)
        VALUES (%s, %s, %s, %s, %s, %s)
        """
        with self.connection.cursor() as cursor:
            cursor.execute(insert_query, (
                data['city'],
                data['temperature'],
                data['humidity'],
                data['wind_speed'],
                data['conditions'],
                data['recorded_at']
            ))
        self.connection.commit()
    
    def close(self):
        self.connection.close()