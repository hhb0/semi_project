###시장 종류 수는 총 168개 있음 
###물품은 40개정도 

#SELECT tmkt_nm
#FROM `project-388305.market_data.April_market`
#GROUP BY tmkt_nm;


### 시장별 업종 인기도 ex) 감만시장에서 제과점에서 453건 구매되었다.   
-- SELECT tpbuz_nm, COUNT(tpbuz_nm), tmkt_nm
-- FROM `project-388305.market_data.May_market`
-- GROUP BY tpbuz_nm, tmkt_nm;



### 감전시장일때 업종별 안기도 
#SELECT tpbuz_nm, COUNT(tpbuz_nm), tmkt_nm
#FROM `project-388305.market_data.April_market`
#WHERE tmkt_nm = "감전시장"
#GROUP BY tpbuz_nm, tmkt_nm;

### 업종 인기 TOP10   
SELECT tpbuz_nm, COUNT(tpbuz_nm)
FROM `project-388305.market_data.May_market`
GROUP BY tpbuz_nm
ORDER BY 2 DESC
LIMIT 10;
