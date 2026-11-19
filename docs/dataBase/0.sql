CREATE TABLE Aluno (
id_aluno SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
sobrenome VARCHAR(100) NOT NULL, 
email VARCHAR(100) UNIQUE,
status_aluno VARCHAR(20) NOT NULL
DEFAULT 'ATIVO' CHECK (status_aluno IN ('ATIVO', 'INATIVO'))
);


INSERT INTO Aluno (nome, sobrenome, email, status_aluno)
VALUES
('Ana', 'Souza', 'ana@email.com', 'ATIVO'),
('Bruno', 'Lima', 'bruno@email.com', 'ATIVO'),
('Carla', 'Mendes', 'carla@email.com', 'INATIVO');