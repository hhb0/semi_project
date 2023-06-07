-- COLUMN 추가할 때 ADD COLUMN으로 써야하고 default 값은 여기서는 사용 불가

ALTER TABLE `project-388305.market_data.April_market` ADD COLUMN age INTEGER;

ALTER TABLE `project-388305.market_data.April_market` ADD COLUMN age_group INTEGER;


-- UPDATE를 이용해서 나이 컬럼을 만들어줌
-- bth_yr = 4607, 3688 이 값들은 NULL 값으로 통일
-- WHERE절이 필수라서 age가 다 null이라서 간단한 조건 설정

UPDATE `project-388305.market_data.April_market`
SET age = 
  CASE
    WHEN 2022-bth_yr > 0 THEN 2022-bth_yr
    ELSE NULL
  END
WHERE age is null;


-- 모든 데이터에 적용하기 위해서 10세 미만은 0, 10~19세는 1,
-- 나머지는 나눗셈을 했을 때 무조건 반올림이 되는 설정이므로 TRUNC를 이용해서 소숫점 뒤는 다 버림
-- 타입 설정이 FLOAT이므로 CAST를 이용해서 INT로 변환해줌
-- WHERE절이 필수이므로 age처럼 간단한 조건 적용

UPDATE `project-388305.market_data.April_market`
SET age_group = 
  CASE
    WHEN age < 10 THEN 0
    WHEN age >= 10 THEN CAST(TRUNC(age / 10) AS INT64)
    ELSE null
  END
WHERE age_group is null;