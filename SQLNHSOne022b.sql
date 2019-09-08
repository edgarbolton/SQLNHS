---------------------------------------------------------------------
-- SQLNHSOne022b.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
---------------------------------------------------------------------
-- WARNING: this code contains a delibrate error
---------------------------------------------------------------------
-- Trying to use WHERE on a column alias
---------------------------------------------------------------------
SELECT 
	[Column 2] AS [Surname], 
	[Column 3] AS [Initial],
	[Column 4] AS [Sex],
	[Column 0] AS [GMC Number],
	[Column 5] AS [Main Specialty],
	[Column 7] AS [Organisation Code]
FROM [NHSSQL].[dbo].[econcur]
WHERE [Organisation Code]='RYJ' -- using alias rather than column name !
ORDER BY [Organisation Code], [Surname]

 
