DROP TABLE IF EXISTS região CASCADE;
DROP TABLE IF EXISTS estado CASCADE;
DROP TABLE IF EXISTS cidade CASCADE;

-- RESPOSTA 1
CREATE TABLE Regiao (
	id_regiao SERIAL NOT NULL PRIMARY KEY,
	nome_regiao VARCHAR (20)
 );

 INSERT INTO Regiao ( nome_regiao ) VALUES 
('Norte'),
('Sul'),
('Nordeste'),
('Sudeste'),
('Centro-Oeste');

-- RESPOSTA 2
CREATE TABLE Estado (
	id_estado SERIAL NOT NULL PRIMARY KEY,
	id_regiao INT NOT NULL, 
	nome_estado VARCHAR (50) NOT NULL,
	sigla VARCHAR (2) NOT NULL,
	FOREIGN KEY (id_regiao) REFERENCES Regiao (id_regiao)
);


INSERT INTO Estado (id_regiao, nome_estado, sigla) VALUES
(1, 'Amazonas', 'AM'),
(1, 'Para', 'PA'),
(2, 'Parana', 'PR'),
(2, 'Santa Catarina', 'SC'),
(3, 'Bahia', 'BA'),
(3, 'Ceara', 'CE'),
(4, 'Sao Paulo', 'SP'),
(4, 'Rio de Janeiro', 'RJ'),
(5, 'Goias', 'GO'),
(5, 'Mato Grosso', 'MT');


-- RESPOSTA
INSERT INTO Estado (id_regiao, nome_estado, sigla) VALUES
(1, 'Rondonia', 'RO'),
(2, 'Rio Grande do Sul', 'RS'),
(3, 'Maranhao', 'MA'),
(4, 'Minas Gerais', 'MG'),
(5, 'Mato Grosso do Sul', 'MS');

-- RESPOSTA 
CREATE TABLE Cidade (
	id_cidade SERIAL NOT NULL PRIMARY KEY,
	id_estado INT NOT NULL, 
	nome_cidade VARCHAR (50) NOT NULL, 
	cep VARCHAR (10),
	area_km DECIMAL (10,2),
	populacao INTEGER, 
	FOREIGN KEY (id_estado) REFERENCES Estado (id_estado)
);

-- INSERT INTO de 2 cidades no estado 1

INSERT INTO Cidade (id_estado, nome_cidade) VALUES
(1, 'Manaus'),
(1, 'Parintins');

-- INSERT INTO de 2 cidades no estado 2

INSERT INTO Cidade (id_estado, nome_cidade) VALUES
(2, 'Belem'),
(2, 'Santarem');

-- INSERT INTO de 2 cidades no estado 3

INSERT INTO Cidade (id_estado, nome_cidade) VALUES
(3, 'Curitiba'),
(3, 'Londrina');

-- INSERT INTO de 2 cidades no estado 4

INSERT INTO Cidade (id_estado, nome_cidade) VALUES
(4, 'Florianopolis'),
(4, 'Joinville');

-- INSERT INTO de 2 cidades no estado 5

INSERT INTO Cidade (id_estado, nome_cidade) VALUES
(5, 'Salvador'),
(5, 'Ilheus');

-- INSERT INTO de 2 cidades no estado 6

INSERT INTO Cidade (id_estado, nome_cidade) VALUES
(6, 'Fortaleza'),
(6, 'Sobral');

-- INSERT INTO de 2 cidades no estado 7

INSERT INTO Cidade (id_estado, nome_cidade) VALUES
(7, 'Sertaozinho'),
(7, 'Campinas');


INSERT INTO Cidade (id_estado, nome_cidade) VALUES
(8, 'Niteroi'),
(8, 'Petropolis');

INSERT INTO Cidade (id_estado, nome_cidade) VALUES
(9, 'Goiania'),
(9, 'Anapolis');

INSERT INTO Cidade (id_estado, nome_cidade) VALUES
(10, 'Cuiaba'),
(10, 'Sinop')

--  INSERT de 1 cidade no primeiro estado do passo 5º 

INSERT INTO Cidade (id_estado, nome_cidade) VALUES
(11, 'Porto Velho');

--  INSERT de 1 cidade no segundo estado do passo 5º 

INSERT INTO Cidade (id_estado, nome_cidade) VALUES
(12, 'Canoas');

--  INSERT de 1 cidade no terceiro estado do passo 5º 

INSERT INTO Cidade (id_estado, nome_cidade) VALUES
(13, 'Imperatriz');

--  INSERT de 1 cidade no quarto estado do passo 5º 

INSERT INTO Cidade (id_estado, nome_cidade) VALUES
(14, 'Uberlandia');

--  INSERT de 1 cidade no qquinto estado do passo 5º 

INSERT INTO Cidade (id_estado, nome_cidade) VALUES
(15, 'Dourados');


CREATE TABLE Personagem (
    id_personagem INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    nome_personagem VARCHAR(100),
    data_nascimento DATE NOT NULL
);

INSERT INTO Personagem ( cpf, nome_personagem, data_nascimento) 
	VALUES ( '32573798155', 'Homem de ferro', '1873-09-19');

	INSERT INTO Personagem (cpf, nome_personagem, data_nascimento)
VALUES
('32573798155', 'Homem de ferro', '1873-09-19');


INSERT INTO Personagem (cpf, nome_personagem, data_nascimento)
VALUES ('12345678901', 'Capitao america', '1863-06-01');

INSERT INTO Personagem (cpf, nome_personagem, data_nascimento)
VALUES ('98765432100', 'Viuva negra', '1877-01-01');


SELECT * FROM Regiao;
SELECT * FROM Estado;
SELECT * FROM Cidade;
SELECT * FROM Personagem;

