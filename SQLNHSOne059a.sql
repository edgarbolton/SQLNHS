---------------------------------------------------------------------
-- SQLNHSOne059a.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- COUNT() with column alias and very specific WHERE clause
-- How many consultants are female radiologists from one trust?
-----------------------------------------------------------------------

SELECT count(*) AS [HowMany]
FROM [NHSSQL].[dbo].[vw_econcur]
WHERE [Gender]='Female'
AND [Main Specialty]='810  Radiology'
AND [Trust]='THE ROBERT JONES AND AGNES HUNT ORTHOPAEDIC HOSPITAL NHS FOUNDATION TRUST' 





