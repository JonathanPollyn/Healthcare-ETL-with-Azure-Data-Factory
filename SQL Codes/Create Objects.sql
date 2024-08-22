CREATE DATABASE Healthcare_Data_Analysis
GO

USE Healthcare_Data_Analysis
GO

-- CREATE GENERIC MEDICATION TABLE
IF OBJECT_ID('dbo.generic_medication_names_stg', 'U') IS NOT NULL
DROP TABLE dbo.generic_medication_names_stg;
CREATE TABLE dbo.generic_medication_names_stg(
	ID int NOT NULL,
	Medication_Name varchar(1000) NULL,
	LoadDt date NOT NULL
)
GO

IF OBJECT_ID('dbo.generic_medication_names', 'U') IS NOT NULL
DROP TABLE dbo.generic_medication_names;
CREATE TABLE dbo.generic_medication_names(
	ID int NOT NULL,
	Medication_Name varchar(1000) NULL,
	IsDeleted bit NOT NULL,
	LoadDt date NOT NULL,
PRIMARY KEY CLUSTERED 
(
	ID ASC
))
GO

ALTER TABLE dbo.generic_medication_names ADD  DEFAULT ((0)) FOR IsDeleted
GO

-- CREATE OUTPATIENT DATA
IF OBJECT_ID('dbo.Hospital_Outpatient_stg', 'U') IS NOT NULL
DROP TABLE dbo.Hospital_Outpatient_stg
CREATE TABLE dbo.Hospital_Outpatient_stg(
	Visit_Date date NOT NULL,
	Patient_ID int NOT NULL,
	Age int NOT NULL,
	Gender varchar(10) NULL,
	Diagnosis varchar(255) NULL,
	Has_Insurance varchar(10) NULL,
	Postcode varchar(50) NULL,
	Total_Cost decimal(10, 2) NULL,
	Registration decimal(10, 2) NULL,
	Nursing decimal(10, 2) NULL,
	Laboratory decimal(10, 2) NULL,
	Consultation decimal(10, 2) NULL,
	Pharmacy decimal(10, 2) NULL,
	LoadDt date NOT NULL
) 
GO


IF OBJECT_ID('dbo.Hospital_Outpatient', 'U') IS NOT NULL
DROP TABLE dbo.Hospital_Outpatient
CREATE TABLE dbo.Hospital_Outpatient(
	Visit_Date date NOT NULL,
	Patient_ID int NOT NULL,
	Age int NOT NULL,
	Gender varchar(10) NULL,
	Diagnosis varchar(255) NULL,
	Has_Insurance varchar(10) NULL,
	Postcode varchar(50) NULL,
	Total_Cost decimal(10, 2) NULL,
	Registration decimal(10, 2) NULL,
	Nursing decimal(10, 2) NULL,
	Laboratory decimal(10, 2) NULL,
	Consultation decimal(10, 2) NULL,
	Pharmacy decimal(10, 2) NULL,
	LoadDt date NOT NULL,
	IsDeleted bit NOT NULL,
PRIMARY KEY CLUSTERED 
(
	Visit_Date ASC,
	Patient_ID ASC,
	Age ASC
))
GO

ALTER TABLE dbo.Hospital_Outpatient ADD  DEFAULT ((0)) FOR IsDeleted
GO

