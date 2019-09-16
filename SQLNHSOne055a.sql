---------------------------------------------------------------------
-- SQLNHSOne055a.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Uses SELECT query to test a WHERE clause
-- prior to using the WHERE clause in a DELETE query 
---------------------------------------------------------------------
SELECT * FROM [NHSSQL].[dbo].[etr]
WHERE [column1] IN ('R1A','TAD','TAE', 'TAF','TAH', 'TAJ')







