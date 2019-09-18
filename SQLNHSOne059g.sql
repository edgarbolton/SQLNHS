---------------------------------------------------------------------
-- SQLNHSOne059g.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Using GROUP BY to obtain a list of every specialty
-- with COUNT() and ORDER BY in descending order
-- to identify the most frequent
---------------------------------------------------------------------

SELECT [Main Specialty], COUNT(*) AS [HowMany]
FROM [NHSSQL].[dbo].[vw_econcur]
GROUP BY [Main Specialty]
ORDER BY [HowMany] DESC






