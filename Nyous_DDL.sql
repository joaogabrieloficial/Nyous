CREATE DATABASE Nyous;

USE Nyous;

CREATE TABLE Acesso(
  IdAcesso INT PRIMARY KEY IDENTITY NOT NULL,
  Tipo VARCHAR(50) NOT NULL
);

CREATE TABLE Categoria(
   IdCategoria INT PRIMARY KEY IDENTITY NOT NULL,
   Titulo VARCHAR(50) NOT NULL
);

CREATE TABLE Localizacao(
   IdLocalizacao INT PRIMARY KEY IDENTITY NOT NULL,
   Logradouro VARCHAR(50) NOT NULL,
   Numero VARCHAR(50),
   Complemento VARCHAR(50),
   Bairro VARCHAR(50),
   Cidade VARCHAR(50),
   UF CHAR(2),
   CEP VARCHAR(10)
);

CREATE  TABLE Usuario (
	IdUsuario INT  PRIMARY  KEY IDENTITY NOT  NULL ,
	Nome VARCHAR ( 100 ) NOT  NULL ,
	Email VARCHAR ( 80 ) NOT  NULL ,
	Senha VARCHAR ( 100 ) NOT  NULL ,
	DataNascimento DATETIME ,
	
	
	IdAcesso INT  FOREIGN KEY  REFERENCES Acesso (IdAcesso)
);

CREATE TABLE Evento (
  IdEvento INT PRIMARY KEY IDENTITY NOT NULL,
  DataEvento DATETIME NOT NULL,
  AcessoRestrito BINARY DEFAULT 0,
  Capacidade INT NOT NULL,
  Descricao VARCHAR (255),

  IdLocalizacao INT FOREIGN KEY REFERENCES Localizacao (IdLocalizacao),
  IdCategoria INT FOREIGN KEY REFERENCES Categoria (IdCategoria)
);

CREATE TABLE Convite (
  IdConvite INT PRIMARY KEY IDENTITY NOT NULL,
  Confirmado BIT DEFAULT NULL,

  IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento),
  IdUsuarioEmissor INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
  IdUsuarioConvidado INT FOREIGN KEY REFERENCES Usuario(IdUsuario)
);

CREATE TABLE Presenca(
  IdPresenca INT PRIMARY KEY IDENTITY NOT NULL,
  Confrimado BIT DEFAULT NULL,

  IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento),
  IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
);

