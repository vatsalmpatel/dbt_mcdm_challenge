with src_bing_all_data as (
    select * from {{ source("mcdm_data_bing","src_ads_bing_all_data") }}
),

stg_bing_all_data as (
    select 

    __insert_date as insert_date,
    CAST(ad_id as STRING) as ad_id,
    adset_id,
    campaign_id,
    'Bing' as channel,
    ad_description,
    title_part_1,
    title_part_2,
    clicks,
    date,
    imps as impressions,
    revenue,
    spend,
    conv as total_conversions,
    null as creative_id

    from src_bing_all_data
)
select * from stg_bing_all_data