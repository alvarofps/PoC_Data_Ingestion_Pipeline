import logging
import os
from typing import List
from datetime import datetime, timezone

#spark job
def run(spark, ingest_path, transformation_path):

    #escalable for every .csv file present on data source folder
    for data_file in os.listdir(ingest_path):
        #get .dat files only
        if data_file.endswith(".csv"):
            logging.info(f"Reading {data_file} file from: {ingest_path}")

            #read as csv with proper sep (inferschema for velocity)
            input_df = spark.read.option("header", True)\
                                    .option("inferSchema", True)\
                                    .csv(ingest_path+'/'+data_file)

            # get table name form filename
            curr_data_name=data_file.split('.')[0]
            
            # Timestamp for ingested data
            ingested_at = datetime.now(timezone.utc).timestamp()

            # Name for the ingested parquet file
            sink = rf'{transformation_path}/{curr_data_name}-{ingested_at}'

            #check ingestion and save to ingested folder
            input_df.printSchema()
            input_df.show()
            input_df.write.mode("overwrite").parquet(sink)