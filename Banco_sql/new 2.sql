create database aula3;
use aula3;

create table Pais (
id_pai integer primary key,
nome_pai varchar (100),
continente_pai varchar (100)
);

create table Estado (
id_est integer primary key,
nome_est varchar (100),
sigla_est varchar (10),
regiao_est varchar (100),
id_pai_fk integer,
foreign key (id_pai_fk) references Pais (id_pai)
);


Create table Cidade (
id_cid integer primary key,
nome_cid varchar (100),
data_criacao_cid date,
id_est_fk integer,
foreign key (id_est_fk) references Estado (id_est)
);

Create table Endereco (
id_end integer primary key,
rua_end varchar (100),
numero_end integer,
bairro_end varchar (100),
id_cid_fk integer,
foreign key (id_cid_fk) references Cidade (id_cid)
);

create table Cliente (
id_cli integer primary key,
nome_cli varchar (200) not null,
cpf_cli varchar (15),
data_nasc_cli date,
sexo_cli varchar (30),
email_cli varchar (200),
id_end_fk integer,
foreign key (id_end_fk) references Endereco (id_end)
);
/* exercício drop e alter*/
desc cliente;
desc endereco;
desc pais;

#1
alter table cliente add rg_cli varchar (100);

#02
alter table cliente add telefone_cli varchar (100) after email_cli;

#03
alter table endereco add referencia_end varchar (200);

#04
alter table pais drop continente_pai;

#05
alter table cliente change data_nasc_cli data_nasc_cli varchar (100);

#06
drop table cliente;
drop table endereco;
drop table cidade;
drop table estado;
drop table pais;
