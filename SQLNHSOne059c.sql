---------------------------------------------------------------------
-- SQLNHSOne059c.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Using SELECT DISTINCT to obtain a list of every specialty
-- Adding COUNT(*)
---------------------------------------------------------------------
-- This code contains a deliberate error
---------------------------------------------------------------------

SELECT DISTINCT [Main Specialty], COUNT(*)
FROM [NHSSQL].[dbo].[vw_econcur] 






