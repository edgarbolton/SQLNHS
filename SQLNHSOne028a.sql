---------------------------------------------------------------------
-- SQLNHSOne028a.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Using LIKE in a WHERE clause 
---------------------------------------------------------------------
SELECT TOP(100)
[Column 2] AS [Surname], 
[Column 3] AS [Initial],
[Column 4] AS [Sex],
[Column 0] AS [GMC Number],
[Column 5] AS [Main Specialty],
[Column 7] AS [Organisation Code]
FROM [NHSSQL].[dbo].[econcur]
WHERE [Column 2] LIKE 'Abay%'
ORDER BY [Surname]



