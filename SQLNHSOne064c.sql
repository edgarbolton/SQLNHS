---------------------------------------------------------------------
-- SQLNHSOne064c.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Calculating percentages
---------------------------------------------------------------------

SELECT [HowManyFemale],
 [HowManyMale],
 [HowManyTotal],
 (CAST([HowManyFemale] AS FLOAT)/ CAST([HowManyTotal] AS FLOAT)) AS [PercentageFemale],
 (CAST([HowManyMale] AS FLOAT)/ CAST([HowManyTotal] AS FLOAT)) AS [PercentageMale]
FROM
(SELECT  SUM([Is Female]) AS [HowManyFemale], SUM([Is Male]) AS [HowManyMale], COUNT(*)  AS [HowManyTotal]
FROM
(SELECT 
(CASE WHEN [Gender]='Female' THEN 1 ELSE 0 END) as [Is Female],
(CASE WHEN [Gender]='Male' THEN 1 ELSE 0 END) as [Is Male],
*
FROM [NHSSQL].[dbo].[vw_econcur]) as [subquery])
AS [Subquery2]
