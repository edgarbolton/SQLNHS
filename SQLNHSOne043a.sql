---------------------------------------------------------------------
-- SQLNHSOne043a.sql
---------------------------------------------------------------------
-- SQL code from  'SQL NHS Part One'  © 2019 edgarbolton@outlook.com
---------------------------------------------------------------------
-- Author: E.Bolton
-- Last updated: 31/08/2019 
---------------------------------------------------------------------
-- Inserting 92 rows of data into a table
---------------------------------------------------------------------
INSERT INTO [dbo].[tlkpSpecialties]
([Group], [Code], [Description])
VALUES
('Surgical','100','General Surgery'),
('Surgical','101','Urology'),
('Surgical','110','Trauma & Orthopaedics'),
('Surgical','120','Ent'),
('Surgical','130','Ophthalmology'),
('Surgical','140','Oral Surgery'),
('Surgical','141','Restorative Dentistry'),
('Surgical','142','Paediatric Dentistry'),
('Surgical','143','Orthodontics'),
('Surgical','145','Oral & Maxillo Facial Surgery'),
('Surgical','146','Endodontics'),
('Surgical','147','Periodontics'),
('Surgical','148','Prosthodontics'),
('Surgical','149','Surgical Dentistry'),
('Surgical','150','Neurosurgery'),
('Surgical','160','Plastic Surgery'),
('Surgical','170','Cardiothoracic Surgery'),
('Surgical','171','Paediatric Surgery'),
('Surgical','180','Accident & Emergency'),
('Surgical','191 ','Pain Management (Retired 1 April 2004) '),
('Medical','190','Anaesthetics'),
('Medical','192','Critical Care Medicine'),
('Medical','300','General Medicine'),
('Medical','301','Gastroenterology'),
('Medical','302','Endocrinology'),
('Medical','303','Clinical Haematology'),
('Medical','304','Clinical Physiology'),
('Medical','305','Clinical Pharmacology'),
('Medical','310','Audiological Medicine'),
('Medical','311','Clinical Genetics'),
('Medical','312 ','Clinical Cytogenetics And Molecular Genetics (Retired 1 April 2010) '),
('Medical','313','Clinical Immunology And Allergy'),
('Medical','314','Rehabilitation'),
('Medical','315','Palliative Medicine'),
('Medical','320','Cardiology'),
('Medical','321','Paediatric Cardiology'),
('Medical','325','Sport And Exercise Medicine'),
('Medical','326','Acute Internal Medicine'),
('Medical','330','Dermatology'),
('Medical','340','Respiratory Medicine (Also Known As Thoracic Medicine)'),
('Medical','350','Infectious Diseases'),
('Medical','352','Tropical Medicine'),
('Medical','360','Genitourinary Medicine'),
('Medical','361','Nephrology'),
('Medical','370','Medical Oncology'),
('Medical','371','Nuclear Medicine'),
('Medical','400','Neurology'),
('Medical','401','Clinical Neuro-Physiology'),
('Medical','410','Rheumatology'),
('Medical','420','Paediatrics'),
('Medical','421','Paediatric Neurology'),
('Medical','430','Geriatric Medicine'),
('Medical','450','Dental Medicine Specialties'),
('Medical','451','Special Care Dentistry'),
('Medical','460','Medical Ophthalmology'),
('Medical','500','Obstetrics And Gynaecology'),
('Medical','501','Obstetrics'),
('Medical','502','Gynaecology'),
('Medical','504','Community Sexual And Reproductive Health'),
('Medical','510','Antenatal Clinic (Retired 1 April 2004)  '),
('Medical','520','Postnatal Clinic (Retired 1 April 2004)  '),
('Medical','560','Midwife Episode'),
('Medical','600','General Medical Practice'),
('Medical','601','General Dental Practice'),
('Medical','610','Maternity Function (Retired 1 April 2004) '),
('Medical','620','Other Than Maternity (Retired 1 April 2004)  '),
('Psychiatry','700','Learning Disability'),
('Psychiatry','710','Adult Mental Illness'),
('Psychiatry','711','Child And Adolescent Psychiatry'),
('Psychiatry','712','Forensic Psychiatry'),
('Psychiatry','713','Psychotherapy'),
('Psychiatry','715','Old Age Psychiatry'),
('Radiology ','800','Clinical Oncology (Previously Radiotherapy)'),
('Radiology ','810','Radiology'),
('Pathology ','820','General Pathology'),
('Pathology ','821','Blood Transfusion'),
('Pathology ','822','Chemical Pathology'),
('Pathology ','823','Haematology'),
('Pathology ','824','Histopathology'),
('Pathology ','830','Immunopathology'),
('Pathology ','831','Medical Microbiology And Virology'),
('Pathology ','832','Neuropathology (Retired 1 April 2004) '),
('Pathology ','833','Medical Microbiology (Also Known As Microbiology And Bacteriology)'),
('Pathology ','834','Medical Virology'),
('Other ','900','Community Medicine'),
('Other ','901','Occupational Medicine'),
('Other ','902','Community Health Services Dental'),
('Other ','903','Public Health Medicine'),
('Other ','904','Public Health Dental'),
('Other ','950','Nursing Episode'),
('Other ','960','Allied Health Professional Episode'),
('Other ','990','Joint Consultant Clinics (Retired 1 April 2004) ')

