with int_twitter_data as (
    select 
    CAST(ad_id as STRING) as ad_id,
    0 as add_to_cart,
    null as adset_id,
    campaign_id,
    channel,
    clicks,
    comments,
    CAST(creative_id as STRING) as creative_id,
    date,
    engagements,
    impressions,
    0 as installs,
    likes,
    url_clicks as link_clicks,
    '' as placement_id,
    0 as post_click_conversions,
    0 as post_view_conversions,
    0 as posts,
    0 as purchase,
    0 as registrations,
    0 as revenue,
    retweets as shares,
    spend,
    0 as total_conversions,
    total_views as video_views

    from {{ ref('stg_twitter_data') }}
)
select * from int_twitter_data