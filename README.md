# February 2021 Marketing Analytics Report
## Executive Summary
This report analyzes the ***effectiveness*** and ***profitability*** of various marketing campaigns of an ***E-commerce business in February 2021***, highlighting significant successes and areas for improvement. The business achieved over ***1.5 billion impressions***, resulting in nearly ***3 million clicks*** and ***66,000 leads***, generating ***8,043 orders*** and ***total revenue of $428.9 million***, with a ***profit margin of 22%*** and ***ROI of 28%***. 

Despite these metrics, the ***click-through rate (CTR)*** of 0.19% was ***below the industry benchmark***, indicating a need for more engaging marketing content to drive audience interaction. Additionally, marketing expenses demonstrated a correlation with order volume, revealing that increased budgeting from the 15th to the 20th of the month generated larger orders ***but declined toward the end of the month***. Therefore, a strategic reallocation of the marketing budget is necessary to maintain ***consistent sales*** throughout the month.

Key campaigns such as ***“Facebook retargeting,” “Google Hot,” and “YouTube Blogger”*** exhibited the ***highest conversion rates*** and should be prioritized to ***enhance sales***. Conversely, campaigns like ***“Instagram Tier 2,” “Banner Partners,” and “YouTube Bloggers”*** proved cost-effective in ***generating leads at a lower expense***. Despite the overall success of some campaigns, ***six out of eleven had negative ROI***, highlighting crucial challenges that ***require adjustment*** to align future strategies with business objectives. 

Additionally, the analysis identified that ***Influencer*** campaigns were the most effective in ***driving sales and revenue***, thanks to their high CTR and order conversion rates. ***Banner ads*** also played a significant role in ***enhancing brand visibility***, while ***YouTube*** emerged as the most ***cost-effective*** channel, achieving substantial ROI with minimal customer acquisition costs. ***Instagram*** showed promise in ***driving engagement***, recording the highest number of clicks and leads.

To conclude, ***improving ROI*** for underperforming campaigns, increasing customer ***engagement*** to enhance CTR, and maintaining ***consistent sales*** throughout the month are the ***objectives*** for the next campaigns. ***Recommendation*** includes ***leveraging successful campaigns and channels***, along with ***optimizing content*** to connect effectively with the target audience.
## Business Request and User Stories

The business request for this February 2021 Marketing Analytics is ***a marketing performance report*** for the ***Marketing Department***. Based on the user stories and acceptance criteria below, this report aim to fulfill the business demand.

|#|	As a (role)|	I want (goal)|	So that I (benefits)|	Acceptance Criteria|
|-|	-----------|	-------------|	--------------------|	-------------------|
|1|	Marketing Manager|	To assess February marketing campaign effectiveness and profitability|	Can determine strategic objectives for campaigns in March.|	A PowerBI Dashboard that includes key metrics, conversion rates and return on investment (ROI) and update once a day. Relevant insights and actionable recommendation.| 
|2|	Digital Marketing Specialist|	To assess the performance of different online marketing channels|	Can determine marketing channel strategy in March.|	A PowerBI Dashboard that includes metric analytics filtered by channels. Relevant insights and actionable recommendation.|
|3|	Content Marketing Specialist| To assess the performance of different type of campaign |	Can determine appropriate content creation strategy in March.|	A PowerBI Dashboard that includes metric analytics filtered by type of campaign. Relevant insights and actionable recommendation.|
## Data Preprocessing using SQL Server
The following table was extracted using SQL to prepare the necessary data for doing analysis.
Below are the SQL statements for cleansing and transforming necessary data.
```
SELECT 
  [campaign_id] as 'Campaign ID', 
  UPPER(
    REPLACE([campaign_name], '_', ' ')
  ) as 'Campaign Name', 
  [c_date] as 'Date', 
  UPPER([category]) as 'Types of Campaign', 
  UPPER(
    LEFT(
      [campaign_name], 
      CHARINDEX('_', [campaign_name], 1)-1
    )
  ) as 'Channels', 
  [impressions] as 'Impressions', 
  [clicks] as 'Clicks', 
  [leads] as 'Leads', 
  [orders] as 'Orders', 
  [mark_spent] as 'Budget', 
  [revenue] as 'Revenue' 
FROM 
  [dbo].[Marketing];
``` 
## Data Visualization using PowerBI
The extracted data was then imported into PowerBI. Below is a screenshot of the data model after cleansed and prepared tables were imported into Power BI.

The Dashboard includes 2 pages. Page 1 contains an overview of analytics into the effectiveness and profitability of the marketing campaigns in February 2021. Page 2 gives more detailed analytics into the performance of different types of campaign and channels.


## Insights
### Effectiveness and Profitability

The business successfully gained ***significant brand awareness***, with a total of over ***1.5B Impressions***. It also gained the ***engagement*** of nearly ***3M Clicks*** and ***66K Leads***, which brought ***8043 Orders*** and generated a ***Total Revenue of 428,894K***, with a ***22% Profit Margin*** and ***28% ROI***.
 
However, The campaigns achieved a ***click-through rate (CTR) of only 0.19%***, significantly lower than the industry benchmark of 2%. This indicates that the company was not engaging its audience effectively or encouraging them to take action. To improve results, ***marketing content needs to be more engaging*** so that the audience is motivated to ***click and provide their information***.
 
***Total Orders*** are ***correlated*** with the ***Marketing Expenses***. Between ***15-20th of the month***, the increased budget expenditure resulted in relatively ***large orders.*** However, both expenses and orders ***declined toward the end of the month***. Therefore, the company needs to allocate its marketing budget more effectively to generate sales ***consistently*** throughout the month.
 
***“Facebook retargeting”, “Google Hot,” and “Youtube blogger”*** are the most effective campaigns, boasting the ***highest order conversion rate***. Therefore, the marketing team should prioritize these campaigns to ***drive larger sales***.
 
***“Instagram Tier 2”, “Banner Partners”, and “YouTube Bloggers”*** generate the ***highest total leads*** at the ***lowest cost per lead***. Therefore, they are ***cost-effective*** in encouraging the audience to ***sign up and provide their credentials***.
 
Overall, ***6 out of 11*** campaigns executed this month witnessed ***negative ROI***, raising concerns about the effectiveness of our strategies and underscores the need to identify the underlying issues and implement targeted adjustments to ensure that future campaigns align more closely with our business objectives and deliver a positive impact. While the ***“YouTube Blogger”*** Campaign was the ***most profitable***, with a 258% ROI, ***“Facebook LAL”*** had the ***deepest negative ROI*** of nearly -90%.
 

### Analysis by Types of Campaign and Channel

  
 
***“Influencer”*** is the most effective type of campaign for ***driving sales and generating revenue***. It not only achieved the greatest CTR, but also resulted in the highest total order and revenue, which led to significantly higher profit margins compared to other marketing approaches. Therefore, by leveraging influencers, the business can effectively ***connect with its target audience***, ultimately ***maximizing its return on investment***.   
 
***"Banner"*** generated the ***highest number of impressions*** during the campaign, which indicates its significant impact and effectiveness in enhancing ***brand awareness***. This suggests that utilizing banner ads is a strategic choice to ***maximize visibility*** and ***reach a larger audience*** by capturing the attention of potential customers through visually engaging content.
 
***YouTube*** was the ***most cost-effective*** and ***profitable*** channel for marketing, achieving an impressive return on investment (ROI) of 258% during the campaign period with with the lowest customer acquisition cost compared to other channels. In contrast, ***Facebook*** recorded a significant ***negative return on investment*** with the ***highest customer acquisition cost***. Therefore, ***YouTube*** would be a strategic choice for campaigns looking to ***maximize budget*** and ***achieve better financial outcomes***.

 
-	***Instagram*** recorded the ***highest total clicks and leads*** among other channels which implies its ability to ***drive customer engagement and interaction*** with the business.

## Recommendation
### Objectives
-	***Improve the ROI*** of campaigns that witnessed negative outcomes in February.
-	***Gain more customer engagement and interaction***, with the goal of enhancing the CTR.
-	***Maintain consistent sales performance*** throughout every day of the month.
### Channel and Content Strategy
-	Leverage “Facebook retargeting”, “Google Hot,” and “Youtube blogger” to ***drive sales***.
-	Leverage “Instagram Tier 2”, “Banner Partners”, and “YouTube Bloggers” to ***collect customer information***.
-	Leverage “Influencer” to ***connect with the target audience, drive sales and maximize return.***
-	Leverage “Banner” to ***gain brand awareness***.
-	Leverage YouTube to ***maximize budget and achieve better financial outcomes***.
