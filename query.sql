SELECT c.campaign_id, 
	c.month, 
	p.product_name AS product, 
	cs.impressions, 
	cs.clicks, 
	cs.conversion_rate, 
	c.campaign_type AS "campaign type", 
	cs.CPL, 
	cs.EPL
FROM campaigns AS c
LEFT JOIN products AS p
ON c.product_id = p.product_id
LEFT JOIN campaign_statistics AS cs
ON c.stats_id = cs.stats_id
