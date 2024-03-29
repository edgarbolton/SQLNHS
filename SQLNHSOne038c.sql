---------------------------------------------------------------------
-- SQLNHSOne038c.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  � 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- JOINing two tables - explicit table names
---------------------------------------------------------------------
SELECT TOP(100)
[econcur].[Column 2] AS [Surname], 
[econcur].[Column 3] AS [Initial],
--[econcur].[Column 4] AS [Sex],
CASE
    WHEN [econcur].[Column 4] = 'M' THEN 'Male'
    WHEN [econcur].[Column 4] = 'F' THEN 'Female'
    ELSE 'Uncertain'
END AS [Gender],
[econcur].[Column 0] AS [GMC Number],
[econcur].[Column 5] AS [Main Specialty],
--[econcur].[Column 7] AS [Organisation Code],
[etr].[column2] AS [Trust]

FROM [NHSSQL].[dbo].[econcur]
JOIN [NHSSQL].[dbo].[etr]
ON [NHSSQL].[dbo].[econcur].[Column 7]=[NHSSQL].[dbo].[etr].[column1]

ORDER BY [Surname]
