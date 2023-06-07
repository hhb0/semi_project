SELECT 
  tmkt_nm,
  SUM(ttl_trns_amt) AS Pay_Cnt,
  SUM(trns_cnt) AS Transactions,
  CAST(AVG(ttl_trns_amt) AS INT) AS Avg_Cnt
  

FROM (
  SELECT
    ttl_trns_amt, trns_cnt, tmkt_nm
  FROM
    `project-388305.market_data.April_market`
  UNION ALL
  SELECT
    ttl_trns_amt, trns_cnt, tmkt_nm
  FROM
    `project-388305.market_data.May_market`
  UNION ALL
  SELECT
    ttl_trns_amt, trns_cnt, tmkt_nm
  FROM
    `project-388305.market_data.June_market`
  UNION ALL
  SELECT
    ttl_trns_amt, trns_cnt, tmkt_nm
  FROM
    `project-388305.market_data.July_market`
  UNION ALL
  SELECT
    ttl_trns_amt, trns_cnt, tmkt_nm
  FROM
    `project-388305.market_data.August_market`
  UNION ALL
  SELECT
    ttl_trns_amt, trns_cnt, tmkt_nm
  FROM
    `project-388305.market_data.October_market`
  UNION ALL
  SELECT
    ttl_trns_amt, trns_cnt, tmkt_nm
  FROM
    `project-388305.market_data.November_market`
  UNION ALL
  SELECT
    ttl_trns_amt, trns_cnt, tmkt_nm
  FROM
    `project-388305.market_data.December_market`)

WHERE tmkt_nm IN ("명지시장",
    "서면시장",
    "자갈치시장",
    "기장시장",
    "부산 평화 시장",
    "장성시장",
    "영남종합시장",
    "서동향토시장" )
GROUP BY tmkt_nm
ORDER BY Avg_Cnt DESC