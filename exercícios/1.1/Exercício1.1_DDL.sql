CREATE DATABASE Exercicio1_1

USE Exercicio1_1;

CREATE TABLE Pessoas(

	PessoaID INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(100) NOT NULL,
	CNH VARCHAR(11) NOT NULL

)

CREATE TABLE Telefones(

	TelefoneID INT PRIMARY KEY IDENTITY,
	Telefone VARCHAR(30) NOT NULL,
	PessoaID INT FOREIGN KEY REFERENCES Pessoas(PessoaID) NOT NULL

)

CREATE TABLE Emails(

	EmailID INT PRIMARY KEY IDENTITY,
	Email VARCHAR(100) NOT NULL,
	PessoaID INT FOREIGN KEY REFERENCES Pessoas(PessoaID) NOT NULL

)