CREATE DATABASE ProjetoTI;
USE ProjetoTI;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
cpf CHAR(11) UNIQUE NOT NULL,
cnpj CHAR(14),
nome VARCHAR(45) NOT NULL,
email VARCHAR(45) UNIQUE NOT NULL,
telefone CHAR(9),
senha VARCHAR(45) NOT NULL,
empresa VARCHAR(45)
);

CREATE TABLE sensor(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
corredor CHAR(2),
statusSensor VARCHAR(20),
CONSTRAINT chStatus CHECK (statusSensor = 'EM MANUTENÇÃO' OR statusSensor = 'ATIVO' OR statusSensor = 'INATIVO'),
dataInstalação DATETIME
);

CREATE TABLE movimento(
idMovimento INT PRIMARY KEY AUTO_INCREMENT,
idSensor INT,
dataMovimento DATETIME);

CREATE TABLE fluxoMovimento(
idFluxo INT PRIMARY KEY AUTO_INCREMENT,
idSensor INT NOT NULL,
qtdMovimento INT NOT NULL);

INSERT INTO usuario(cpf, cnpj, nome, email, senha, empresa) VALUES
('94839203491', '04687280000109', 'Roberto Alvez', 'roberto@empresa.com', 'aoWe39wR##', 'Pão de Açúcar'),
('49382720394', '04687280000109', 'Carla Nunes', 'carla@empresa.com', 'reoJRI3E1!@MDss', 'Pão de Açúcar'),
('39485372810', '35635824000112', 'Geraldo Pera', 'geraldo@empresa.com', 'o239&0wwrKOWEA@', 'Shopee'),
('48579304958', '35635824000112', 'Amanda Andrade', 'amanda@empresa.com','1234', 'Shopee')
;

INSERT INTO sensor VALUES
(DEFAULT, 'A', 'ATIVO', NOW()),
(DEFAULT, 'A', 'ATIVO', NOW()),
(DEFAULT, 'B', 'ATIVO', NOW()),
(DEFAULT, 'B', 'EM MANUTENÇÃO', NOW()),
(DEFAULT, 'C', 'EM MANUTENÇÃO', NOW()),
(DEFAULT, 'C', 'INATIVO', NOW())
;

INSERT INTO movimento(idSensor, dataMovimento) VALUES
(1, NOW()),
(1, NOW()),
(2, NOW()),
(3, NOW()),
(1, NOW()),
(3, NOW());

INSERT INTO fluxoMovimento(idSensor, qtdMovimento) VALUES
(1, 3),
(2, 1),
(3, 2);

SELECT * FROM fluxoMovimento