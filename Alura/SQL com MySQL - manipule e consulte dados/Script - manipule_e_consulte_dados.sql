-- Criando o banco de Dados

create database SUCOS;

-- Apagando o Banco de Dados

drop database SUCOS;

-- Criando uma tabela
 
create table tb_clientes(
	CPF varchar(11),
	NOME varchar(100),
	ENDEREC01 varchar(150),
	ENDERECO2 varchar(150),
	BAIRRO varchar(50),
	CIDADE varchar(50),
	ESTADO varchar(50),
	CEP varchar(8),
	IDADE smallint,
	SEXO varchar(1),
	LIMITE_CREDITO float,
	VOLUME_COMPRAS float,
	PRIMEIRA_COMPRA bit(1)
);

create table tb_vendedores(
	MATRICULA varchar(5),
	NOME varchar(100),
	PERCENTUAL_COMISSAO float
);

create table TABELA_DE_VENDEDORES2 (
	MATRICULA varchar(5),
	NOME varchar(100),
    PERCENTUAL_COMISSAO float
);

-- Apagando uma tabela

drop table TABELA_DE_VENDEDORES2;

