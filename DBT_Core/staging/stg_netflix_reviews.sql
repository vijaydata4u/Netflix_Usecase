config{{materialized='view'}}

select 
Cast(reviewId AS STRING) as review_id,
Cast(userName AS STRING) as user_name,
Cast(content AS STRING) as content,
Cast(score AS DOUBLE) as score,
Cast(thumbsUpCount AS BIGINT) as thumbs_up_count,
Cast(reviewCreatedVersion AS STRING) as review_created_version,
Cast(at AS TIMESTAMP) as at,
Cast(appVersion AS STRING) as app_version,
Cast(ingest_dt AS TIMESTAMP) as ingest_dt,
Cast(_rescued_data AS STRING) as _rescued_data,
Cast(_source_name AS STRING) as _source_name,
Cast(_dataset_name AS STRING) as _dataset_name,
Cast(_source_file_path AS STRING) as _source_file_path,
Cast(_ingestion_timestamp AS TIMESTAMP) as _ingestion_timestamp,
Cast(_ingestion_date AS DATE) as _ingestion_date,
Cast(_run_id AS STRING) as _run_id
Cast(_source_name AS STRING) as _source_name,
Cast(_dataset_name AS STRING) as _dataset_name,
Cast(_source_file_path AS STRING) as _source_file_path,
Cast(_ingestion_timestamp AS TIMESTAMP) as _ingestion_timestamp,
Cast(_ingestion_date AS DATE) as _ingestion_date,
Cast(_run_id AS STRING) as _run_id

from {{source('bronze','netflix_reviews')}}