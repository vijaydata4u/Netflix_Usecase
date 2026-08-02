config{{materialized='view'}}

select 
Cast(title AS STRING) as title,
Cast(year AS INTEGER) as year,
Cast(certificate AS STRING) as certificate,
Cast(duration AS STRING) as duration,
Cast(genre AS STRING) as genre,
Cast(rating AS DOUBLE) as rating,
description,
Cast(stars AS STRING) as stars,
Cast(votes AS BIGINT) as votes,
Cast(ingest_dt AS TIMESTAMP) as ingest_dt,
Cast(_rescued_data AS STRING) as _rescued_data,
Cast(_source_name AS STRING) as _source_name,
Cast(_dataset_name AS STRING) as _dataset_name,
Cast(_source_file_name AS STRING) as _source_file_name,
Cast(_ingestion_timestamp AS TIMESTAMP) as _ingestion_timestamp,
_ingestion_date
_run_id
_source_file_path

from {{source('bronze','netflix_movies')}}