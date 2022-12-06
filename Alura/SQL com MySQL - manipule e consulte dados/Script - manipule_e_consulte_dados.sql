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

-- inserindo dados em uma tabela

insert into tb_produto (
	ID_PRODUTO,
    NOME,
    EMBALAGEM,
    TAMANHO,
    SABOR,
    PRECO_LISTA
) 
values (
	'1040107', 
    'Light - 350 ml - Melância',
	'Lata',
    '350 ml',
    'Melância',
    4.56
);

insert into tb_vendedores (
	MATRICULA,
    NOME,
    PERCENTUAL_COMISSAO
) 
values (
	'00233',
    'João Geraldo da Fonseca',
    0.10
);

insert into tb_produto (
ID_PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) values (
'1037797', 'Clean - 2 Litros - Laranja',
'PET', '2 Litros', 'Laranja', 16.01);
insert into tb_produto (
ID_PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) values (
'1000889', 'Sabor da Montanha - 700 ml - Uva',
'Garrafa', '700 ml', 'Uva', 6.31);
insert into tb_produto (
ID_PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) values (
'1004327', 'Videira do Campo - 1,5 Litros - Melância',
'PET', '1,5 Litros', 'Melância', 19.51);

-- Para visualizar os dados que foram adicionados

select * from tb_produto;

