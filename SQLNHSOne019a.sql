---------------------------------------------------------------------
-- SQLNHSOne019a.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Using Alaises to give columns more meaningful names
---------------------------------------------------------------------

SELECT TOP (1000) [Column 0] AS [GMC Number]
     -- ,[Column 1]
      ,[Column 2] AS [Surname]
      ,[Column 3] AS [Initial]
      ,[Column 4] AS [Sex]
      ,[Column 5] AS [Main Specialty]
      ,[Column 6] AS [Type]
      ,[Column 7] AS [Organisation Code]
      FROM [NHSSQL].[dbo].[econcur]
