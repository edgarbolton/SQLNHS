---------------------------------------------------------------------
-- SQLNHSOne059j.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- What are the 5 most and 5 least frequent trusts?
---------------------------------------------------------------------

SELECT TOP(5) [Trust], COUNT(*) AS [HowMany]
FROM [NHSSQL].[dbo].[vw_econcur]
GROUP BY [Trust]
ORDER BY [HowMany] DESC

SELECT TOP(5) [Trust], COUNT(*) AS [HowMany]
FROM [NHSSQL].[dbo].[vw_econcur]
GROUP BY [Trust]
ORDER BY [HowMany] ASC







