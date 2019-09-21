---------------------------------------------------------------------
-- SQLNHSOne068a.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Ranked by percentage female consultant
---------------------------------------------------------------------

SELECT [Main Specialty], 
(CAST([Female] AS FLOAT))/(CAST(([Female]+[Male]) AS FLOAT)) as [PercentageFemale]

FROM 
    (SELECT [Gender], [Main Specialty], count(*) AS [HowMany]
		FROM [NHSSQL].[dbo].[vw_econcur]
		GROUP BY [Gender], [Main Specialty]
	) AS [source]
PIVOT
(
    SUM([HowMany])
     FOR [Gender] in([Female], [Male])
) AS [pivot]

ORDER BY [PercentageFemale] DESC


