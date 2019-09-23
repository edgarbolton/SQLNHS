---------------------------------------------------------------------
-- SQLNHSOne070c.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Filtering using the HAVING clause
---------------------------------------------------------------------

SELECT [Main Specialty], count(*) AS [HowMany]
FROM [NHSSQL].[dbo].[vw_econcur]
GROUP BY [Main Specialty]
HAVING  count(*) >= 10

