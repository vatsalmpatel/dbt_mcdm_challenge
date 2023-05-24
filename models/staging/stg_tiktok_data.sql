with src_tiktok_all_data as (
    select * from {{ source("mcdm_data_tiktok","src_ads_tiktok_ads_all_data") }}
),

stg_tiktok_all_data as (
    select 
    __insert_date as insert_date, *
    from src_tiktok_all_data
)
select * from stg_tiktok_all_data