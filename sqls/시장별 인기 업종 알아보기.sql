### 업종 인기 TOP10   
SELECT tpbuz_nm, COUNT(tpbuz_nm)
FROM `May_market`
GROUP BY tpbuz_nm
ORDER BY 2 DESC
LIMIT 10;
