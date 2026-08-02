config{{materialized='view'}}


select
show_id,
cast(type AS STRING) as type,
cast(title AS STRING) as title,
cast(director AS STRING) as director,
cast(cast AS STRING) as cast,
cast(country AS STRING) as country,
cast(date_added AS DATE) as date_added,
cast(release_year AS INT) as release_year,
cast(rating AS STRING) as rating,
cast(duration AS STRING) as duration,
cast(genres AS STRING) as genres,
cast(language AS STRING) as language,
cast(description AS STRING) as description,
cast(popularity AS DOUBLE) as popularity,
cast(vote_count AS INT) as vote_count,
cast(vote_average AS DOUBLE) as vote_average,
cast(ingest_dt AS TIMESTAMP) as ingest_dt,
cast(_rescued_data AS STRING) as _rescued_data,
_source_name
_dataset_name
_source_file_path
_ingestion_timestamp
_ingestion_date
_run_id

from {{source('bronze','netflix_titles')}}