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


