USE Loans;
GO

DROP TABLE IF EXISTS warehouse.client

CREATE TABLE warehouse.client(
	-- Identity column to autoincrease by 1 (seed, increment)
	[id] INT IDENTITY(1,1) NOT NULL,
	[ownsCar] BIT NOT NULL,
	[ownsBike] BIT NOT NULL,
	[activeLoan] BIT NOT NULL,
	[ownsHouse] BIT NOT NULL,
	[childrenCount] INT NOT NULL,
	[education] NVARCHAR(MAX) NOT NULL,
	[maritalStatus] NVARCHAR(MAX) NOT NULL,
	[gender] NVARCHAR(MAX) NOT NULL,
	[age] INT NOT NULL,
	[employedDays] INT NOT NULL,
	[registrationDays]  INT NOT NULL,
	[identificationDays] INT NOT NULL,
	[familityMember] INT NOT NULL,
	[cityRating] INT NOT NULL,
	[socialCircleDefault] BIT NOT NULL,
	[houseage] INT NOT NULL,
	[housingType] VARCHAR(MAX) NOT NULL,
	[creditBureauEnquiry] INT NOT NULL,
	[creditScore1] INT NOT NULL,
	[creditScore2] INT NOT NULL,
	[creditScore3] INT NOT NULL,
	[income_id] INT,
	[loandApplication_id] INT,
	PRIMARY KEY([id]),
	FOREIGN KEY ([income_id]) REFERENCES warehouse.income([id])
	)