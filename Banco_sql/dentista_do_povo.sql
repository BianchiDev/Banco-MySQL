create database dentista_do_povo;
use  dentista_do_povo;

create table procedimento(
	id_pro int primary key  auto_increment,
	nome_pro varchar(200),
	materiais_pro varchar (100),
	valor_pro float
); 
create table paciente(
	id_pac int primary key  auto_increment,
	nome_pac varchar(150),
	cpf_pac varchar(30),
	telefone_pac varchar(30),
	email_pac varchar(40)
);
create table dentista(
	id_den int primary key  auto_increment,
	nome_den varchar(200),
	cpf_den varchar(30),
	especialidade_den varchar(40)
);
create table agenda(
	id_ag int primary key  auto_increment,
	data_ag date,
	hora_ag time,
	tipo_ag varchar(200),
	id_pac_fk int,
	foreign key ( id_pac_fk) references paciente(id_pac),
	id_den_fk int,
	foreign key(id_den_fk)references dentista(id_den)
);	
create table consultorio(
	id_cons int primary key  auto_increment,
	data_cons date,
	valor_cons float,
	id_pro_fk int,
	foreign key( id_pro_fk)references procedimento(id_pro),
	id_den_fk int,
	foreign key(id_den_fk)references dentista(id_den),
	id_pac_fk int,
	foreign key ( id_pac_fk) references paciente(id_pac)
);
create table recebido(
	id_rec int primary key  auto_increment,
	data_rec date,
	tipo_rec varchar(200),
	valor_rec float,
	id_cons_fk int,
	foreign key (id_cons_fk)references consultorio(id_cons)
);
