
USE Loans;
GO

CREATE SCHEMA warehouse

DROP TABLE warehouse.client

CREATE TABLE warehouse.client(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ownsCar] [bit] NOT NULL,
	[ownsBike] [bit] NOT NULL,
	[activeLoan] [bit] NOT NULL,
	[ownsHouse] [bit] NOT NULL,
	[childrenCount] INT NOT NULL,
	[education] VARCHAR(500) NOT NULL,
	[maritalStatus] VARCHAR(100) NOT NULL,
	[gender] VARCHAR(100) NOT NULL,
	[age] INT NOT NULL,
	[employedDays] INT NOT NULL,
	[registrationDays]  INT NOT NULL,
	[identificationDays] INT NOT NULL,
	[familityMember] INT NOT NULL,
	[cityRating] INT NOT NULL,
	[socialCircleDefault] BIT NOT NULL,
	[houseage] INT NOT NULL,
	[housingType] VARCHAR(100) NOT NULL,
	[creditBureauEnquiry] INT NOT NULL,
	[creditScore1] INT NOT NULL,
	[creditScore2] INT NOT NULL,
	[creditScore3] INT NOT NULL,
	[income_id] INT,
	[loandApplication_id] INT ,
	)