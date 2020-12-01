create database aula3;
use aula3;

create table Pais(
id_pai int primary key,
nome_pai varchar(100),
continete_pai varchar(100)
);

create table Estado(
id_est integer primary key,
nome_est varchar(100),
sigla_int varchar(10),
regiao_est varchar(100),
id_pai_fk int,
foreign key(id_pai_fk)references Pais (id_pai)
);

create table Cidade(
id_cid int primary key,
nome_cid varchar(100),
data_criacao_cid date,
id_est_fk int,
foreign key (id_est_fk) references Estado(id_est)
);

create table Endereco(
id_end int primary key,
rua_end varchar (100),
numero_end int,
bairro_end varchar(100),
id_cid_fk int,
foreign key(id_cid_fk) references Cidade(id_cid)
);


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



id_cid int primary key,
nome_cid varchar(100),
data_criacao_cid date
);




