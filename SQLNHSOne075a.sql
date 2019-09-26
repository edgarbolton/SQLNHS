---------------------------------------------------------------------
-- SQLNHSOne075a.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Grouped by Specialty Group, highest volume first
---------------------------------------------------------------------

SELECT *, ISNULL([Female],0) + ISNULL([Male],0) AS [Total]

FROM 
    (SELECT [Gender], [Specialty Group], count(*) AS [HowMany]
		FROM [NHSSQL].[dbo].[vw_econcur]
		GROUP BY [Gender], [Specialty Group]
	) AS [source]
PIVOT
(
    SUM([HowMany])
     FOR [Gender] in([Female], [Male])
) AS [pivot]
WHERE ISNULL([Female],0) + ISNULL([Male],0) >=10
ORDER BY [Total] DESC

