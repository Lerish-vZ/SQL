ALTER TABLE meat_poultry_egg_inspect ADD COLUMN meat_processing boolean;

UPDATE meat_poultry_egg_inspect
SET meat_processing = true
WHERE activities ILIKE '%Meat Processing%';

ALTER TABLE meat_poultry_egg_inspect ADD COLUMN poultry_processing boolean;

UPDATE meat_poultry_egg_inspect
SET poultry_processing = true
WHERE activities ILIKE '%Poultry Processing%';

-- SELECT company, 
--  	   meat_processing, 
-- 	   count(*) AS total_meat,
-- 	   poultry_processing,
-- 	   count(*) AS total_poultry
-- FROM meat_poultry_egg_inspect
-- GROUP BY company, meat_processing, poultry_processing
-- ORDER BY company;
