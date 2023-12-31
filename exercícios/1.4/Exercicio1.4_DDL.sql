CREATE DATABASE Exercicio1_4

USE Exercicio1_4

CREATE TABLE Artistas(
	IDArtista INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL

)

CREATE TABLE Albuns(
	IDAlbum INT PRIMARY KEY IDENTITY,
	IDArtista INT FOREIGN KEY REFERENCES Artistas(IDArtista) NOT NULL,

	Titulo VARCHAR(50) NOT NULL,
	DataLancamento DATE NOT NULL,
	Localizacao VARCHAR(255) NOT NULL,
	QTDMin VARCHAR(5) NOT NULL,
	Ativo BIT NOT NULL

)

CREATE TABLE GenerosMSC(
	IDGenero INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL
)

CREATE TABLE EstilosMSC(
	IDAlbum INT FOREIGN KEY REFERENCES Albuns(IDAlbum) NOT NULL,
	IDGenero INT FOREIGN KEY REFERENCES GenerosMSC(IDGenero) NOT NULL
)

CREATE TABLE Usuarios(
	IDUsuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	Email VARCHAR(255) NOT NULL,
	Senha CHAR(60) NOT NULL,
	Permissao BIT NOT NULL
)





