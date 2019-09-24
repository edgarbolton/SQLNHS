---------------------------------------------------------------------
-- SQLNHSOne071b.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Filtering low volumes from a PIVOT query
-- Checking using reversed criteria
---------------------------------------------------------------------

SELECT *, [Female]+[Male] as [Total]
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
WHERE [Female]+[Male]<10
ORDER BY [Main Specialty]


