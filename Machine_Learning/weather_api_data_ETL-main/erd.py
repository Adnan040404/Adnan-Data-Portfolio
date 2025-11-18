# minimal_er_diagram.py
import mysql.connector
from sqlalchemy import create_engine, inspect

def generate_text_er_diagram():
    engine = create_engine('mysql+mysqlconnector://root:@localhost/weather_data')
    inspector = inspect(engine)
    
    with open('docs/er_diagram.txt', 'w') as f:
        f.write("WEATHER DATABASE SCHEMA\n\n")
        for table in inspector.get_table_names():
            f.write(f"TABLE: {table}\n")
            for column in inspector.get_columns(table):
                f.write(f"  {column['name']} ({column['type']})\n")
            f.write("\n")
    print("Text ER diagram saved to docs/er_diagram.txt")

generate_text_er_diagram()