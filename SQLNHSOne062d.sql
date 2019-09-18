---------------------------------------------------------------------
-- SQLNHSOne062d.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  � 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Using SUM with CASE to count femaile and male consultants 
---------------------------------------------------------------------

SELECT  SUM([Is Female]) AS [HowManyFemale], SUM([Is Male]) AS [HowManyMale]
FROM
(SELECT 
(CASE WHEN [Gender]='Female' THEN 1 ELSE 0 END) as [Is Female],
(CASE WHEN [Gender]='Male' THEN 1 ELSE 0 END) as [Is Male],
*
FROM [NHSSQL].[dbo].[vw_econcur]) as [subquery]







