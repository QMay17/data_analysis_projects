-- RENAME TABLE housing_market_heat_index.metro_market_temp_index_uc_sfrcondo_month TO market_heat_index;

CREATE TABLE IF NOT EXISTS ave_market_heat_index AS 
SELECT 
    RegionName,
	ROUND(AVG((`2024-01-31` + `2024-02-29` + `2024-03-31` + `2024-04-30` + 
         `2024-05-31` + `2024-06-30` + `2024-07-31` + `2024-08-31` + 
         `2024-09-30` + `2024-10-31` + `2024-11-30` + `2024-12-31`) / 12), 2) AS Avg_Heat_Index_2024,
         
    ROUND(AVG((`2023-01-31` + `2023-02-28` + `2023-03-31` + `2023-04-30` + 
         `2023-05-31` + `2023-06-30` + `2023-07-31` + `2023-08-31` + 
         `2023-09-30` + `2023-10-31` + `2023-11-30` + `2023-12-31`) / 12), 2) AS Avg_Heat_Index_2023,

    ROUND(AVG((`2022-01-31` + `2022-02-28` + `2022-03-31` + `2022-04-30` + 
         `2022-05-31` + `2022-06-30` + `2022-07-31` + `2022-08-31` + 
         `2022-09-30` + `2022-10-31` + `2022-11-30` + `2022-12-31`) / 12), 2) AS Avg_Heat_Index_2022,
         
	ROUND(AVG((`2021-01-31` + `2021-02-28` + `2021-03-31` + `2021-04-30` + 
         `2021-05-31` + `2021-06-30` + `2021-07-31` + `2021-08-31` + 
         `2021-09-30` + `2021-10-31` + `2021-11-30` + `2021-12-31`) / 12), 2) AS Avg_Heat_Index_2021,

    ROUND(AVG((`2020-01-31` + `2020-02-29` + `2020-03-31` + `2020-04-30` + 
         `2020-05-31` + `2020-06-30` + `2020-07-31` + `2020-08-31` + 
         `2020-09-30` + `2020-10-31` + `2020-11-30` + `2020-12-31`) / 12), 2) AS Avg_Heat_Index_2020,

	ROUND(AVG((`2019-01-31` + `2019-02-28` + `2019-03-31` + `2019-04-30` + 
         `2019-05-31` + `2019-06-30` + `2019-07-31` + `2019-08-31` + 
         `2019-09-30` + `2019-10-31` + `2019-11-30` + `2019-12-31`) / 12), 2) AS Avg_Heat_Index_2019,

    ROUND(AVG((`2018-01-31` + `2018-02-28` + `2018-03-31` + `2018-04-30` + 
         `2018-05-31` + `2018-06-30` + `2018-07-31` + `2018-08-31` + 
         `2018-09-30` + `2018-10-31` + `2018-11-30` + `2018-12-31`) / 12), 2) AS Avg_Heat_Index_2018
       
FROM market_heat_index
GROUP BY RegionName
ORDER BY Avg_Heat_Index_2024 DESC, Avg_Heat_Index_2023 DESC, Avg_Heat_Index_2022 DESC,
Avg_Heat_Index_2021 DESC, Avg_Heat_Index_2020 DESC, Avg_Heat_Index_2019 DESC, Avg_Heat_Index_2018 DESC
;

SELECT *
FROM ave_market_heat_index;

-- Create 2018 table
CREATE TABLE IF NOT EXISTS 2018_market_heat_index AS
SELECT 
    RegionID,
    SizeRank,
    RegionName,
    RegionType,
    StateName,
    `2018-01-31` as Jan_2018,
    `2018-02-28` as Feb_2018,
    `2018-03-31` as Mar_2018,
    `2018-04-30` as Apr_2018,
    `2018-05-31` as May_2018,
    `2018-06-30` as Jun_2018,
    `2018-07-31` as Jul_2018,
    `2018-08-31` as Aug_2018,
    `2018-09-30` as Sep_2018,
    `2018-10-31` as Oct_2018,
    `2018-11-30` as Nov_2018,
    `2018-12-31` as Dec_2018
FROM market_heat_index;

-- Create 2019 table
CREATE TABLE IF NOT EXISTS 2019_market_heat_index AS
SELECT 
    RegionID,
    SizeRank,
    RegionName,
    RegionType,
    StateName,
    `2019-01-31` as Jan_2019,
    `2019-02-28` as Feb_2019,
    `2019-03-31` as Mar_2019,
    `2019-04-30` as Apr_2019,
    `2019-05-31` as May_2019,
    `2019-06-30` as Jun_2019,
    `2019-07-31` as Jul_2019,
    `2019-08-31` as Aug_2019,
    `2019-09-30` as Sep_2019,
    `2019-10-31` as Oct_2019,
    `2019-11-30` as Nov_2019,
    `2019-12-31` as Dec_2019
FROM market_heat_index;

-- Create 2020 table
CREATE TABLE IF NOT EXISTS 2020_market_heat_index AS
SELECT 
    RegionID,
    SizeRank,
    RegionName,
    RegionType,
    StateName,
    `2020-01-31` as Jan_2020,
    `2020-02-29` as Feb_2020,
    `2020-03-31` as Mar_2020,
    `2020-04-30` as Apr_2020,
    `2020-05-31` as May_2020,
    `2020-06-30` as Jun_2020,
    `2020-07-31` as Jul_2020,
    `2020-08-31` as Aug_2020,
    `2020-09-30` as Sep_2020,
    `2020-10-31` as Oct_2020,
    `2020-11-30` as Nov_2020,
    `2020-12-31` as Dec_2020
FROM market_heat_index;

-- Create 2021 table
CREATE TABLE IF NOT EXISTS 2021_market_heat_index AS
SELECT 
    RegionID,
    SizeRank,
    RegionName,
    RegionType,
    StateName,
    `2021-01-31` as Jan_2021,
    `2021-02-28` as Feb_2021,
    `2021-03-31` as Mar_2021,
    `2021-04-30` as Apr_2021,
    `2021-05-31` as May_2021,
    `2021-06-30` as Jun_2021,
    `2021-07-31` as Jul_2021,
    `2021-08-31` as Aug_2021,
    `2021-09-30` as Sep_2021,
    `2021-10-31` as Oct_2021,
    `2021-11-30` as Nov_2021,
    `2021-12-31` as Dec_2021
FROM market_heat_index;

-- Create 2022 table
CREATE TABLE IF NOT EXISTS 2022_market_heat_index AS
SELECT 
    RegionID,
    SizeRank,
    RegionName,
    RegionType,
    StateName,
    `2022-01-31` as Jan_2022,
    `2022-02-28` as Feb_2022,
    `2022-03-31` as Mar_2022,
    `2022-04-30` as Apr_2022,
    `2022-05-31` as May_2022,
    `2022-06-30` as Jun_2022,
    `2022-07-31` as Jul_2022,
    `2022-08-31` as Aug_2022,
    `2022-09-30` as Sep_2022,
    `2022-10-31` as Oct_2022,
    `2022-11-30` as Nov_2022,
    `2022-12-31` as Dec_2022
FROM market_heat_index;

-- Create 2023 table
CREATE TABLE IF NOT EXISTS 2023_market_heat_index AS
SELECT 
    RegionID,
    SizeRank,
    RegionName,
    RegionType,
    StateName,
    `2023-01-31` as Jan_2023,
    `2023-02-28` as Feb_2023,
    `2023-03-31` as Mar_2023,
    `2023-04-30` as Apr_2023,
    `2023-05-31` as May_2023,
    `2023-06-30` as Jun_2023,
    `2023-07-31` as Jul_2023,
    `2023-08-31` as Aug_2023,
    `2023-09-30` as Sep_2023,
    `2023-10-31` as Oct_2023,
    `2023-11-30` as Nov_2023,
    `2023-12-31` as Dec_2023
FROM market_heat_index;

-- Create 2024 table
CREATE TABLE IF NOT EXISTS 2024_market_heat_index AS
SELECT 
    RegionID,
    SizeRank,
    RegionName,
    RegionType,
    StateName,
    `2024-01-31` as Jan_2024,
    `2024-02-29` as Feb_2024,
    `2024-03-31` as Mar_2024,
    `2024-04-30` as Apr_2024,
    `2024-05-31` as May_2024,
    `2024-06-30` as Jun_2024,
    `2024-07-31` as Jul_2024,
    `2024-08-31` as Aug_2024,
    `2024-09-30` as Sep_2024,
    `2024-10-31` as Oct_2024,
    `2024-11-30` as Nov_2024,
    `2024-12-31` as Dec_2024
FROM market_heat_index;

-- Create 2018 table
CREATE TABLE IF NOT EXISTS 2018_market_heat_index AS
SELECT 
    RegionID,
    SizeRank,
    RegionName,
    RegionType,
    StateName,
    `2018-01-31` as Jan_2018,
    `2018-02-28` as Feb_2018,
    `2018-03-31` as Mar_2018,
    `2018-04-30` as Apr_2018,
    `2018-05-31` as May_2018,
    `2018-06-30` as Jun_2018,
    `2018-07-31` as Jul_2018,
    `2018-08-31` as Aug_2018,
    `2018-09-30` as Sep_2018,
    `2018-10-31` as Oct_2018,
    `2018-11-30` as Nov_2018,
    `2018-12-31` as Dec_2018
FROM market_heat_index;

-- Create 2019 table
CREATE TABLE IF NOT EXISTS 2019_market_heat_index AS
SELECT 
    RegionID,
    SizeRank,
    RegionName,
    RegionType,
    StateName,
    `2019-01-31` as Jan_2019,
    `2019-02-28` as Feb_2019,
    `2019-03-31` as Mar_2019,
    `2019-04-30` as Apr_2019,
    `2019-05-31` as May_2019,
    `2019-06-30` as Jun_2019,
    `2019-07-31` as Jul_2019,
    `2019-08-31` as Aug_2019,
    `2019-09-30` as Sep_2019,
    `2019-10-31` as Oct_2019,
    `2019-11-30` as Nov_2019,
    `2019-12-31` as Dec_2019
FROM market_heat_index;

-- Create 2020 table
CREATE TABLE IF NOT EXISTS 2020_market_heat_index AS
SELECT 
    RegionID,
    SizeRank,
    RegionName,
    RegionType,
    StateName,
    `2020-01-31` as Jan_2020,
    `2020-02-29` as Feb_2020,
    `2020-03-31` as Mar_2020,
    `2020-04-30` as Apr_2020,
    `2020-05-31` as May_2020,
    `2020-06-30` as Jun_2020,
    `2020-07-31` as Jul_2020,
    `2020-08-31` as Aug_2020,
    `2020-09-30` as Sep_2020,
    `2020-10-31` as Oct_2020,
    `2020-11-30` as Nov_2020,
    `2020-12-31` as Dec_2020
FROM market_heat_index;

-- Create 2021 table
CREATE TABLE IF NOT EXISTS 2021_market_heat_index AS
SELECT 
    RegionID,
    SizeRank,
    RegionName,
    RegionType,
    StateName,
    `2021-01-31` as Jan_2021,
    `2021-02-28` as Feb_2021,
    `2021-03-31` as Mar_2021,
    `2021-04-30` as Apr_2021,
    `2021-05-31` as May_2021,
    `2021-06-30` as Jun_2021,
    `2021-07-31` as Jul_2021,
    `2021-08-31` as Aug_2021,
    `2021-09-30` as Sep_2021,
    `2021-10-31` as Oct_2021,
    `2021-11-30` as Nov_2021,
    `2021-12-31` as Dec_2021
FROM market_heat_index;

-- Create 2022 table
CREATE TABLE IF NOT EXISTS 2022_market_heat_index AS
SELECT 
    RegionID,
    SizeRank,
    RegionName,
    RegionType,
    StateName,
    `2022-01-31` as Jan_2022,
    `2022-02-28` as Feb_2022,
    `2022-03-31` as Mar_2022,
    `2022-04-30` as Apr_2022,
    `2022-05-31` as May_2022,
    `2022-06-30` as Jun_2022,
    `2022-07-31` as Jul_2022,
    `2022-08-31` as Aug_2022,
    `2022-09-30` as Sep_2022,
    `2022-10-31` as Oct_2022,
    `2022-11-30` as Nov_2022,
    `2022-12-31` as Dec_2022
FROM market_heat_index;

-- Create 2023 table
CREATE TABLE IF NOT EXISTS 2023_market_heat_index AS
SELECT 
    RegionID,
    SizeRank,
    RegionName,
    RegionType,
    StateName,
    `2023-01-31` as Jan_2023,
    `2023-02-28` as Feb_2023,
    `2023-03-31` as Mar_2023,
    `2023-04-30` as Apr_2023,
    `2023-05-31` as May_2023,
    `2023-06-30` as Jun_2023,
    `2023-07-31` as Jul_2023,
    `2023-08-31` as Aug_2023,
    `2023-09-30` as Sep_2023,
    `2023-10-31` as Oct_2023,
    `2023-11-30` as Nov_2023,
    `2023-12-31` as Dec_2023
FROM market_heat_index;

-- Create 2024 table
CREATE TABLE IF NOT EXISTS 2024_market_heat_index AS
SELECT 
    RegionID,
    SizeRank,
    RegionName,
    RegionType,
    StateName,
    `2024-01-31` as Jan_2024,
    `2024-02-29` as Feb_2024,
    `2024-03-31` as Mar_2024,
    `2024-04-30` as Apr_2024,
    `2024-05-31` as May_2024,
    `2024-06-30` as Jun_2024,
    `2024-07-31` as Jul_2024,
    `2024-08-31` as Aug_2024,
    `2024-09-30` as Sep_2024,
    `2024-10-31` as Oct_2024,
    `2024-11-30` as Nov_2024,
    `2024-12-31` as Dec_2024
FROM market_heat_index;


