
-- Criando o banco de Dados

-- create database SUCOS;
 create database sucos;

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

create table tb_produto(
	ID_PRODUTO varchar(20),
    NOME varchar(100),
    EMBALAGEM varchar(100),
    TAMANHO varchar(10),
    SABOR varchar(50),
    PRECO_LISTA float
);



create table TABELA_DE_VENDEDORES2 (
	MATRICULA varchar(5),
	NOME varchar(100),
    PERCENTUAL_COMISSAO float
);

-- Apagando uma tabela

drop table TABELA_DE_VENDEDORES2;

drop table tb_produtos;

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

insert into tb_vendedores(
	MATRICULA, NOME, PERCENTUAL_COMISSAO
) values (
	'00235','Márcio Almeida Silva',0.08
);

insert into tb_vendedores(
	MATRICULA, NOME, PERCENTUAL_COMISSAO
) values (
	'00236', 'Cláudia Morais', 0.08
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

insert into tb_vendedores(
MATRICULA, NOME, PERCENTUAL_COMISSAO
) values (
'00235', 'Márcio Almeida Silva', 0.08
);

insert into tb_vendedores
(MATRICULA, NOME, PERCENTUAL_COMISSAO)
values
('00236','Cláudia Morais',0.08);

select * from tb_vendedores;

INSERT INTO tb_produto (
ID_PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml','Limão',3.20);

INSERT INTO tb_produto (
ID_PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

-- Para atualizar informações em uma tabela

UPDATE tb_produto SET EMBALAGEM = 'Lata', PRECO_LISTA = 2.46
WHERE ID_PRODUTO = '544931';

UPDATE tb_produto SET EMBALAGEM = 'Garrafa'
WHERE ID_PRODUTO = '1078680';

select * from tb_produto;

update tb_vendedores SET PERCENTUAL_COMISSAO = 0.11
where MATRICULA = '00236';

update tb_vendedores SET NOME = 'José Geraldo da Fonseca Junior'
where MATRICULA = '00233';

select * from tb_vendedores;

-- para excluir dados da tabela, sempre quando for apagar algo utilizar o where

delete from tb_produto where ID_PRODUTO = '1078680';

select * from tb_produto;

delete from tb_vendedores where MATRICULA = '00233';

select * from tb_vendedores;

-- criando chave primária

-- alter é para alterar algo que ja existe

alter table tb_produto add primary key (ID_PRODUTO);

alter table tb_clientes add primary key(CPF);

-- utilizando data

alter table tb_clientes add column (DATA_NASCIMENTO date);

INSERT INTO tb_clientes (
CPF,  NOME,  ENDEREC01,  ENDERECO2,  BAIRRO,  CIDADE,  ESTADO,  CEP,  IDADE,  SEXO, LIMITE_CREDITO,  VOLUME_COMPRAS,  PRIMEIRA_COMPRA, 
DATA_NASCIMENTO) VALUES (
'00388934505', 'João da Silva', 'Rua projetada A número 10', '', 'Vila Roman', 'CARATINGA', 'AM', '2222222', 30, 'M', 10000.00, 2000, 0, 
'1989-10-05');

select * from tb_clientes;

-- alterando tabela vendedores

drop table tb_vendedores;

create table tb_vendedores(
MATRICULA varchar(5),
NOME varchar(100),
PERCENTUAL_COMISSAO float,
DATA_ADMISSAO date,
DE_FERIAS bit);

alter table tb_vendedores add primary key (MATRICULA);

INSERT INTO tb_vendedores
(MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO, DE_FERIAS)
VALUES
('00235','Márcio Almeida Silva','2014-08-15',0.08,0);

INSERT INTO tb_vendedores
(MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO, DE_FERIAS)
VALUES
('00236','Cláudia Morais','2013-09-17',0.08,1);

INSERT INTO tb_vendedores
(MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO, DE_FERIAS)
VALUES
('00237','Roberta Martins','2017-03-18',0.11,1);

INSERT INTO tb_vendedores
(MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO, DE_FERIAS)
VALUES
('00238','Pericles Alves','2016-08-21',0.11,0);

select * from tb_vendedores;

select NOME, MATRICULA from tb_vendedores;

SELECT * FROM tb_vendedores WHERE NOME = 'Claudia Morais';

select * from tb_vendedores where PERCENTUAL_COMISSAO > 0.10;

select * from tb_vendedores where year(DATA_ADMISSAO) >= 2016;

select * from tb_vendedores where DE_FERIAS = 1 and YEAR(DATA_ADMISSAO) <= 2016;