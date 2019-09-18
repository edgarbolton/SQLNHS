---------------------------------------------------------------------
-- SQLNHSOne060a.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Using GROUP BY with two levels
-----------------------------------------------------------------------

SELECT [Main Specialty], [Gender], COUNT(*) AS [HowMany]
FROM [NHSSQL].[dbo].[vw_econcur]
GROUP BY [Main Specialty], [Gender]
ORDER BY [Main Specialty], [Gender]






