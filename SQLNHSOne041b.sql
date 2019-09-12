---------------------------------------------------------------------
-- SQLNHSOne041b.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Adding multiple records to a table
---------------------------------------------------------------------
INSERT INTO [dbo].[tlkpSpecialties]
([Group], [Code], [Description])
VALUES
('Surgical','100','General Surgery'),
('Surgical','101','Urology'),
('Surgical','110','Trauma & Orthopaedics'),

--and so on until the last row which has no final comma

('Other ','950','Nursing Episode'),
('Other ','960','Allied Health Professional Episode'),
('Other ','990 ','Joint Consultant Clinics (Retired 1 April 2004) ')

