SELECT
 tpbuz_nm, COUNT(tpbuz_nm)

FROM (
  SELECT
    tpbuz_nm, tmkt_nm

  FROM
    `project-388305.market_data.April_market`

  UNION ALL

  SELECT
    tpbuz_nm, tmkt_nm

  FROM
    `project-388305.market_data.May_market`

  UNION ALL

  SELECT
    tpbuz_nm, tmkt_nm

  FROM
    `project-388305.market_data.June_market`

  UNION ALL

  SELECT
    tpbuz_nm, tmkt_nm
  FROM
    `project-388305.market_data.July_market`

  UNION ALL

  SELECT
    tpbuz_nm, tmkt_nm

  FROM
    `project-388305.market_data.August_market`

  UNION ALL

  SELECT
    tpbuz_nm, tmkt_nm

  FROM
    `project-388305.market_data.October_market`

  UNION ALL

  SELECT
    tpbuz_nm, tmkt_nm

  FROM
    `project-388305.market_data.November_market`

  UNION ALL

  SELECT
    tpbuz_nm, tmkt_nm

  FROM
    `project-388305.market_data.December_market`)

WHERE tmkt_nm = '명지시장'
GROUP BY tpbuz_nm
ORDER BY 2 DESC