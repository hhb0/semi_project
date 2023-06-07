SELECT tmkt_nm,
SUM(ttl_trns_amt) 
FROM `project-388305.market_data.April_market`
GROUP BY tmkt_nm;