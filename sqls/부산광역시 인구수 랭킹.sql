
###명지동 인구수 알아보기 
#SELECT gu_gun, dong, total_population, male_population, female_population 
#FROM `project-388305.market_data.gu_gun_dong_population` 
#WHERE gu_gun = "강서구";


### 명지동 인구수가 부산에서 어느정도 랭킹인지
SELECT gu_gun, 
dong, 
total_population,
DENSE_RANK() OVER(ORDER BY total_population DESC) AS ranking_t_population,
male_population, 
female_population 
FROM `gu_gun_dong_population`
