CREATE DATABASE ProjetoTI;
USE ProjetoTI;

-- Tabela de cadastro para a empresa;
CREATE TABLE usuario(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40) NOT NULL,
cpf CHAR(11) UNIQUE NOT NULL,
cnpj CHAR(14),
email VARCHAR(40) UNIQUE NOT NULL,
telefone CHAR(11),
empresa VARCHAR(40)
);

-- Tabela para os sensores
CREATE TABLE sensor(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
corredor CHAR(2),
status_Sensor VARCHAR(20),
CONSTRAINT ch_status CHECK (status_Sensor = 'EM MANUTENÇÃO' OR status_Sensor = 'ATIVO' OR status_Sensor = 'INATIVO'),
data_Instalacao DATETIME,
data_Manuntencao DATE
);

-- Tabela para a movimentação
CREATE TABLE movimencao(
idMovimencao INT PRIMARY KEY AUTO_INCREMENT,
corredor INT,
idSensor INT,
dataMovimencao DATETIME);


CREATE TABLE fluxo(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
corredor INT,
qtdMovimento INT NOT NULL);

INSERT INTO usuario(nome, cpf, cnpj, email, telefone, empresa) VALUES
('','','','','',''); 