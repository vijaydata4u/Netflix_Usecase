config{{materialized='view'}}


select
cast(date AS DATE) as date,
cast(open AS DOUBLE) as open,
cast(high AS DOUBLE) as high,
cast(low AS DOUBLE) as low,
cast(close AS DOUBLE) as close,
cast(volume AS BIGINT) as volume,   
dividends
stock_splits
Cast(ingest_dt AS TIMESTAMP) as ingest_dt,
_rescued_data
_source_name
_dataset_name
_source_file_path
_ingestion_timestamp
_ingestion_date
_run_id

from {{source('bronze','netflix_stock_history')}}