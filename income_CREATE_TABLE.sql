USE Loans;
GO

DROP TABLE IF EXISTS warehouse.income

CREATE TABLE warehouse.income(
	-- Identity column to autoincrease by 1 (seed, increment)
	[id] INT IDENTITY(1,1) NOT NULL,
	[type] NVARCHAR(MAX) NOT NULL,
	[amount] INT NOT NULL,
	[ocupation] NVARCHAR(MAX) NOT NULL,
	[organisationType] NVARCHAR(MAX) NOT NULL,
	PRIMARY KEY([id])
	)

