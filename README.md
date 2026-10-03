# 🛒 GA4 E-Commerce User Conversion & Revenue Analytics (BigQuery SQL)

An end-to-end cloud data warehouse analysis examining e-commerce user journeys, drop-off conversion funnels, and revenue performance using Google Analytics 4 (GA4) event datasets in **Google Cloud BigQuery**.

---

## 📌 Project Overview
Understanding user conversion funnels and product-level performance is critical for optimizing e-commerce user experience and maximizing marketing ROI. This project leverages Standard SQL to process raw event logs and extract actionable business insights.

---

## 🛠️ Tech Stack & Tools
* **Cloud Platform:** Google Cloud Platform (GCP)
* **Data Warehouse:** Google BigQuery
* **Query Language:** Standard SQL (CTEs, Aggregations, Array Unnesting, Conditional Logic)
* **Dataset:** `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`

---

## 📊 Key Insights & Business Findings

* **Conversion Funnel Efficiency:**
  * **View to Cart Rate:** ~20.48% (1 in 5 visitors who view product pages add items to cart).
  * **Cart to Purchase Rate:** ~35.23% (Substantial drop-off observed during checkout flow).
* **Revenue Strategy:** Identified core product categories generating the majority of overall store revenue via nested item array processing.

---

## 📜 SQL Scripts Included
* `01_conversion_funnel.sql` - Tracks multi-stage user journey metrics.
* `02_revenue_by_category.sql` - Unnests GA4 item arrays for categorical sales aggregation.

---

## 🤝 Connect
* **Author:** Ansari Mohammad Aiman
* **GitHub:** [Aiman071](https://github.com/Aiman071)

