SELECT
  tmkt_nm AS Traditional_Market, 
  SUM(trns_cnt) AS Trn_Cnt,
  SUM(ttl_trns_amt) AS Pay_Cnt,
  AVG(ttl_trns_amt) AS AVG_Cnt

FROM
  `project-388305.market_data.December_market`

GROUP BY
  tmkt_nm

ORDER BY
  AVG_Cnt DESC

LIMIT 20