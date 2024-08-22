USE Healthcare_Data_Analysis
GO



CREATE PROCEDURE dbo.sp_load_hospital_outpatient
AS
MERGE dbo.Hospital_Outpatient AS Target
USING dbo.Hospital_Outpatient_stg AS Source
ON Target.Visit_Date = Source.Visit_Date
   AND Target.Patient_ID = Source.Patient_ID
   AND Target.Age = Source.Age
WHEN MATCHED THEN
    UPDATE SET
        Target.Gender = Source.Gender,
        Target.Diagnosis = Source.Diagnosis,
        Target.Has_Insurance = Source.Has_Insurance,
        Target.Postcode = Source.Postcode,
        Target.Total_Cost = Source.Total_Cost,
        Target.Registration = Source.Registration,
        Target.Nursing = Source.Nursing,
        Target.Laboratory = Source.Laboratory,
        Target.Consultation = Source.Consultation,
        Target.Pharmacy = Source.Pharmacy,
        Target.LoadDt = Source.LoadDt,
        Target.IsDeleted = 0 
WHEN NOT MATCHED BY TARGET THEN
    INSERT (
        Visit_Date,
        Patient_ID,
        Age,
        Gender,
        Diagnosis,
        Has_Insurance,
        Postcode,
        Total_Cost,
        Registration,
        Nursing,
        Laboratory,
        Consultation,
        Pharmacy,
        LoadDt,
        IsDeleted
    )
    VALUES (
        Source.Visit_Date,
        Source.Patient_ID,
        Source.Age,
        Source.Gender,
        Source.Diagnosis,
        Source.Has_Insurance,
        Source.Postcode,
        Source.Total_Cost,
        Source.Registration,
        Source.Nursing,
        Source.Laboratory,
        Source.Consultation,
        Source.Pharmacy,
        Source.LoadDt,
        0 
    )
WHEN NOT MATCHED BY SOURCE 
    AND Target.IsDeleted = 0 
THEN
    UPDATE SET Target.IsDeleted = 1; 



GO


