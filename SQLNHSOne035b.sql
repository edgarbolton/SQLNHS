---------------------------------------------------------------------
-- SQLNHSOne035b.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Use of CASE statement - excerpt - to produce groupings
---------------------------------------------------------------------

CASE
    WHEN [Column 7] = 'R1A' THEN 'Worcestershire'
    WHEN [Column 7] = 'R1C' THEN 'Other'
    WHEN [Column 7] = 'R1D' THEN 'Other'


 --and so on for the remaining 236 trusts

    ELSE 'Uncertain'
END
