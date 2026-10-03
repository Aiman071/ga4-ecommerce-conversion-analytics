-- E-Commerce User Conversion Funnel Analysis
WITH FunnelEvents AS (
  SELECT
    user_pseudo_id,
    MAX(IF(event_name = 'page_view', 1, 0)) AS viewed_site,
    MAX(IF(event_name = 'view_item', 1, 0)) AS viewed_product,
    MAX(IF(event_name = 'add_to_cart', 1, 0)) AS added_to_cart,
    MAX(IF(event_name = 'purchase', 1, 0)) AS completed_purchase
  FROM
    `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
  WHERE
    _TABLE_SUFFIX BETWEEN '20201101' AND '20210131'
  GROUP BY
    user_pseudo_id
)

SELECT
  COUNT(DISTINCT user_pseudo_id) AS total_visitors,
  SUM(viewed_product) AS product_views,
  SUM(added_to_cart) AS cart_additions,
  SUM(completed_purchase) AS total_purchases,
  ROUND(SAFE_DIVIDE(SUM(added_to_cart), SUM(viewed_product)) * 100, 2) AS view_to_cart_rate,
  ROUND(SAFE_DIVIDE(SUM(completed_purchase), SUM(added_to_cart)) * 100, 2) AS cart_to_purchase_rate
FROM
  FunnelEvents;
