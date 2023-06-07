SELECT 
  tmkt_nm,
  SUM(ttl_trns_amt) AS Pay_Cnt,
  SUM(trns_cnt) AS Transactions,
  CAST(AVG(ttl_trns_amt) AS INT) AS Avg_Cnt
  

FROM (
  SELECT
    ttl_trns_amt, trns_cnt, tmkt_nm
  FROM
    `April_market`
  UNION ALL
  SELECT
    ttl_trns_amt, trns_cnt, tmkt_nm
  FROM
    `May_market`
  UNION ALL
  SELECT
    ttl_trns_amt, trns_cnt, tmkt_nm
  FROM
    `June_market`
  UNION ALL
  SELECT
    ttl_trns_amt, trns_cnt, tmkt_nm
  FROM
    `July_market`
  UNION ALL
  SELECT
    ttl_trns_amt, trns_cnt, tmkt_nm
  FROM
    `August_market`
  UNION ALL
  SELECT
    ttl_trns_amt, trns_cnt, tmkt_nm
  FROM
    `October_market`
  UNION ALL
  SELECT
    ttl_trns_amt, trns_cnt, tmkt_nm
  FROM
    `November_market`
  UNION ALL
  SELECT
    ttl_trns_amt, trns_cnt, tmkt_nm
  FROM
    `December_market`)

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