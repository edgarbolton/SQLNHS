---------------------------------------------------------------------
-- SQLNHSOne052a.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Uses INSERT INTO with a limited number of columns
-- There are 27 columns in the target table 
-- Weonly have data for two
-- Approach is to use NOT IN () with a subquery
-- Uses SELECT DISTINCT to create a unique list
---------------------------------------------------------------------
INSERT INTO [dbo].[etr]
([column1], [column2])
VALUES
('R1A','Worcestershire Health and Care Trust'),
('TAD','Bradford District Care NHS Foundation Trust'),
('TAE','Manchester Mental Health and Social Care Trust'),
('TAF', 'Camden and Islington NHS Foundation Trust'),
('TAH','Sheffield Health & Social Care NHS Foundation Trust'),
('TAJ','Black Country Partnership NHS Foundation Trust')






