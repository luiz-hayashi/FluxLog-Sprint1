CREATE DATABASE sprint1;
USE sprint1;

-- Tabela para armazenar as informações dos usuários
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

DESC usuario;

-- Tabela para armazenar as informações técnicas sobre o sensor
CREATE TABLE sensor(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
setor INT NOT NULL, 
statusSensor VARCHAR(20) NOT NULL,
CONSTRAINT chStatus CHECK (statusSensor = 'EM MANUTENÇÃO' OR statusSensor = 'ATIVO' OR statusSensor = 'INATIVO'),
dataInstalação DATE NOT NULL,
dataManutenção DATETIME
);
DESC sensor;

-- Tabela para armazenar o histórico de atividade dos sensores
CREATE TABLE movimentacao(
idMovimento INT PRIMARY KEY AUTO_INCREMENT,
momento DATETIME,
idSensor INT NOT NULL,
setor INT NOT NULL
);
DESC movimentacao;

-- Tabela com fim de filtrar os dados do histório
CREATE TABLE fluxo_movimentacao(
idSensor INT PRIMARY KEY,
setor INT NOT NULL,
qtdMovimento INT
);
DESC fluxo_movimentacao;

INSERT INTO usuario (cpf, cnpj, nome, email, senha, empresa) VALUES
('94845203491', '04687280000109', 'Roberto Alvez', 'roberto@empresa.com', '12344356', 'Assai'),
('49382720367', '04687280000109', 'Carla Nunes', 'carla@empresa.com', '38562234', 'Pão de Açúcar'),
('39095372810', '35635824000112', 'Geraldo Pera', 'geraldo@empresa.com', '40028922', 'Atacadão'),
('39482372810', '35635824000112', 'Fernando Silva', 'fernando@empresa.com', '46778940', 'Carrefour')
;

INSERT INTO sensor (idSensor, setor, statusSensor, dataInstalação) VALUES
(DEFAULT, 1, 'ATIVO', CURRENT_DATE),
(DEFAULT, 1, 'ATIVO', CURRENT_DATE),
(DEFAULT, 2, 'ATIVO', CURRENT_DATE),
(DEFAULT, 2, 'INATIVO', CURRENT_DATE),
(DEFAULT, 3, 'ATIVO', CURRENT_DATE),
(DEFAULT, 3, 'INATIVO', CURRENT_DATE);

INSERT INTO movimentacao (momento, idSensor, setor) VALUES
(NOW(), 2, 1),
(NOW(), 5, 3),
(NOW(), 3, 2),
(NOW(), 1, 1),
(NOW(), 5, 3),
(NOW(), 2, 1);

INSERT INTO fluxo_movimentacao (idSensor, qtdMovimento, setor) VALUES
(3, 1, 2),
(1, 1, 1),
(5, 2, 3),
(2, 2, 1);




