with raw as (
    select * from {{ source('raw_dataset', 'raw_countries') }}
)

select
    name,
    `alpha-2` as country_code_alpha2,
    `alpha-3` as country_code_alpha3,
    `country-code` as country_numeric_code,
    `iso_3166-2`,
    region,
    `sub-region`,
    `intermediate-region`
from raw