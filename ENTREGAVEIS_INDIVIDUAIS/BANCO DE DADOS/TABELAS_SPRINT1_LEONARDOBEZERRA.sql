USE sprint1;

-- Tabela destinada à armazenar informações osbre os usuários
CREATE TABLE usuario (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
email VARCHAR(45) UNIQUE NOT NULL,
cpf CHAR(11) UNIQUE NOT NULL,
telefone CHAR(11),
empresa VARCHAR(45)
);

INSERT INTO usuario VALUES 
(DEFAULT, 'Carlos Viana', 'carlos@email.com', '40998734501', '11940028988', 'Carrefour'),
(DEFAULT, 'Aline Jarros', 'jarrosa@email.com', '54367823409', '11987654290', 'Carrefour'),
(DEFAULT, 'Monique Reis', 'monique@email.com', '89076578923', '11980073267', 'Assai'),
(DEFAULT, 'Angelo Pereira', 'angelo#email.com', '56723444902', '11943561234', 'St Marche');

DESC usuario;
SELECT * FROM usuario;

-- Tabela destinada à guardar informações tecnicas sobre os sensores
CREATE TABLE sensor (
idSensor INT PRIMARY KEY AUTO_INCREMENT,
setor VARCHAR(3) NOT NULL,
corredor VARCHAR(3) NOT NULL,
dataInstalacao DATETIME NOT NULL,
dataManutencao DATETIME
);

INSERT INTO sensor (setor, corredor, dataInstalacao) VALUES 
('A', '1', '2026-09-01 09:30:04'),
('A', '1', '2026-09-01 09:32:08'),
('B', '3', '2026-09-01 09:35:54'),
('B', '3', '2026-09-01 09:38:00'),
('C', '5', '2026-09-01 09:43:54'),
('C', '5', '2026-09-01 09:47:54');

DESC sensor;
SELECT * FROM sensor;

-- Tabela destinada à armazenar as ativações do sensor (quando ele é ativado)
CREATE TABLE movimentacao (
idMovimentacao INT PRIMARY KEY AUTO_INCREMENT,
idSensor INT NOT NULL,
momento DATETIME
);

INSERT INTO movimentacao VALUES 
(DEFAULT, 1, '2026-09-01 09:30:04'),
(DEFAULT, 2, '2026-09-01 09:32:08'),
(DEFAULT, 3, '2026-09-01 09:35:54'),
(DEFAULT, 4, '2026-09-01 09:38:00'),
(DEFAULT, 5, '2026-09-01 09:43:54'),
(DEFAULT, 6, '2026-09-01 09:47:54');