USE healthcareDB
GO

--=================== Create Metadata Table
IF OBJECT_ID('dbo.FileMetadata', 'U') IS NOT NULL
DROP TABLE dbo.FileMetadata

CREATE TABLE dbo.FileMetadata(
	FileName varchar(100) NULL,
	ModifiedAt datetime NULL,
	UpdatedAt datetime NULL
)
GO


CREATE PROC dbo.InsertFileMetadata
				(@FileName varchar(100), @ModifiedAt DateTime, @UpdatedAt datetime)
AS
INSERT INTO dbo.FileMetadata (FileName, ModifiedAt, UpdatedAt)
VALUES (@FileName, @ModifiedAt, @UpdatedAt)

--===================== Create Activity Log
IF OBJECT_ID('dbo.PipelineLog', 'U') IS NOT NULL
DROP TABLE dbo.PipelineLog

CREATE TABLE dbo.PipelineLog(
	PipelineID varchar(100) NULL,
	RunID varchar(100) NULL,
	Status varchar(100) NULL,
	UpdatedAt datetime NULL
)
GO

CREATE PROC dbo.InsertPipelineLog
				(@PipelineID varchar(100), @RunID varchar(100),
                 @Status varchar(100),
                 @UpdatedAt datetime)
AS
INSERT INTO dbo.PipelineLog (PipelineID, RunID, Status, UpdatedAt)
VALUES (@PipelineID, @RunID, @Status, @UpdatedAt)

--===================== Create Email Recipients Table
IF OBJECT_ID('dbo.EmailRecipient', 'U') IS NOT NULL
DROP TABLE dbo.EmailRecipient

CREATE TABLE dbo.EmailRecipient(
	FirstName varchar(100) NULL,
	LastName varchar(100) NULL,
	EmailAddress varchar(100) NULL
)

INSERT INTO dbo.EmailRecipient(FirstName, LastName, EmailAddress)
VALUES (<First-Name>, <Last-Name>, <Email-Address>);