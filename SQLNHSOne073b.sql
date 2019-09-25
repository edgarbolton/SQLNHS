---------------------------------------------------------------------
-- SQLNHSOne073b.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Applying volume filter to subquery type of pivot query
-- using HAVING clause
---------------------------------------------------------------------

SELECT [Main Specialty],[HowManyFemale],
 [HowManyMale],
 [HowManyTotal],
 (CAST([HowManyFemale] AS FLOAT)/ CAST([HowManyTotal] AS FLOAT)) AS [PercentageFemale],
 (CAST([HowManyMale] AS FLOAT)/ CAST([HowManyTotal] AS FLOAT)) AS [PercentageMale]
FROM
(SELECT  [Main Specialty],SUM([Is Female]) AS [HowManyFemale], SUM([Is Male]) AS [HowManyMale], COUNT(*)  AS [HowManyTotal]
FROM
(SELECT 
(CASE WHEN [Gender]='Female' THEN 1 ELSE 0 END) AS [Is Female],
(CASE WHEN [Gender]='Male' THEN 1 ELSE 0 END) AS [Is Male],
*
FROM [NHSSQL].[dbo].[vw_econcur]) AS [subquery]
GROUP BY [Main Specialty]
HAVING COUNT(*) >=10
)
AS [Subquery2]
ORDER BY [Main Specialty]
