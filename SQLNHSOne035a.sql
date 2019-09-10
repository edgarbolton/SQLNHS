---------------------------------------------------------------------
-- SQLNHSOne035a.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Use of CASE statement - excerpt
---------------------------------------------------------------------

CASE
    WHEN [Column 7] = 'R1A' THEN 'WORCESTERSHIRE HEALTH AND CARE NHS TRUST'
    WHEN [Column 7] = 'R1C' THEN 'SOLENT NHS TRUST'
    WHEN [Column 7] = 'R1D' THEN 'SHROPSHIRE COMMUNITY HEALTH NHS TRUST'

 --and so on for the remaining 236 trusts

    ELSE 'Uncertain'
END 
