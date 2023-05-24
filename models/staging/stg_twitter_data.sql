with src_twitter_all_data as (
    select * from {{ source("mcdm_data_twitter","src_promoted_tweets_twitter_all_data") }}
),

stg_twitter_all_data as (
    select 
    
    __insert_date as insert_date,
    campaign_id,
    "Twitter" as channel,
    url,
    text,
    clicks,
    comments,
    date,
    engagements,
    impressions,
    likes,
    url_clicks,
    retweets,
    spend,
    video_total_views as total_views,
    null as creative_id,
    null as ad_id

    from src_twitter_all_data
)
select * from stg_twitter_all_data