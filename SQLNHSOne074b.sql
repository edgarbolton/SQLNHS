---------------------------------------------------------------------
-- SQLNHSOne074b.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- ALTER VIEW
---------------------------------------------------------------------

USE [NHSSQL]
GO

/****** Object:  View [dbo].[vw_econcur]    Script Date: 25/06/2019 06:12:02 ******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_econcur]
AS
SELECT 
[Column 2] AS [Surname], 
[Column 3] AS [Initial],
[Column 4] AS [Sex],

CASE
    WHEN [Column 4] = 'M' THEN 'Male'
    WHEN [Column 4] = 'F' THEN 'Female'
    ELSE 'Uncertain'
END AS [Gender],

[Column 0] AS [GMC Number],
[Column 5] +'  '+ [tlkpSpecialties].[Description]  AS [Main Specialty],
[tlkpSpecialties].[Group]  AS [Specialty Group],
 --[Column 7] AS [Organisation],
[etr].[column2] AS [Trust]

FROM [NHSSQL].[dbo].[econcur]
LEFT JOIN [NHSSQL].[dbo].[etr]
ON [NHSSQL].[dbo].[econcur].[Column 7]=[NHSSQL].[dbo].[etr].[column1]

JOIN [dbo].[tlkpSpecialties]
ON [econcur].[Column 5]=[tlkpSpecialties].[Code] 

GO
