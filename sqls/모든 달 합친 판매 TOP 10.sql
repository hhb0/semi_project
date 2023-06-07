SELECT tpbuz_nm, CAST(COUNT(tpbuz_nm) / 9 AS INT)

FROM (
  SELECT
    tpbuz_nm

  FROM
    `project-388305.market_data.April_market`

  UNION ALL

  SELECT
    tpbuz_nm

  FROM
    `project-388305.market_data.May_market`

  UNION ALL

  SELECT
    tpbuz_nm

  FROM
    `project-388305.market_data.June_market`

  UNION ALL

  SELECT
    tpbuz_nm
  FROM
    `project-388305.market_data.July_market`

  UNION ALL

  SELECT
    tpbuz_nm

  FROM
    `project-388305.market_data.August_market`

  UNION ALL

  SELECT
    tpbuz_nm

  FROM
    `project-388305.market_data.October_market`

  UNION ALL

  SELECT
    tpbuz_nm

  FROM
    `project-388305.market_data.November_market`

  UNION ALL

  SELECT
    tpbuz_nm

  FROM
    `project-388305.market_data.December_market`)


GROUP BY 1
ORDER BY 2 DESC
LIMIT 10