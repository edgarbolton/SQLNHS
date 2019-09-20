---------------------------------------------------------------------
-- SQLNHSOne065a.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Basic PIVOT
---------------------------------------------------------------------

SELECT *
FROM 
    (SELECT [Gender],  count(*) AS [HowMany]
		FROM [NHSSQL].[dbo].[vw_econcur]
		GROUP BY [Gender]
	) AS [source]
PIVOT
(
    SUM([HowMany])
     FOR [Gender] in([Female], [Male])
) AS [pivot]
