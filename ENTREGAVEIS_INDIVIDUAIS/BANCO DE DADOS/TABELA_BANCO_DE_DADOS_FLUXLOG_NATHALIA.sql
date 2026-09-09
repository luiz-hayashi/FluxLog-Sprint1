USE SPRINT1;




-- Tabela para gestores e colaboradores da empresa realizarem o cadastro para obter acesso a plataforma.
CREATE TABLE USUARIO(
ID_USUARIO INT AUTO_INCREMENT PRIMARY KEY,
CPF CHAR(11) UNIQUE NOT NULL,
CNPJ CHAR(14),
NOME VARCHAR(50) NOT NULL,
EMAIL VARCHAR (45) UNIQUE NOT NULL,
TELEFONE CHAR(11)UNIQUE NOT NULL,
SENHA VARCHAR (55) NOT NULL
);

-- Tabela de controle sobre os sensores, para possiveis manutenções.
CREATE TABLE SENSOR(
ID_SENSOR INT AUTO_INCREMENT PRIMARY KEY,
SENSOR VARCHAR(5),
CORREDOR VARCHAR(5),
STATUS_SENSOR VARCHAR(20),
CONSTRAINT CHSTATUS CHECK(STATUS_SENSOR = 'ATIVO' OR STATUS_SENSOR = 'INATIVO'),
DATA_INSTALAÇÃO DATE,
DATA_MANUTENÇÃO DATETIME
);

-- Registrar o fluxo de movimentação por sensor e corredor para fins de monitoramento de segurança, identificação dos locais de maior circulação ao longo do dia e cálculo do horário médio de pico.
CREATE TABLE MOVIMENTAÇÃO(
ID_MOVIMENTACAO INT AUTO_INCREMENT PRIMARY KEY,
CORREDOR VARCHAR(5),
SENSOR VARCHAR(5),
HORARIO TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela para registrar a quantidade de movimentação que teve, de qual sensor e corredor, para o cliente conseguir interpretar de qual localização do seu estoque está vindo as movimentações.
CREATE TABLE QTD_MOVIMENTO(
ID_MOVIMENTO INT AUTO_INCREMENT PRIMARY KEY,
SENSOR VARCHAR(5),
CORREDOR VARCHAR(5),
QTD_MOVIMENTO INT
);