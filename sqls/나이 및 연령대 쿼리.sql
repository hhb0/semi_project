ALTER TABLE `April_market` ADD COLUMN age INTEGER;
ALTER TABLE `April_market` ADD COLUMN age_group INTEGER;
UPDATE `April_market`
SET age = 
  CASE
    WHEN 2022-bth_yr > 0 THEN 2022-bth_yr
    ELSE NULL
  END
WHERE age is null;

UPDATE `April_market`
SET age_group = 
  CASE
    WHEN age < 10 THEN 0
    WHEN age >= 10 THEN CAST(TRUNC(age / 10) AS INT64)
    ELSE null
  END
WHERE age_group is null;