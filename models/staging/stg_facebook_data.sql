with src_facebook_all_data as (
    select * from {{ source("mcdm_data_facebook","src_ads_creative_facebook_all_data") }}
),

stg_facebook_all_data as (
    select 

    __insert_date as insert_date,
    CAST(ad_id as STRING) as ad_id,
    add_to_cart,
    adset_id,
    campaign_id,
    'Facebook' as channel,
    clicks as clicks_old,
    comments as comments_old,
    CAST(creative_id as STRING) as creative_id,
    creative_title,
    objective,
    buying_type,
    campaign_type,
    creative_body,
    date,
    likes,
    shares as shares_old,
    comments_2 as comments_new,
    views,
    clicks_2 as clicks_new,
    impressions,
    mobile_app_install,
    inline_link_clicks,
    purchase,
    complete_registration,
    purchase_value,
    shares_2 as shares_new,
    spend as spend,
    purchase_2 as purchase_new,
    views_2 as views_new

    from src_facebook_all_data
)
select * from stg_facebook_all_data