CREATE OR REPLACE TABLE `marketing-analytics-493814.marketing_dashboard.ads_unified` AS

SELECT
  date,
  'facebook' AS platform,
  campaign_id,
  campaign_name,
  ad_set_id AS ad_group_id,
  ad_set_name AS ad_group_name,
  impressions,
  clicks,
  spend,
  conversions,
  CAST(NULL AS FLOAT64) AS revenue,
  video_views,
  CAST(NULL AS INT64) AS engagements
FROM `marketing-analytics-493814.marketing_dashboard.facebook_ads_raw`

UNION ALL

SELECT
  date,
  'google' AS platform,
  campaign_id,
  campaign_name,
  ad_group_id,
  ad_group_name,
  impressions,
  clicks,
  cost AS spend,
  conversions,
  conversion_value AS revenue,
  CAST(NULL AS INT64) AS video_views,
  CAST(NULL AS INT64) AS engagements
FROM `marketing-analytics-493814.marketing_dashboard.google_ads_raw`

UNION ALL

SELECT
  date,
  'tiktok' AS platform,
  campaign_id,
  campaign_name,
  adgroup_id AS ad_group_id,
  adgroup_name AS ad_group_name,
  impressions,
  clicks,
  cost AS spend,
  conversions,
  CAST(NULL AS FLOAT64) AS revenue,
  video_views,
  (likes + shares + comments) AS engagements
FROM `marketing-analytics-493814.marketing_dashboard.tiktok_ads_raw`;