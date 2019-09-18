---------------------------------------------------------------------
-- SQLNHSOne059i.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- What are the 5 least frequent specialties 
---------------------------------------------------------------------

SELECT TOP(5) [Main Specialty], COUNT(*) AS [HowMany]
FROM [NHSSQL].[dbo].[vw_econcur]
GROUP BY [Main Specialty]
ORDER BY [HowMany] DESC






