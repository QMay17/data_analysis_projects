-- Data Cleaning

SELECT * 
FROM world_layoffs.layoffs;

-- 1. Remove Duplicates
-- 2. Standardize the Data
-- 3. Null Values or Blank Values
-- 4. Remove rows and columns that are unnecessary

/*
CREATE TABLE IF NOT EXISTS world_layoffs.layoffs_staging
LIKE world_layoffs.layoffs;

SELECT * 
FROM world_layoffs.layoffs_staging;

INSERT INTO world_layoffs.layoffs_staging
SELECT * FROM world_layoffs.layoffs;
*/ 

-- Removing Duplicates
WITH duplicate_cte AS
(
	SELECT *,
	ROW_NUMBER() OVER(
	PARTITION BY company, location, industry, total_laid_off, 
    percentage_laid_off, `date`, stage, country, funds_raised_millions) AS row_num
	FROM world_layoffs.layoffs_staging
)
SELECT *
FROM duplicate_cte 
WHERE row_num > 1;
