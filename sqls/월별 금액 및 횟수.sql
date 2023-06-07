SELECT 'April_market' AS Month, SUM(ttl_trns_amt) AS total_pay, COUNT(trns_cnt) AS sale_cnt
FROM `April_market`
UNION ALL
SELECT 'May_market' AS Month, SUM(ttl_trns_amt) AS May_total_pay, COUNT(trns_cnt) AS May_sale_cnt
FROM `May_market`
UNION ALL
SELECT 'June_market' AS Month, SUM(ttl_trns_amt) AS June_total_pay, COUNT(trns_cnt) AS June_sale_cnt
FROM `June_market`
UNION ALL
SELECT 'July_market' AS Month, SUM(ttl_trns_amt) AS July_total_pay, COUNT(trns_cnt) AS July_sale_cnt
FROM `July_market`
UNION ALL
SELECT 'August_market' AS Month, SUM(ttl_trns_amt) AS August_total_pay, COUNT(trns_cnt) AS August_sale_cnt
FROM `August_market`
UNION ALL
SELECT 'September_market' AS Month, SUM(ttl_trns_amt) AS August_total_pay, COUNT(trns_cnt) AS August_sale_cnt
FROM `September_market`
UNION ALL
SELECT 'October_market' AS Month, SUM(ttl_trns_amt) AS October_total_pay, COUNT(trns_cnt) AS October_sale_cnt
FROM `October_market`
UNION ALL
SELECT 'November_market' AS Month, SUM(ttl_trns_amt) AS November_total_pay, COUNT(trns_cnt) AS November_sale_cnt
FROM `November_market`
UNION ALL
SELECT 'December_market' AS Month, SUM(ttl_trns_amt) AS December_total_pay, COUNT(trns_cnt) AS December_sale_cnt
FROM `December_market`

