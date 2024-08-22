USE [Healthcare_Data_Analysis]
GO


ALTER PROCEDURE [dbo].[sp_load_generic_Med_Names]
AS
MERGE INTO dbo.generic_medication_names AS target
USING dbo.generic_medication_names_stg AS source
ON target.ID = source.ID


WHEN MATCHED THEN 
    UPDATE SET 
        target.Medication_Name = source.Medication_Name,
        target.LoadDt = source.LoadDt,
        target.IsDeleted = 0 


WHEN NOT MATCHED BY TARGET THEN
    INSERT (ID, Medication_Name, LoadDt, IsDeleted)
    VALUES (source.ID, source.Medication_Name, source.LoadDt, 0)


WHEN NOT MATCHED BY SOURCE THEN
    UPDATE SET target.IsDeleted = 1;



GO


