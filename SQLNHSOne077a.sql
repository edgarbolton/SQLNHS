---------------------------------------------------------------------
-- SQLNHSOne077a.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Ranked percentage within a Specialty Group
---------------------------------------------------------------------
SELECT [Main Specialty], 
(CAST(ISNULL([Female],0) AS FLOAT))/(CAST((ISNULL([Female],0)+ISNULL([Male],0)) AS FLOAT)) as [PercentageFemale]
--(CAST([Female] AS FLOAT))/(CAST(([Female]+[Male]) AS FLOAT)) as [PercentageFemale]
FROM 
    (SELECT [Gender], [Main Specialty], count(*) AS [HowMany]
		FROM [NHSSQL].[dbo].[vw_econcur]
		 WHERE [Specialty Group]='Surgical'
		GROUP BY [Gender], [Main Specialty]
	) AS [source]
PIVOT
(
    SUM([HowMany])
     FOR [Gender] in([Female], [Male])
) AS [pivot]
WHERE ISNULL([Female],0) + ISNULL([Male],0) >=10
ORDER BY [PercentageFemale] DESC

