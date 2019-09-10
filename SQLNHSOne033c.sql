---------------------------------------------------------------------
-- SQLNHSOne033c.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Use of CASE statement; [Column 4] commented out
---------------------------------------------------------------------

SELECT TOP(100)
[Column 2] AS [Surname], 
[Column 3] AS [Initial],
--[Column 4] AS [Sex],

CASE
    WHEN [Column 4] = 'M' THEN 'Male'
    WHEN [Column 4] = 'F' THEN 'Female'
    ELSE 'Uncertain'
END AS [Gender],

[Column 0] AS [GMC Number],
[Column 5] AS [Main Specialty],
[Column 7] AS [Organisation Code]
FROM [NHSSQL].[dbo].[econcur]
ORDER BY [Surname]

