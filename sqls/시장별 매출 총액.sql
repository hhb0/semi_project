SELECT tmkt_nm,
SUM(ttl_trns_amt) 
FROM `April_market`
GROUP BY tmkt_nm;