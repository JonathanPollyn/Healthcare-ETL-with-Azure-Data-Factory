USE Healthcare_Data_Analysis
GO
CREATE view dbo.vw_medication_Name_Class
/*
On the view, I performed data cleaning to clean up the medication column to extract the medication name and class into two different columns. 
Steps on how this was achieved are shown below
*/
AS
SELECT ID
      ,Medication_Name AS Medication_Class_Name,
	  CHARINDEX('-', Medication_Name) AS DashPosition,
       CASE 
           WHEN CHARINDEX('-', Medication_Name) > 0 
           THEN SUBSTRING(Medication_Name, 1, CHARINDEX('-', Medication_Name) - 1)
           ELSE Medication_Name 
       END AS Medication_Name,
	   SUBSTRING(Medication_Name,CHARINDEX('-', Medication_Name)+1, LEN(Medication_Name)) AS Medcation_class
  FROM dbo.generic_medication_names


