select * from {{ ref('inter_bing_data') }}
UNION ALL
select * from {{ ref('inter_facebook_data') }}
UNION ALL
select * from {{ ref('inter_tiktok_data') }}
UNION ALL
select * from {{ ref('inter_twitter_data') }}