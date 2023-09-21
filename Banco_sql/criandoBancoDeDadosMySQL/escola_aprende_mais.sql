create database escola_aprende_mais;

use escola_aprende_mais;

create table escola(
	id_esc int primary key not null auto_increment,
	nome_esc varchar(150),
	endereco_esc varchar(200)
);

create table diario(
	id_dia int primary key not null auto_increment,
	data_dia date
);

create table funcionario(
	id_fun int primary key not null auto_increment,
	nome_fun varchar(150),
	cpf_fun varchar (20),
	funcao_fun varchar(120),
	id_esc_fk int,
	foreign key (id_esc_fk)references escola(id_esc)
);
create table disciplina(
	id_disc int primary key not null auto_increment,
	nome_disc varchar(100),
	objetivo_disc varchar(300),
	conteudo_disc varchar(200),
	bibliografia_disc varchar(100)

);
create table curso(
	id_cur int primary key not null auto_increment,
	nome_cur varchar(100),
	objetivo_cur varchar(300),
	perfil_egresso_cur varchar(200),
	id_disc_fk int,
	foreign key (id_disc_fk)references disciplina(id_disc)
);

create table nota(
	id_not int primary key not null auto_increment,
	tetapa2_not float,
	etapa1_not float,
	id_dia_fk int,
	foreign key (id_dia_fk)references diario(id_dia)
);
 create table aluno(
	id_al int primary key not null auto_increment,
	nome_al varchar(150),
	cpf_al varchar (30),
	endereco_al varchar(200),
	id_not_fk int,
	foreign key(id_not_fk)references nota(id_not)
);

create table aula(
	id_aul int primary key not null auto_increment,
	conteudo_aul varchar(200),
	data_aul date,
	id_dia_fk int,
	foreign key (id_dia_fk)references diario(id_dia)
);
create table presenca(
	id_pres int primary key auto_increment,
	ausente_pres varchar(10),
	presenca_pres varchar(10),
	id_aul_fk int,
	foreign key (id_aul_fk)references aula(id_aul),
	id_al_fk int,
	foreign key (id_al_fk)references aluno(id_al)
);

create table turma_materia(
	id_tur_mat int primary key not null auto_increment,
	controle_tur_mat varchar(30)
);

create table turma(
	id_tur int primary key not null auto_increment,
	nome_tur varchar(100),
	id_dia_fk int,
	foreign key (id_dia_fk)references diario(id_dia),
	id_tur_mat_fk int,
	foreign key(id_tur_mat_fk)references turma_materia(id_tur_mat)
	);
create table matricula(
	id_mat int primary key not null auto_increment,
	data_mat date,
	id_al_fk int,
	foreign key(id_al_fk)references aluno(id_al),
	id_tur_mat_fk int,
	foreign key (id_tur_mat_fk)references turma_materia(id_tur_mat),
	id_fun_fk int,
	foreign key (id_fun_fk)references funcionario(id_fun),
	id_disc_fk int,
	foreign key (id_disc_fk)references disciplina(id_disc)

);