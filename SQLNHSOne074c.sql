---------------------------------------------------------------------
-- SQLNHSOne074c.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- SELECT TOP (1000) 
---------------------------------------------------------------------

SELECT TOP (1000) [Surname]
      ,[Initial]
      ,[Sex]
      ,[Gender]
      ,[GMC Number]
      ,[Main Specialty]
      ,[Specialty Group]
      ,[Trust]
  FROM [NHSSQL].[dbo].[vw_econcur]
