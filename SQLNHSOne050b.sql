---------------------------------------------------------------------
-- SQLNHSOne050b.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Intended to test for unmatched rows
-- Looks for rows in the table enconcur 
-- where we cannot find a match in the table etr
-- Approach is to use NOT IN () with a subquery
---------------------------------------------------------------------
SELECT *
FROM [NHSSQL].[dbo].[econcur]
WHERE [Column 7] NOT IN
(SELECT [column1]
  FROM [NHSSQL].[dbo].[etr])





