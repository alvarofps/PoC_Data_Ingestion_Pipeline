USE Loans;

DROP TABLE IF EXISTS warehouse.loanApplication

CREATE TABLE warehouse.loanApplication(
	-- Identity column to autoincrease by 1 (seed, increment)
	[id] INT IDENTITY(1,1) NOT NULL,
	[sourceid] INT NOT NULL,
	[creditAmount] INT NOT NULL,
	[annuity] INT NOT NULL,
	[contractType] NVARCHAR(MAX) NOT NULL,
	[applicationDatetime] DATETIME NOT NULL,
	[client_id] INT NOT NULL,
	[flag_id] INT NOT NULL,
	PRIMARY KEY([id]),
	FOREIGN KEY ([flag_id]) REFERENCES warehouse.flag(id)
)
