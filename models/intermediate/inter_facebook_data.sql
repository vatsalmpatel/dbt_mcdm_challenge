with int_facebook_data as (
    select 
    ad_id,
    add_to_cart,
    adset_id,
    campaign_id,
    channel,
    clicks_old as clicks,
    comments_old as comments,
    creative_id,
    date,
    likes + shares_old + comments_old + views + clicks_old as engagements,
    impressions,
    mobile_app_install as installs,
    likes,
    inline_link_clicks as link_clicks,
    '' as placement_id,
    0 as post_click_conversions,
    0 as post_view_conversions,
    0 as posts,
    purchase,
    complete_registration as registrations,
    purchase_value as revenue,
    shares_old as shares,
    spend,
    purchase as total_conversions,
    views as video_views

    from {{ ref('stg_facebook_data') }}
)
select * from int_facebook_data