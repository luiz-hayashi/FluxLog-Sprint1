CREATE DATABASE ProjetoTI1;
USE ProjetoTI1;


CREATE TABLE usuario3(
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    email VARCHAR(45) UNIQUE NOT NULL,
    telefone CHAR(11),
    senha VARCHAR(45) NOT NULL,
    cnpj CHAR(14) NOT NULL
);


CREATE TABLE sensor3(
    idSensor INT PRIMARY KEY AUTO_INCREMENT,
    corredor CHAR(2),
    statusSensor VARCHAR(20),
    CONSTRAINT chStatus CHECK (
        statusSensor = 'ATIVO'
        OR statusSensor = 'INATIVO'
        OR statusSensor = 'EM MANUTENÇÃO'
    ),
    dataInstalacao DATETIME
);


CREATE TABLE fluxoMovimento(
    idFluxo INT PRIMARY KEY AUTO_INCREMENT,
    idSensor INT NOT NULL,
    qtdMovimento INT NOT NULL,
    dataRegistro DATETIME
);


INSERT INTO usuario3(nome, email, telefone, senha, cnpj) VALUES
('Pedro Silva', 'pedro@empresa.com', '11987654321', '1234', '12345678000101'),
('Lucas Santos', 'lucas@empresa.com', '11987654322', '1234', '12345678000101'),
('Amanda Souza', 'amanda@empresa.com', '11987654323', '1234', '12345678000101'),
('Carlos Oliveira', 'carlos@empresa.com', '11987654324', '1234', '12345678000101'),
('Mariana Costa', 'mariana@empresa.com', '11987654325', '1234', '12345678000101'),
('Rafael Almeida', 'rafael@empresa.com', '11987654326', '1234', '12345678000101');


INSERT INTO sensor3(corredor, statusSensor, dataInstalacao) VALUES
('A', 'ATIVO', NOW()),
('A', 'ATIVO', NOW()),
('B', 'ATIVO', NOW()),
('B', 'EM MANUTENÇÃO', NOW()),
('C', 'ATIVO', NOW()),
('C', 'INATIVO', NOW()),
('D', 'ATIVO', NOW()),
('D', 'ATIVO', NOW());


INSERT INTO fluxoMovimento(idSensor, qtdMovimento, dataRegistro) VALUES
(1, 45, NOW()),
(2, 32, NOW()),
(3, 78, NOW()),
(4, 12, NOW()),
(5, 65, NOW()),
(6, 8, NOW()),
(7, 91, NOW()),
(8, 54, NOW());


SELECT * FROM usuario3;

SELECT * FROM sensor3;

SELECT * FROM fluxoMovimento;

