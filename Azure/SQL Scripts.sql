IF OBJECT_ID('dbo.Hospital_Outpatient', 'U') IS NOT NULL
DROP TABLE dbo.Hospital_Outpatient
CREATE TABLE dbo.Hospital_Outpatient
(
ID INT IDENTITY(1,1) NOT NULL,
VisitDate DATE NULL,
PatientID INT NULL,
Age INT NULL,
Gender VARCHAR(10) NULL,
Diagnosis VARCHAR(255) NULL,
HasInsurance VARCHAR(20) NULL ,
Postcode VARCHAR(20) NULL,
TotalCost DECIMAL(10, 2),
Registration INT NULL,
Nursing INT NULL,
Laboratory INT NULL,
Consultation INT NULL,
Pharmacy INT NULL,
LoadDt Date DEFAULT NULL
)
GO

-- CREATE OUTPATIENT DATA
IF OBJECT_ID('dbo.Hospital_Inpatient_cost', 'U') IS NOT NULL
DROP TABLE dbo.Hospital_Inpatient_cost
CREATE TABLE dbo.Hospital_Inpatient_cost
(
    Year INT NOT NULL,
    FacilityId INT NOT NULL,
    FacilityName VARCHAR(255) NULL,
    APR_DRG_Code VARCHAR(50) NULL,
    APR_Severity_of_Illness_Code VARCHAR(50) NULL,
    APR_DRG_Description VARCHAR(255) NULL,
    APR_Severity_of_Illness_Description VARCHAR(255) NULL,
    APR_Medical_Surgical_Code VARCHAR(50) NULL,
    APR_Medical_Surgical_Description VARCHAR(255) NULL,
    Discharges VARCHAR(50) NULL,
    Mean_Charge VARCHAR(50) NULL,
    Median_Charge VARCHAR(50) NULL,
    Mean_Cost VARCHAR(50) NULL,
    Median_Cost VARCHAR(50) NULL,
	LoadDt Date DEFAULT NULL
)
GO


-- CREATE OUTPATIENT DATA
IF OBJECT_ID('dbo.Pharmacy_Sales', 'U') IS NOT NULL
DROP TABLE dbo.Pharmacy_Sales
CREATE TABLE dbo.Pharmacy_Sales
(
ID INT IDENTITY(1,1) NOT NULL,
DateSold DATE NULL,
MedicationName VARCHAR(255) NULL,
MedicationClass VARCHAR(150) NULL,
QuantitySold VARCHAR(50) NULL,
Price DECIMAL(10, 4) NULL,
LoadDt Date DEFAULT NULL
)
GO



-- CREATE Albany_Memorial_Hospital DATA
IF OBJECT_ID('dbo.Albany_Memorial_Hospital', 'U') IS NOT NULL
DROP TABLE dbo.Albany_Memorial_Hospital
CREATE TABLE dbo.Albany_Memorial_Hospital
(
    Year INT NOT NULL,
    FacilityId INT NOT NULL,
    FacilityName VARCHAR(255) NULL,
    APR_DRG_Code VARCHAR(50) NULL,
    APR_Severity_of_Illness_Code VARCHAR(50) NULL,
    APR_DRG_Description VARCHAR(255) NULL,
    APR_Severity_of_Illness_Description VARCHAR(255) NULL,
    APR_Medical_Surgical_Code VARCHAR(50) NULL,
    APR_Medical_Surgical_Description VARCHAR(255) NULL,
    Discharges VARCHAR(50) NULL,
    Mean_Charge VARCHAR(50) NULL,
    Median_Charge VARCHAR(50) NULL,
    Mean_Cost VARCHAR(50) NULL,
    Median_Cost VARCHAR(50) NULL,
	LoadDt Date DEFAULT NULL
)
GO

-- CREATE Alice_Hyde_Medical_Center DATA
IF OBJECT_ID('dbo.Alice_Hyde_Medical_Center', 'U') IS NOT NULL
DROP TABLE dbo.Alice_Hyde_Medical_Center
CREATE TABLE dbo.Alice_Hyde_Medical_Center
(
    Year INT NOT NULL,
    FacilityId INT NOT NULL,
    FacilityName VARCHAR(255) NULL,
    APR_DRG_Code VARCHAR(50) NULL,
    APR_Severity_of_Illness_Code VARCHAR(50) NULL,
    APR_DRG_Description VARCHAR(255) NULL,
    APR_Severity_of_Illness_Description VARCHAR(255) NULL,
    APR_Medical_Surgical_Code VARCHAR(50) NULL,
    APR_Medical_Surgical_Description VARCHAR(255) NULL,
    Discharges VARCHAR(50) NULL,
    Mean_Charge VARCHAR(50) NULL,
    Median_Charge VARCHAR(50) NULL,
    Mean_Cost VARCHAR(50) NULL,
    Median_Cost VARCHAR(50) NULL,
	LoadDt Date DEFAULT NULL
)
GO

-- CREATE Adirondack_Medical_Center_Saranac_Lake_Site DATA
IF OBJECT_ID('dbo.Adirondack_Medical_Center_Saranac_Lake_Site', 'U') IS NOT NULL
DROP TABLE dbo.Adirondack_Medical_Center_Saranac_Lake_Site
CREATE TABLE dbo.Adirondack_Medical_Center_Saranac_Lake_Site
(
    Year INT NOT NULL,
    FacilityId INT NOT NULL,
    FacilityName VARCHAR(255) NULL,
    APR_DRG_Code VARCHAR(50) NULL,
    APR_Severity_of_Illness_Code VARCHAR(50) NULL,
    APR_DRG_Description VARCHAR(255) NULL,
    APR_Severity_of_Illness_Description VARCHAR(255) NULL,
    APR_Medical_Surgical_Code VARCHAR(50) NULL,
    APR_Medical_Surgical_Description VARCHAR(255) NULL,
    Discharges VARCHAR(50) NULL,
    Mean_Charge VARCHAR(50) NULL,
    Median_Charge VARCHAR(50) NULL,
    Mean_Cost VARCHAR(50) NULL,
    Median_Cost VARCHAR(50) NULL,
	LoadDt Date DEFAULT NULL
)
GO

SELECT *
FROM dbo.Albany_Memorial_Hospital