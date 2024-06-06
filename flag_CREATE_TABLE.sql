USE Loans;

DROP TABLE IF EXISTS warehouse.flag

CREATE TABLE warehouse.flag(
	-- Identity column to autoincrease by 1 (seed, increment)
	[id] INT IDENTITY(1,1) NOT NULL,
	[mobile] BIT NOT NULL,
	[telephone] BIT NOT NULL,
	[workphone] BIT NOT NULL,
	[permanentMatch] BIT NOT NULL,
	[contactWork] BIT NOT NULL,
	[phoneChangeInDays] INT NOT NULL,
	[whoAccompaniedClient] NVARCHAR(MAX) NULL,
	PRIMARY KEY([id])
)