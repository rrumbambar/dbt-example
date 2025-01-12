{{ config(
    materialized='table'
) }}

with cleaned_data as (
    select * from {{ ref('stg_countries') }}
)

select
    region,
    `sub-region`,
    count(*) as country_count,
    array_agg(name) as country_names
from cleaned_data
group by region, `sub-region`