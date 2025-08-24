from pyspark.sql import SparkSession
import matplotlib.pyplot as plt

# Sample query with the provided dataset
def query_transform():
    spark = SparkSession.builder.appName("Query").getOrCreate()
    
    # Custom SQL query to perform analysis
    query = (
        "SELECT Gender, AVG(Age) AS avg_age, AVG(Height) AS avg_height, AVG(Weight) AS avg_weight "
        "FROM obesity_data "
        "GROUP BY Gender"
    )
    
    query_result = spark.sql(query)
    return query_result

# Visualizations based on query result
def viz():
    query = query_transform()
    count = query.count()
    if count > 0:
        print(f"Data validation passed. {count} rows available.")
    else:
        print("No data available. Please investigate.")

    query_result_pd = query.toPandas()

    # Bar Plot
    plt.figure(figsize=(12, 6))
    query_result_pd.plot(x='Gender', y=['avg_age', 'avg_height', 'avg_weight'], kind='bar')
    plt.title('Average Age, Height, and Weight by Gender')
    plt.xlabel('Gender')
    plt.ylabel('Average Values')
    plt.xticks(rotation=0)
    plt.legend(title='Metrics')
    plt.tight_layout()
    plt.show()

if __name__ == "__main__":
    viz()
