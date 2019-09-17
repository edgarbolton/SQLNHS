---------------------------------------------------------------------
-- SQLNHSOne058c.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  � 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- COUNT() with column alias and WHERE clause
-- How many consultants are male?
-----------------------------------------------------------------------

SELECT count(*) AS [HowMany]
FROM [NHSSQL].[dbo].[vw_econcur]
WHERE [Gender]='Male'




