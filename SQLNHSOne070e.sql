---------------------------------------------------------------------
-- SQLNHSOne070e.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Filtering using a subquery
---------------------------------------------------------------------

SELECT *
FROM
  (SELECT [Main Specialty], count(*) AS [HowMany]
  FROM [NHSSQL].[dbo].[vw_econcur]
  GROUP BY [Main Specialty]
  ) as [subquery]
WHERE  [HowMany] >= 10


