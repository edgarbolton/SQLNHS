---------------------------------------------------------------------
-- SQLNHSOne033a.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Structure of CASE statement
---------------------------------------------------------------------
--Excerpt

CASE
    WHEN [Column 4] = 'M' THEN 'Male'
    WHEN [Column 4] = 'F' THEN 'Female'
    ELSE 'Uncertain'
END 
