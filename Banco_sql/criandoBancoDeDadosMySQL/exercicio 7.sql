create database aula3;
use aula3;

create table Pais (
id_pai integer primary key,
nome_pai varchar (100),
continente_pai varchar (100)
);

insert into pais (id_pai, nome_pai, continente_pai) values (1, 'Brasil', 'America');
insert into pais (id_pai, nome_pai, continente_pai) values (2, 'Portugal', 'Europa');

insert into pais values (3, 'Inglaterra', 'Europa');
insert into pais values (4, 'Japão', 'Asia');

create table Estado (
id_est integer primary key,
nome_est varchar (100),
sigla_est varchar (10),
regiao_est varchar (100),
id_pai_fk integer,
foreign key (id_pai_fk) references Pais (id_pai)
);

insert into estado (id_est, nome_est, id_pai_fk) values (1, 'Rondônia', 1);
insert into estado (id_est, nome_est, sigla_est, id_pai_fk) values (2, 'Londres', 'LO', 3);

insert into estado values (3, 'São Paulo', null, 'Sudeste', 1);
insert into estado values (4, 'Rio de Janeiro', 'RJ', 'Sudeste', 1);

Create table Cidade (
id_cid integer primary key,
nome_cid varchar (100),
data_criacao_cid date,
id_est_fk integer,
foreign key (id_est_fk) references Estado (id_est)
);

insert into cidade (id_cid, nome_cid, id_est_fk) values (1, 'Porto Velho', 1);
insert into cidade (id_cid, nome_cid, data_criacao_cid, id_est_fk) values (2, 'São Paulo', '1800-01-01', 3);

insert into cidade values (3, 'Rio de Janeiro', '1900-01-01', 4);
insert into cidade values (4, 'Ji-Parana', '1987-01-01', 1);

Create table Endereco (
id_end integer primary key,
rua_end varchar (100),
numero_end integer,
bairro_end varchar (100),
id_cid_fk integer,
foreign key (id_cid_fk) references Cidade (id_cid)
);

insert into endereco (id_end, rua_end, numero_end, bairro_end, id_cid_fk) values 
(1, 'Rua A', 2131, 'X', 1);
insert into endereco (id_end, rua_end, numero_end, bairro_end, id_cid_fk) values 
(2, 'Rua B', 987, 'Y', 2);

insert into endereco values (3, 'Rua C', 700, 'Y', 2);
insert into endereco values (4, 'Rua D', 1213, 'Z', 4);

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

insert into cliente (id_cli, nome_cli) values (1, 'Jose da Silva');
insert into cliente (id_cli, nome_cli, email_cli, id_end_fk) values (2, 'Ana Maria', 'ana@gmail.com', 1);

insert into cliente values (3, 'Gustavo Moreira', '123.123.123-15', '1990-01-31', 'Masculino', 
'gustavo@gmail.com', 3);
insert into cliente values (4, 'Nilda da Silva', '456.456.456-15', '1960-06-20', 'Feminino', 
'nilda@gmail.com', 4);






