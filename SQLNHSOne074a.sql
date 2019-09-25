---------------------------------------------------------------------
-- SQLNHSOne074a.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Using SELECT TOP(5) to view sample handlful of records
---------------------------------------------------------------------

SELECT TOP (5) [Group]
      ,[Code]
      ,[Description]
FROM [NHSSQL].[dbo].[tlkpSpecialties]
