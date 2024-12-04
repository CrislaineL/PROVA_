DROP DATABASE IF EXISTS vitoriakar;
CREATE DATABASE IF NOT EXISTS vitoriakar;
USE vitoriakar;

CREATE TABLE clientes(
    cliente_id int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    cpf varchar(11) NOT NULL UNIQUE,
    email varchar(255) NOT NULL UNIQUE,
    endereco varchar(255) NOT NULL,
    data_nascimento date NOT NULL,
    data_cadastro date NOT NULL   
);

CREATE TABLE professor(
    professor_id int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    cpf varchar(11) NOT NULL UNIQUE,
    email varchar(255) NOT NULL UNIQUE,
    endereco varchar(255) NOT NULL,
    data_nascimento date NOT NULL,
    data_cadastro date NOT NULL   
);

CREATE TABLE telefone (
    telefone_id int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cliente_id int(10),
    professor_id int(10),
    numero varchar(20) NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (professor_id) REFERENCES professor(professor_id)
);

CREATE TABLE veiculos (
    veiculos_id int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    marca_veiculo VARCHAR(252) NOT NULL,
    modelo_veiculo VARCHAR(252) NOT NULL,
    ano_veiculo date NOT NULL,
    fabricacao_veiculo date NOT NULL,
    cliente_id int(10) NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id));

INSERT INTO clientes (nome, cpf, email, endereco, data_nascimento, data_cadastro) 
VALUES 
(1,1, 'Flavia', '789456123', 'Flavia.bh@email.com', 'Rua D, 456, bairro jjdjdhd', '1999-04-10', '2024-12-04'),
(2,2, 'Cris Leopoldo', '55574575785', 'cris.leopoldo@email.com', 'Rua fuleira, 464, Bairro Seu Ze', '1975-12-12', '2024-12-04');

INSERT INTO professor (nome, cpf, email, endereco, data_nascimento, data_cadastro) 
VALUES 
(1,1,' Flavia', '789456123', 'Flavia.bh@email.com', 'Rua D, 456, bairro jjdjdhd', '1999-04-10', '2024-12-04'),
(2,2, 'Cris Leopoldo', '55574575785', 'cris.leopoldo@email.com', 'Rua fuleira, 464, Bairro Seu Ze', '1975-12-12', '2024-12-04');

INSERT INTO telefone ( numero cliente_id, professor_id, ) 
VALUES 
( '544552744' ,1),
( '4544454557',2);

INSERT INTO veiculos (marca_veiculo, modelo_veiculo, ano_veiculo, fabricacao_veiculo, cliente_id) 
VALUES 
(1,1,'BMW', 'M3 Coupé', '2005-01-01', '2005-03-10', 1 ),
(2,2,'BMW', 'M4', '2014-06-15', '2014-07-01', 2 );


