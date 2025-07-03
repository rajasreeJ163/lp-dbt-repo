{{ config(materialized='view') }}

WITH all_hosts AS (
    SELECT
        *
    FROM
       {{ ref('src_hosting') }}
)
SELECT
    host_id,
    NVL(
        host_name,
        'Anonymous'
    ) AS host_name,
  NVL(
        is_superhost,
        'Anonymous'
    ) AS  is_superhost,
    created_at,
    updated_at
FROM
    all_hosts
 
 
