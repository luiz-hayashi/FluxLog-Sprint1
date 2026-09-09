CREATE DATABASE sprint1;
USE sprint1;

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
corredor TINYINT,
statusSensor VARCHAR(20),
CONSTRAINT chStatus CHECK (statusSensor = 'EM MANUTENÇÃO' OR statusSensor = 'ATIVO' OR statusSensor = 'INATIVO'),
dataInstalação DATE,
dataManutenção DATETIME
);

CREATE TABLE movimentacao(
idMovimento INT PRIMARY KEY AUTO_INCREMENT,
momento DATETIME,
sensor VARCHAR(45),
setor INT
);

CREATE TABLE fluxo_movimentacao(
idFluxo INT PRIMARY KEY AUTO_INCREMENT,
idSensor INT,
qtdMovimento INT
);

INSERT INTO usuario (cpf, cnpj, nome, email, senha, empresa) VALUES
('94845203491', '04687280000109', 'Roberto Alvez', 'roberto@empresa.com', '12344356', 'Assai'),
('49382720367', '04687280000109', 'Carla Nunes', 'carla@empresa.com', '38562234', 'Pão de Açúcar'),
('39095372810', '35635824000112', 'Geraldo Pera', 'geraldo@empresa.com', '40028922', 'Atacadão'),
('39482372810', '35635824000112', 'Fernando Silva', 'fernando@empresa.com', '46778940', 'Carrefour')
;

INSERT INTO sensor (idSensor, corredor, statusSensor, dataInstalação) VALUES
(DEFAULT, 1, 'ATIVO', CURRENT_DATE),
(DEFAULT, 1, 'ATIVO', CURRENT_DATE),
(DEFAULT, 2, 'ATIVO', CURRENT_DATE),
(DEFAULT, 2, 'INATIVO', CURRENT_DATE),
(DEFAULT, 3, 'ATIVO', CURRENT_DATE),
(DEFAULT, 3, 'INATIVO', CURRENT_DATE);

INSERT INTO movimentacao (momento, sensor, setor) VALUES
(NOW(), 1, 2),
(NOW(), 2, 1),
(NOW(), 2, 3),
(NOW(), 1, 2),
(NOW(), 2, 1);

SELECT * FROM movimentacao WHERE sensor = 6;

INSERT INTO fluxo_movimentacao (idSensor, qtdMovimento) VALUES
(1, 2),
(2, 3),
(3, 0),
(4, 0),
(5, 0),
(6, 0);




