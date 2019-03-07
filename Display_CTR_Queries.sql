-- Impressions, clicks per days

SELECT
DATE(date_time) as final_date,
SUM(CASE event_type WHEN 'click' THEN 1 else 0 END) as clicks,
SUM(CASE event_type WHEN 'imp' THEN 1 else 0 END) as imps
FROM bc_core_appnexus_lld.standard_feed_2038
WHERE date_time BETWEEN '2019-02-01' AND '2019-03-05'
AND campaign_group_id in (7392373)
GROUP BY final_date
ORDER BY final_date DESC

------------------------------------------------------------------------

-- Impressions, clicks by cities

SELECT
geo_city,
SUM(CASE event_type WHEN 'click' THEN 1 else 0 END) as clicks,
SUM(CASE event_type WHEN 'imp' THEN 1 else 0 END) as imps
FROM bc_core_appnexus_lld.standard_feed_2038
WHERE date_time BETWEEN '2019-02-01' AND '2019-03-05'
AND campaign_group_id in (7392373)
GROUP BY geo_city

------------------------------------------------------------------------

-- Impressions, clicks by day week

SELECT
EXTRACT(WEEKDAY from date_time) as day_week,
SUM(CASE event_type WHEN 'click' THEN 1 else 0 END) as clicks,
SUM(CASE event_type WHEN 'imp' THEN 1 else 0 END) as imps
FROM bc_core_appnexus_lld.standard_feed_2038
WHERE date_time BETWEEN '2019-02-01' AND '2019-03-05'
AND campaign_group_id in (7392373)
GROUP BY day_week
ORDER BY day_week ASC

------------------------------------------------------------------------

-- Impressions, clicks by hour day

SELECT
EXTRACT(HOUR from date_time) as hour_day,
SUM(CASE event_type WHEN 'click' THEN 1 else 0 END) as clicks,
SUM(CASE event_type WHEN 'imp' THEN 1 else 0 END) as imps
FROM bc_core_appnexus_lld.standard_feed_2038
WHERE date_time BETWEEN '2019-02-01' AND '2019-03-05'
AND campaign_group_id in (7392373)
GROUP BY hour_day
ORDER BY hour_day ASC

------------------------------------------------------------------------

-- Days and hours with better CTR

SELECT
EXTRACT(WEEKDAY from date_time) || '-' || EXTRACT(HOUR from date_time) as day_hour,
SUM(CASE event_type WHEN 'click' THEN 1 else 0 END) as clicks,
SUM(CASE event_type WHEN 'imp' THEN 1 else 0 END) as imps
FROM bc_core_appnexus_lld.standard_feed_2038
WHERE date_time BETWEEN '2019-02-01' AND '2019-03-05'
AND campaign_group_id in (7392373)
GROUP BY day_hour
ORDER BY day_hour ASC

------------------------------------------------------------------------

-- Domain with best CTR

SELECT
site_domain,
SUM(CASE event_type WHEN 'click' THEN 1 else 0 END) as clicks,
SUM(CASE event_type WHEN 'imp' THEN 1 else 0 END) as imps
FROM bc_core_appnexus_lld.standard_feed_2038
WHERE date_time BETWEEN '2019-02-01' AND '2019-03-05'
AND campaign_group_id in (7392373)
GROUP BY site_domain
ORDER BY site_domain ASC

------------------------------------------------------------------------

-- Format size with best CTR

SELECT
width || 'x' || height as format_size,
SUM(CASE event_type WHEN 'click' THEN 1 else 0 END) as clicks,
SUM(CASE event_type WHEN 'imp' THEN 1 else 0 END) as imps
FROM bc_core_appnexus_lld.standard_feed_2038
WHERE date_time BETWEEN '2019-02-01' AND '2019-03-05'
AND campaign_group_id in (7392373)
GROUP BY format_size
ORDER BY format_size ASC

------------------------------------------------------------------------

-- Devices with best CTR

SELECT
device_type,
SUM(CASE event_type WHEN 'click' THEN 1 else 0 END) as clicks,
SUM(CASE event_type WHEN 'imp' THEN 1 else 0 END) as imps
FROM bc_core_appnexus_lld.standard_feed_2038
WHERE date_time BETWEEN '2019-02-01' AND '2019-03-05'
AND campaign_group_id in (7392373)
GROUP BY device_type
ORDER BY device_type ASC