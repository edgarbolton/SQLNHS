---------------------------------------------------------------------
-- SQLNHSOne038b.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- JOINing two tables - commenting out [Column 7]
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
--[Column 7] AS [Organisation Code],
[etr].[column2] AS [Trust]

FROM [NHSSQL].[dbo].[econcur]
JOIN [NHSSQL].[dbo].[etr]
ON [NHSSQL].[dbo].[econcur].[Column 7]=[NHSSQL].[dbo].[etr].[column1]

ORDER BY [Surname]
