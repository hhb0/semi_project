SELECT
 tpbuz_nm, COUNT(tpbuz_nm)

FROM (
  SELECT
    tpbuz_nm, tmkt_nm

  FROM
    `April_market`

  UNION ALL

  SELECT
    tpbuz_nm, tmkt_nm

  FROM
    `May_market`

  UNION ALL

  SELECT
    tpbuz_nm, tmkt_nm

  FROM
    `June_market`

  UNION ALL

  SELECT
    tpbuz_nm, tmkt_nm
  FROM
    `July_market`

  UNION ALL

  SELECT
    tpbuz_nm, tmkt_nm

  FROM
    `August_market`

  UNION ALL

  SELECT
    tpbuz_nm, tmkt_nm

  FROM
    `October_market`

  UNION ALL

  SELECT
    tpbuz_nm, tmkt_nm

  FROM
    `November_market`

  UNION ALL

  SELECT
    tpbuz_nm, tmkt_nm

  FROM
    `December_market`)

WHERE tmkt_nm = '명지시장'
GROUP BY tpbuz_nm
ORDER BY 2 DESC