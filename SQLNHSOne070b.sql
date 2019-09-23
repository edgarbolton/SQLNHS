---------------------------------------------------------------------
-- SQLNHSOne070b.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Two abortive attempts to filter by volume
---------------------------------------------------------------------
-- This code contains deliberate errors
---------------------------------------------------------------------
SELECT [Main Specialty], count(*) AS [HowMany]
FROM [NHSSQL].[dbo].[vw_econcur]
WHERE [HowMany] >= 10
GROUP BY [Main Specialty]


SELECT [Main Specialty], count(*) AS [HowMany]
FROM [NHSSQL].[dbo].[vw_econcur]
WHERE count(*) >= 10
GROUP BY [Main Specialty]
