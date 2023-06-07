SELECT tpbuz_nm, CAST(COUNT(tpbuz_nm) / 9 AS INT)
FROM (
  SELECT
    tpbuz_nm
  FROM
    `April_market`
  UNION ALL
  SELECT
    tpbuz_nm
  FROM
    `May_market`
  UNION ALL
  SELECT
    tpbuz_nm
  FROM
    `June_market`
  UNION ALL
  SELECT
    tpbuz_nm
  FROM
    `July_market`
  UNION ALL
  SELECT
    tpbuz_nm
  FROM
    `August_market`
  UNION ALL
  SELECT
    tpbuz_nm
  FROM
    `October_market`
  UNION ALL
  SELECT
    tpbuz_nm
  FROM
    `November_market`
  UNION ALL
  SELECT
    tpbuz_nm
  FROM
    `December_market`)


GROUP BY 1
ORDER BY 2 DESC
LIMIT 10