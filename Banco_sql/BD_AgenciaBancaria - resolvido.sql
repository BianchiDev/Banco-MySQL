create database BD_Banco;
use BD_Banco;


create table Banco (
cod_ban int primary key not null,
nome_ban varchar (200) not null
);

create table Agência (
cod_ag int primary key not null,
número_ag varchar (100) not null,
nome_ag varchar (100),
telefone_ag varchar (200),
cod_ban_fk int not null,
foreign key (cod_ban_fk) references Banco (cod_ban)
);

create table Cliente (
cod_cli int primary key not null,
nome_cli varchar (200) not null,
cpf_cli varchar (50) not null,
rg_cli varchar (100) not null,
sexo_cli varchar (1),
datanasc_cli date not null,
renda_cli float not null,
endereço_cli varchar (300) not null,
email_cli varchar (300) not null,
telefone_cli varchar (200) not null
);

create table Conta_Corrente (
cod_cc int primary key not null,
número_cc int not null,
dataabertura_cc date not null,
saldo_cc float not null,
valorlimite_cc float not null,
taxamensal_cc float not null,
cod_ag_fk int not null,
cod_cli_fk int not null,
foreign key (cod_ag_fk) references Agência (cod_ag),
foreign key (cod_cli_fk) references Cliente (cod_cli)
);

create table Saque (
cod_saq int primary key not null,
valor_saq float not null,
data_saq date not null,
local_saq varchar (100) not null,
hora_saq time,
cod_cc_fk int not null,
foreign key (cod_cc_fk) references Conta_Corrente (cod_cc)
);

create table Transferência (
cod_trans int primary key not null,
valor_trans float not null,
data_trans date not null,
descrição_trans varchar (100),
cod_cc_origem_fk int not null,
cod_cc_destino_fk int not null,
foreign key (cod_cc_origem_fk) references Conta_Corrente (cod_cc),
foreign key (cod_cc_destino_fk) references Conta_Corrente (cod_cc)
);

create table Depósito (
cod_dep int primary key not null,
valor_dep float not null,
data_dep date not null,
tipo_dep varchar (100),
cod_cc_fk int not null,
foreign key (cod_cc_fk) references Conta_Corrente (cod_cc)
);

create table Pagamento (
cod_pag int primary key not null,
valor_pag float not null,
data_pag date not null,
tipo_pag varchar (100),
datavencimento_pag date not null,
codigobarras_pag varchar (300),
cod_cc_fk int not null,
foreign key (cod_cc_fk) references Conta_Corrente (cod_cc)
);

use  BD_Banco;

insert into banco 
	values(1,"Bank_da_China");
insert into banco 
	values(2,"JPMorgan_Chase");
insert into banco 
	values(3,"Citigroup");
    
insert into agência
	values(1,
		"1546",
		"Bank_da_China_Pequim",
		"+86 785 2278 2222",
		1);
	
insert into agência
	values(2,
		"5467",
		"JPMorgan_Chase_Louisiana",
		"+1 504-623-1563",
		2);

insert into agência
	values(3,
		"5678",
		"Citigroup_ Nova Iorque",
		"+1 888-274-4650",
		3);


insert into cliente
 values (1,
	"Saitama",
	"111.222.333-45",
	"3.444.555",
	"M",
	'1990-12-30',
	1000.00,
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man@Manga.com",
	"+86 769 2278 2222");


insert into cliente
    values (2,
	"Genos",
	"22.333.444-56",
	"4.555.666",
	"M",
	'1995-12-30',
	400.00,
	"2 Chome-8-1 Nishishinjuku, Shinjuku City, Tokyo 163-8001, Japão",
	"one_panch_man_Genos_@Manga.com",
	"+86 769 2278 2245");
    
delete from cliente where cod_cli = 2;

insert into cliente
 values (3,
	"Sonic_velocidade_do_som",
	"333.444.555-67",
	"5.666.777",
	"M",
	'1998-05-12',
	200000.00,
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Sonic_velocidade_do_som@Manga.com",
	"+86 769 2278 2245");

insert into cliente
 values (4,
	"cavaleiro_sem_licença",
	"444.555.666-78",
	"6.777.888",
	"M",
	'1999-06-01',
	300.00,
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_cavaleiro_sem_licença@Manga.com",
	"+86 769 2278 21234");

insert into cliente
 values (5,
	"Tornado",
	"555.666.777-89",
	"7.888.999",
	"F",
	'2000-05-16',
	100000.00,
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Tornado@Manga.com",
	"+86 769 2278 4321");

insert into cliente
 values (6,
	"Pretty_Pretty_Prisoner",
	"666.777.888-90",
	"8.999.000",
	"M",
	'2001-06-30',
	100.00,
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Pretty_Pretty_Prisoner@Manga.com",
	"+86 769 2278 2321");

insert into cliente
 values (7,
	"Silver_Fang",
	"777.888.999-10",
	"9.000.111",
	"M",
	'1968-07-12',
	300.00,
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Silver_Fang@Manga.com",
	"+86 769 2278 5686");

insert into cliente
 values (8,
	"Amai_Mask",
	"888.999.000-11",
	"1.222.333",
	"F",
	'1988-06-12',
	3000.00,
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Amai_Mask@Manga.com",
	"+86 769 2278 9874");

insert into cliente
 values (9,
	"Fubuki",
	"999.000.111-12",
	"2.3333.444",
	"F",
	'1990-10-19',
	5000.00,
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Fubuki@Manga.com",
	"+86 769 2278 6543");

insert into cliente
 values (10,
	"Kid_Emperor",
	"000.111.222-13",
	"3.4444.555",
	"M",
	'1990-12-30',
	8000.00,
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Kid_Emperor@Manga.com",
	"+86 769 2278 5432");

insert into cliente
 values (11,
	"Atomic_Samurai",
	"111.222.333-14",
	"4.555.666",
	"M",
	'1990-12-30',
	18000.00,
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Atomic_Samurai@Manga.com",
	"+86 769 2278 1478");

insert into cliente
 values (12,
	"Metal_Bat",
	"222.333.444-15",
	"5.666.777",
	"M",
	'1982-05-30',
	21000.00,
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Metal_Bat@Manga.com",
	"+86 769 2278 1258");

insert into cliente
 values (13,
	"Superalloy_Darkshine",
	"333.444.555-16",
	"6.777.888",
	"M",
	'1977-12-30',
	12000.00,
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Superalloy_Darkshine@Manga.com",
	"+86 769 2278 3698");
    
insert into conta_corrente
	values(1,
	11223355-9,
	'2020-04-13',
	364232522.50,
	36423252200.50,
	364.05,
	1,
	1
	);
	

	
insert into conta_corrente
	values(3,
	223344559,
	'2015-05-30',
	364255.01,
	3642.00,
	22.05,
	3,
	3
	);
	
insert into conta_corrente
	values(4,
	22334455-7,
	'2018-10-04',
	364256.75,
	364252.00,
	22.05,
	1,
	4
	);
	
insert into conta_corrente
	values(5,
	22334455-6,
	'2012-02-04',
	36425220.57,
	364252200.50,
	22.05,
	2,
	5
	);
	
insert into conta_corrente
	values(6,
	22334455-5,
	'2011-01-04',
	12000.63,
	2000.00,
	22.05,
	3,
	6
	);
	
insert into conta_corrente
	values(7,
	22334455-4,
	'2020-04-13',
	3642522.57,
	364252200.50,
	22.05,
	1,
	7
	);
	
	insert into conta_corrente
	values(8,
	22334455-3,
	'2015-05-30',
	3642522.57,
	364252200.50,
	22.05,
	2,
	8
	);
	
insert into conta_corrente
	values(9,
	22334455-2,
	'2011-01-04',
	3642522.57,
	364252200.50,
	22.05,
	3,
	9
	);
	
insert into conta_corrente
	values(10,
	22334455-1,
	'2019-12-04',
	3642522.57,
	364252200.50,
	22.05,
	1,
	10
	);
	
insert into conta_corrente
	values(11,
	33445566-8,
	'2012-02-04',
	3642522.57,
	364252200.50,
	22.05,
	2,
	11
	);
	
insert into conta_corrente
	values(12,
	44556677-8,
	'2009-12-01',
	3642522.57,
	364252200.50,
	22.05,
	3,
	12
	);
	
insert into conta_corrente
	values(13,
	44556677-1,
	'2013-03-15',
	3642522.57,
	364252200.50,
	22.05,
	1,
	13
	);

insert into Saque
	values(
	1,
	5000,
	'2020-08-12',
	"ag_sao_paulo",
	'12:30:17',
	3);
    
insert into Saque
	values(
	2,
	2500,
	'2020-03-20',
	"ag_curitiba",
	'12:30:17',
	4);
    
insert into Saque
	values(
	3,
	1500,
	'2020-09-30',
	"ag_DF",
	'12:30:17',
	5);

insert into depósito 
	values( 1,
	63000.05,
	'2019-05-20',
	"cheque_predatado",
	13
	);
insert into depósito 
	values( 2,
	7563.05,
	'2019-12-02',
	"moeda_digital",
	12
	);

insert into depósito 
	values( 3,
	68853.05,
	'2020-09-20',
	"titulos_da_divida_p",
	11
	);
	
insert into depósito 
	values( 4,
	63.05,
	'2019-01-20',
	"dinheiro",
	10
	);

insert into pagamento 
	values(1,
	21350.75,
	'2020-01-15',
	"moeda_digital",
    '2020-01-18',
	"033992148980.00042195670.9040511184000004600",
	1
    );
    
insert into pagamento 
	values(2,
	21350.75,
	'2020-02-01',
	"moeda_digital",
    '2020-03-01',
	"033992148980.00042195670.9040511184000005800",
	8
    );
	
insert into pagamento 
	values(3,
	21350.75,
	'2020-02-20',
	"dinheiro",
    '2020-03-12',
	"033992148980.00042195670.90405111840000000",
	3
    );
    
insert into Transferência 
	values(
	1,
	2000.00,
	'2016-02-21',
	"Pagamento_carro",
	9,
	6);
    
insert into Transferência 
	values(
	2,
	205.00,
	'2018-12-01',
	"emprestimo",
	12,
	8);

insert into Transferência 
	values(
	3,
	2125.50,
	'2019-06-25',
	"Pagamento_reforma",
	4,
	13);

# 1 Adicione 03 registros na tabela Banco.#

select * from banco;

# 2 Adicione 03 registros na tabela Agência.#

select * from agência;

# 3 Adicione 05 registros na tabela Cliente.#

select * from Cliente;

# 4 Adicione 05 registros na tabela Conta_Corrente, 
#ou seja, uma corrente corrente para cada cliente inserido anteriormente.

select * from Conta_Corrente;

# 5 Adicione 03 registros na tabela Saque, para clientes aleatórios, você decide.

select * from Saque;

# 6 Adicione 03 registros na tabela Depósito, para clientes aleatórios, você decide.

select * from Depósito;

# 7 Adicione 03 registros na tabela Pagamento, para clientes aleatórios, você decide.

select * from Pagamento;

# 8  Adicione 03 registros na tabela Transferência, para clientes aleatórios, você decide

select * from Transferência;