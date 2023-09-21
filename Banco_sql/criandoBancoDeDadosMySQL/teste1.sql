create database aula2;
use aula2;
create table Cliente (
id_cli int primary key,
nome_cli varchar(200) not null,
cpf_cli varchar(15),
data_nasc_cli date,
sexo_cli varchar(30),
email_cli varchar(200),
id_end_fk int,
foreign key(id_end_fk)references endereco(id_end)
);

create table Endereco(
id_end int primary key,
rua_end varchar (100),
numero_end int,
bairro_end varchar(100)
);

create table Cidade(
id_cid int primary key,
nome_cid varchar(100),
data_criacao_cid date
);

create table Estado(
id_est integer primary key,
nome_est varchar(100),
sigla_int varchar(10),
regiao_est varchar(100)
);

create table Pais(
id_pai int primary key,
nome_pai varchar(100),
continete_pai varchar(100)
);
drop table Cliente;
create table Cliente (
id_cli int primary key,
nome_cli varchar(200) not null,
cpf_cli varchar(15),
data_nasc_cli date,
sexo_cli varchar(30),
email_cli varchar(200),
id_end_fk int,
foreign key(id_end_fk)references endereco(id_end)
);
