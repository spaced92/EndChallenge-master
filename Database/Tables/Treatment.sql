﻿CREATE TABLE [dbo].[Treatment]
(
	[TreatmentID] INT NOT NULL,
	[PetName] CHAR(20) NOT NULL,
	[OwnerID] INT NOT NULL,
	[ProcedureID] INT NOT NULL,
	[Date] DATE NOT NULL,
	[Notes] CHAR(100) NOT NULL,
	[Price] MONEY NOT NULL
	CONSTRAINT [PK_TREATMENT] PRIMARY KEY ([TreatmentID]),
	CONSTRAINT [FK_TREATMENTOWNER] FOREIGN KEY ([OwnerID]) REFERENCES [Owner] ([OwnerID]),
	CONSTRAINT [FK_TREATMENTPROCEDURE] FOREIGN KEY ([ProcedureID]) REFERENCES [Procedure] ([ProcedureID])
)

