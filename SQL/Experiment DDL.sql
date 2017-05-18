USE master
GO

DROP DATABASE SQL_Experiment
GO

CREATE DATABASE SQL_Experiment
GO

USE SQL_Experiment
GO

CREATE TABLE Users (
	id				INT				IDENTITY	PRIMARY KEY,
	voornaam		VARCHAR(255)	NOT NULL,
	tussenvoegsel	VARCHAR(255)	NULL,
	achternaam		VARCHAR(255)	NOT NULL,
	username		VARCHAR(255)	NOT NULL,
)
GO

CREATE TABLE Wallet (
	id				INT				NOT NULL	FOREIGN KEY REFERENCES Users(id),
	saldo			INT				NOT NULL

	CONSTRAINT PK_idSaldo	PRIMARY KEY(id, saldo)
)
GO