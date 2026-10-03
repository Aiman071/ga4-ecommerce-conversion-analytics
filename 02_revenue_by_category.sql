-- Top Product Categories by Revenue
SELECT
  item.item_category AS product_category,
  COUNT(DISTINCT event_date) AS active_days,
  SUM(item.quantity) AS total_units_sold,
  ROUND(SUM(item.item_revenue), 2) AS total_revenue
FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`,
  UNNEST(items) AS item
WHERE
  _TABLE_SUFFIX BETWEEN '20201101' AND '20210131'
  AND event_name = 'purchase'
  AND item.item_category IS NOT NULL
  AND item.item_category != '(not set)'
GROUP BY
  product_category
ORDER BY
  total_revenue DESC
LIMIT 10;
