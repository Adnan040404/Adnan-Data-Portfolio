from pyspark.sql import SparkSession
from pyspark.sql.functions import monotonically_increasing_id

def load(dataset="dbfs:/FileStore/Adnan-Databricks_ETL_Pipeline/"
                "ObesityDataSet.csv"):
    spark = SparkSession.builder.appName("Read CSV").getOrCreate()
    # load csv and transform it by inferring schema
    obesity_data_df = spark.read.csv(
        dataset, header=True, inferSchema=True
    )

    columns = obesity_data_df.columns

    # Calculate mid index
    mid_idx = len(columns) // 2

    # Split columns into two halves
    columns1 = columns[:mid_idx]
    columns2 = columns[mid_idx:]

    # Create two new DataFrames
    obesity_data_df1 = obesity_data_df.select(*columns1)
    obesity_data_df2 = obesity_data_df.select(*columns2)

    # Add unique IDs to the DataFrames
    obesity_data_df1 = obesity_data_df1.withColumn(
        "id", monotonically_increasing_id()
    )
    obesity_data_df2 = obesity_data_df2.withColumn(
        "id", monotonically_increasing_id()
    )

    # Transform into Delta tables and store them
    obesity_data_df1.write.format("delta").mode("overwrite").saveAsTable(
        "obesity_data1_delta"
    )
    obesity_data_df2.write.format("delta").mode("overwrite").saveAsTable(
        "obesity_data2_delta"
    )

    num_rows1 = obesity_data_df1.count()
    print(f"Number of rows in obesity_data_df1: {num_rows1}")
    num_rows2 = obesity_data_df2.count()
    print(f"Number of rows in obesity_data_df2: {num_rows2}")

    return "Finished transform and load"

if __name__ == "__main__":
    load()
