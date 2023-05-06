###########################################################################
# ALTHOR : Maxswell Diniz												   #
# Profissional : Técnico em informática									   #
# Data: 06/05/2023														   #
#																		   #
# Projeto: DBA InnoBayte informática									   #
# Sistema de Cadastro de Cliente e Ordem de Serviço de Assistência Técnica #
# Versão 1.0															   #
#																		   #
###########################################################################

-- CRIANDO O BANCO DE DADOS

CREATE DATABASE INNOBAYTE;
USE INNOBAYTE;

/* 01 - INSERINDO A TABELA CLIENTE */

CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,

	NOME_COMPLETO VARCHAR(100) NOT NULL,
	CPF VARCHAR(20) UNIQUE,
	EMAIL VARCHAR(50) UNIQUE,
	-- INSERINDO ABAIXO A DATA DE CADASTRO DE FORMA AUTOMÁTICA
	DATA_CADASTRO DATETIME DEFAULT CURRENT_TIMESTAMP

);



-- 01 INSERINDO O PRIMEIRO CADASTRO DO CLIENTE PARA TESTE.

INSERT INTO CLIENTE (NOME_COMPLETO,CPF,EMAIL) VALUES('Maxswell Sousa Diniz','15069366793','maxswellsousadiniz@yahoo.com');
INSERT INTO CLIENTE (NOME_COMPLETO,CPF,EMAIL) VALUES('Diniz Sousa ','917382465','maxswellsousadiniz@yahoo.com');
INSERT INTO CLIENTE (NOME_COMPLETO,CPF,EMAIL) VALUES('Marta Fernandez ','13219673458','Marta@email');

-- 01 INSERINDO O UPDATE DE CADASTRO DO CLIENTE PARA TESTE.

UPDATE CLIENTE SET EMAIL ='max@email.com'
WHERE IDCLIENTE =1;

-- 01 REALIZANDO TESTE DE DELETE DE DADOS DO CLIENTE
SELECT * FROM CLIENTE WHERE IDCLIENTE =6;


DELETE FROM CLIENTE
WHERE CPF = '13219673458' AND IDCLIENTE =6;



#////////////////////////////////////////////////////////////           //////////////////////////////////////////////  //////////////////////////////////////////

/* 02 - CRIANDO A TABELA ENDEREÇO*/

CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,

	RUA VARCHAR (100) NOT NULL,
	BAIRRO VARCHAR (50) NOT NULL,
	CIDADE VARCHAR (50) NOT NULL,
	ESTADO CHAR(2) NOT NULL

	);







#////////////////////////////////////////////////////////////           //////////////////////////////////////////////  //////////////////////////////////////////

/* 03 - REALIZANDO A TABELA DE TELEFONE*/

CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM ('RESIDENCIAL', 'COMERCIAL','CELULAR') NOT NULL,
	NUMERO VARCHAR(20) NOT NULL



);


/* PRÓXIMA TAREFA REALIZAR A LIGAÇÃO DAS TABELAS COM CHAVE ESTRANGEIRA E A PROJEÇÃO INNER JOIN*/
