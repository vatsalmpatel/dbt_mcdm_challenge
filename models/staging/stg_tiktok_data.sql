with src_tiktok_all_data as (
    select * from {{ source("mcdm_data_tiktok","src_ads_tiktok_ads_all_data") }}
),

stg_tiktok_all_data as (
    select 

    __insert_date as insert_date,
    CAST(ad_id as STRING) as ad_id,
    add_to_cart,
    adgroup_id,
    campaign_id,
    'TikTok Ads' as channel,
    clicks,
    date,
    impressions,
    rt_installs,
    skan_app_install,
    ad_status,
    ad_text,
    purchase,
    registrations,
    spend,
    conversions,
    skan_conversion,
    video_views

    from src_tiktok_all_data
)
select * from stg_tiktok_all_data