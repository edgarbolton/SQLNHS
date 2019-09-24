---------------------------------------------------------------------
-- SQLNHSOne072c.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  � 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Trying to filter using HAVING in a PIVOT query
---------------------------------------------------------------------
-- This code contains a deliberate error
-- It runs but produces the wrong results
-- HAVING is operating on the subtotals not the Total
-- Reversed criteria to show the nature of the problem
---------------------------------------------------------------------

SELECT *, [Female]+[Male] as [Total]
FROM 
    (SELECT [Gender], [Main Specialty], count(*) AS [HowMany]
		FROM [NHSSQL].[dbo].[vw_econcur]
		GROUP BY [Gender], [Main Specialty]
		HAVING  count(*)<10
	) AS [source]
PIVOT
(
    SUM([HowMany])
     FOR [Gender] in([Female], [Male])
) AS [pivot]

ORDER BY [Main Specialty] 
 
