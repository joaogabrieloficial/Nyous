INSERT INTO Acesso (Tipo) VALUES
    ('Administrador'),
	('Padrao');

INSERT INTO Categoria (Titulo) VALUES
    ('Meetup'),
	('Workshop'),
	('Feira De Tecnologia'),
	('Live');

INSERT INTO Localizacao (Logradouro,Numero,Complemento,Bairro,Cidade,UF,CEP) VALUES
    ('Alameda Barão De Limeira', 539, NULL,'Santa Cecilia', 'São Paulo', 'SP','01202-001');

INSERT INTO Usuario (Nome,Email,Senha,DataNascimento,IdAcesso) VALUES
    ('João Gabriel','Joao@senai.com.br', '1234567890', '1999-11-30T00:00:00',1);

INSERT INTO Evento (DataEvento, Capacidade,IdLocalizacao,IdCategoria) VALUES
    ('2020-09-25T22:00:00',100,1,1);
