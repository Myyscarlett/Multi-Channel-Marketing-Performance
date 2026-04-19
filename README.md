# Multichannel Marketing Performance Dashboard

## Overview
This project analyzes marketing performance across **Facebook, Google, and TikTok** by integrating data into a unified model and building an interactive dashboard in Power BI.

The goal is to provide a **clear, cross-channel view of performance**, enabling better decision-making around **budget allocation, campaign optimization, and overall marketing strategy**.

---

## Data & Setup
- Source: 3 CSV files (Facebook Ads, Google Ads, TikTok Ads)
- Data stored and transformed in **BigQuery**
- Unified table created using SQL to standardize:
  - Campaign structure  
  - Performance metrics  
  - Platform labeling  

### Key Steps
1. Upload raw CSV files into BigQuery  
2. Standardize schemas across platforms  
3. Create a unified table using `UNION ALL`  
4. Connect data to Power BI for visualization  

---

## Data Model

### Dimensions
- Date  
- Platform  
- Campaign  
- Ad Group  

### Metrics
- Impressions  
- Clicks  
- Spend  
- Conversions  
- Revenue *(Google only)*  
- Video Views / Engagement *(platform-specific)*  

---

## Dashboard Structure

1. **Key Metrics**
   - Total Spend  
   - Total Conversions  
   - Conversion Rate *(primary success metric)*  
   - Cost Per Acquisition  
   - Click-Through Rate  
   - Cost Per Click  

2. **Funnel Analysis**
   - Impressions → Clicks → Conversions  
   - Identifies drop-off points in the user journey  

3. **Trend Analysis**
   - Spend vs Revenue over time  
   - Highlights performance shifts and diminishing returns  

4. **Cost Efficiency**
   - Cost Per Click vs Conversion Rate  
   - Evaluates traffic quality and efficiency  

5. **Platform Comparison**
   - Performance across Facebook, Google, TikTok  
   - Identifies strengths of each channel  

6. **Campaign Performance**
   - Detailed breakdown with conditional formatting  
   - Highlights top and underperforming campaigns  

---

## 🧠 Key Insights & Recommendations

- **Conversion Rate is the primary success metric**, reflecting how effectively traffic converts into outcomes  

- **Google**
  - Highest conversion efficiency and strongest revenue performance  
  - **Action:** Prioritize budget allocation to capture high-intent traffic and drive conversions  

- **TikTok**
  - High traffic volume and low Cost Per Click  
  - Lower Conversion Rate and higher Cost Per Acquisition  
  - **Action:** Position TikTok as a top-of-funnel channel focused on awareness and engagement rather than direct conversions  

- **Facebook**
  - Balanced performance across metrics  
  - Strong results in retargeting campaigns  
  - **Action:** Leverage Facebook for mid-funnel engagement and retargeting strategies  

- **Diminishing returns observed**
  - Increased spend does not consistently improve performance over time  
  - **Action:** Monitor efficiency metrics and avoid scaling spend when performance declines  

- **Campaign-level variation**
  - Some campaigns significantly outperform others in Conversion Rate and Cost Per Acquisition  
  - **Action:** 
    - Scale high-performing campaigns (e.g., brand search, retargeting)  
    - Optimize or reduce spend on underperforming campaigns (e.g., broad targeting with high costs)  

- **TikTok optimization opportunity**
  - Conversion-focused campaigns outperform other TikTok campaigns  
  - **Action:** Apply learnings from high-performing campaigns to improve overall platform performance  

- **Funnel optimization opportunity**
  - Significant drop-off from impressions to clicks  
  - **Action:** Improve creatives and targeting to increase engagement at the top of the funnel  


## 🛠️ Tools Used
- **BigQuery** — data storage & transformation  
- **SQL** — data modeling and unification  
- **Power BI** — dashboard and visualization  
