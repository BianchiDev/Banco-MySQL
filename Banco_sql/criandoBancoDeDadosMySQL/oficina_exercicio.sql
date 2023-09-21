/*
Scrit do BD_Mecanica Carro ZERO
 */

create database BD_mecanica;
use BD_mecanica;

create table Cliente(
cod_cli int primary key auto_increment not null,
nome_cli varchar(200) not null,
cpf_cli varchar(50) not null,
rg_cli varchar(50) not null,
telefone_cli varchar(50) not null,
endereco_cli varchar(200) not null,
email_cli varchar(100),
sexo_cli varchar(50),
renda_cli double not null,
data_Nasc_cli date not null,
status_cli varchar (100)
);

create table Funcionario(
cod_func int primary key auto_increment not null,
nome_func varchar(200) not null,
funcao_func varchar(100) not null,
cpf_func varchar(50) not null,
rg_func varchar(50) not null,
telefone_func varchar(50),
endereco_func varchar (200),
email_func varchar (200),
sexo_func varchar (20),
salario_func double not null

);

select *from fornecedor;
create table Servico(
cod_serv int primary key auto_increment not null,
descricao_serv varchar(300) not null,
valor_serv double not null,
tempo_serv time
);

create table Fornecedor(
cod_forn int primary key auto_increment not null,
razao_forn varchar(150) not null,
nome_forn varchar(150) not null,
cnpj_forn varchar(50) not null,
endereco_forn varchar(300) not null,
telefone_forn varchar(50) not null
);

create table Produto(
cod_prod int primary key auto_increment not null,
nome_prod varchar(300) not null,
marca_prod varchar(150) not null,
estoque_prod int not null,
valor_prod double not null,
tamanho_prod varchar(5) not null,
tipo_prod varchar(50) not null
);

create table Compra(
cod_comp int primary key auto_increment not null,
data_comp date not null,
valor_comp double not null,
quant_itens_comp int,
forma_Pag_comp varchar(50) not null,
cod_forn_fk int not null,
foreign key (cod_forn_fk) references Fornecedor(cod_forn)
);

create table Despesa(
cod_desp int primary key auto_increment not null,
descricao_desp varchar(200),
valor_desp double not null,
data_desp date not null,
forma_pag_desp varchar(100) not null
);

create table Caixa(
cod_cai int primary key auto_increment not null,
data_cai date not null,
saldo_inicial_cai double not null,
total_recebimento_cai double not null,
total_pagamento_cai double not null,
saldo_final_cai double not null,
cod_func_fk int not null,
foreign key (cod_func_fk) references funcionario (cod_func)
);

create table Pagamento(
cod_pag int primary key auto_increment not null,
valor_pag double not null,
parcela_pag double not null,
data_pag date not null,
forma_pag varchar(50) not null,
cod_comp_fk int,
cod_cai_fk int not null,
cod_desp_fk int,
foreign key (cod_comp_fk) references compra (cod_comp),
foreign key (cod_cai_fk) references caixa (cod_cai),
foreign key (cod_desp_fk) references despesa (cod_desp)
);

create table Venda (
cod_vend int primary key auto_increment not null,
valor_vend double not null,
data_vend date not null,
hora_vend varchar(20),
forma_pag_vend varchar(100),
cod_cli_fk int not null,
cod_func_fk int not null,
foreign key (cod_cli_fk) references cliente (cod_cli),
foreign key (cod_func_fk) references funcionario (cod_func)
);

create table Recebimento (
cod_rec int primary key auto_increment not null,
valor_rec double not null,
parcela_rec int not null,
forma_rec varchar(100) not null,
data_vencimento_rec date not null,
cod_cai_fk int not null,
cod_vend_fk int not null,
foreign key (cod_cai_fk) references caixa (cod_cai),
foreign key (cod_vend_fk) references Venda(cod_vend)
);

create table Venda_Serv(
cod_vser int primary key auto_increment not null,
cod_vend_fk int not null,
cod_serv_fk int not null,
quant_vser int,
foreign key (cod_vend_fk) references venda (cod_vend),
foreign key (cod_serv_fk) references servico (cod_serv)
);

create table Venda_Prod(
cod_vpro int primary key auto_increment not null,
cod_vend_fk int not null,
cod_prod_fk int not null,
quant_vpro int,
foreign key (cod_vend_fk) references venda (cod_vend),
foreign key (cod_prod_fk) references produto (cod_prod)
);

create table Compra_Prod(
cod_cprod int primary key auto_increment not null,
cod_comp_fk int not null,
cod_prod_fk int not null,
quant_cprod int,
valor_cprod float,
foreign key (cod_comp_fk) references Compra (cod_comp),
foreign key (cod_prod_fk) references Produto (cod_prod)
);

create table Funcionario_Servico (
cod_fserv int not null primary key auto_increment,
cod_func_fk int not null,
cod_serv_fk int not null,
foreign key (cod_func_fk) references Funcionario (cod_func),
foreign key (cod_serv_fk) references Servico (cod_serv)
);



insert into cliente
 values (1,
	"Saitama",
	"111.222.333-45",
	"3.444.555",
	"+86 769 2278 2222",
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man@Manga.com",
	"M",
	1000.00,
	'1990-12-30',
	"bom");
    
insert into cliente
 values (default,
	"Fubuki",
	"999.000.111-12",
	"2.3333.444",
	"+86 769 2278 6543",
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Fubuki@Manga.com",
	"F",
	5000.00,
	'1990-10-19',
	"inadeplente"
	);

insert into cliente
 values (default,
	"Kid_Emperor",
	"000.111.222-13",
	"3.4444.555",
	"+86 769 2278 5432",
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Kid_Emperor@Manga.com",
	"M",
	8000.00,
	'1990-12-30',
	"adimplete"
	);

insert into cliente
 values (default,
	"Atomic_Samurai",
	"111.222.333-14",
	"4.555.666",
	"+86 769 2278 1478",
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Atomic_Samurai@Manga.com",
	"M",
	18000.00,
	'1990-12-30',
	"adimplete"
	);

insert into cliente
 values (default,
	"Metal_Bat",
	"222.333.444-15",
	"5.666.777",
	"+86 769 2278 1258",
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Metal_Bat@Manga.com",
	"M",
	21000.00,
	'1982-05-30',
	"inadeplente"
	);
    
insert into Funcionario
 values (1,
	"Pretty_Pretty_Prisoner",
	"ex-presidiário_eletricista_de_altos",
	"666.777.888-90",
	"8.999.000",
	"+86 769 2278 2321",
	"666_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Pretty_Pretty_Prisoner@Manga.com",
	"M",
	2000.00
	);

insert into Funcionario
 values (default,
	"Silver_Fang",
	"Mestre_boracheiro",
	"777.888.999-10",
	"9.000.111",
	"+86 769 2278 5686",
	"654_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Silver_Fang@Manga.com",
	"M",
	5000.00
	);

insert into Funcionario
 values (default,
	"Amai_Mask",
	"Ator_do_martelinho_de_ouro",
	"888.999.000-11",
	"1.222.333",
	"+86 769 2278 9874",
	"001_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Amai_Mask@Manga.com",
	"F",
	35000.00
	);

insert into Funcionario
 values (default,
	"cavaleiro_sem_licença",
	"Atendente_recepcionista",
	"444.555.666-78",
	"6.777.888",
	"+86 769 2278 21234",
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_cavaleiro_sem_licença@Manga.com",
	"M",
	300.00	
	);
    
insert into Funcionario
 values (default,
	"Sonic_velocidade_do_som",
	"Nija_do_carburador",
	"333.444.555-67",
	"5.666.777",
	"+86 769 2278 2245",
	"657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão",
	"one_panch_man_Sonic_velocidade_do_som@Manga.com",
	"M",
	200000.00
	);
    
insert into Servico
values(1,
	"Troca de pneu. reparo. macarrão. vucanizacao",
	200.00,
	'00:50');
    
insert into Servico
values(default,
	"pintura",
	2000.00,
	'14:50');
    
insert into Servico
values(default,
	"lanternagem",
	1800.00,
	'24:00');
    
insert into Servico
values(default,
	"carburador",
	5000.00,
	'12:00');
    
	insert into Servico
values(default,
	"martelo_de_ouro",
	1200.00,
	'36:00');

insert into Fornecedor
	values(1,
	"reciclaveis_latex_ltda",
	"boraxao",
	"1234.987.654.153./55",
	"Rua Francisco Alves Mendes Filho,Nº15 - manaus - AM ",
	"+55 97 98884-4444"
	);
insert into Fornecedor
	values(default,
	"polímero & solvente ltda.",
	"auto_lindo",
	"321.785.456.746./95",
	"Av.coral equine,Bairro da santa ce, Nº 234 - Sao Paulo - SP",
	"+55 11 3459 -9876"
	);
insert into Fornecedor
	values(default,
	"Resina BISFENOL A S.A",
	"massa epox do Brasil",
	"987.645.159.357./22",
	"Av. avenida do vaqueiro,Bairro rodeio de rei,Nº 25 - Sao Paulo - SP",
	"+55 15 98073-3477"
	);
insert into Fornecedor
	values(default,
	"aco & titanio S.A",
	"Martelo dourado",
	"079.325.125.896.547./84",
	"Av.Homem de aco,Bairro dos erros, nº 57 - hollywood - PB ",
	"+55 83 3497 - 1744"
	);
insert into Fornecedor
	values(default,
	"Poletileno do petrolio ltda.",
	"filtros sim",
	"964.154.236.478.965./75",
	"Rua ar puro, bairro do caminhao,Nº 1113 - fiat - DF",
	"+55 87 9808- 9898"
	);
    
insert into produto
	values(1,
	"bateria",
	"bateria_moura",
	800,
	30,
	"40 Ah",
	"bateria de lítio"
	);
    
insert into produto
	values(default,
	"tinta automotiva",
	"auto_lindo",
	180,
	1000,
	"0,9 L",
	"impermeavel"
	);
    
insert into produto
	values(default,
	"pneu",
	"boraxao",
	80,
	100,
	"38.1",
	"aro 15"
	);
    
insert into produto
	values(default,
	"Martelo de precisao",
	"Martelo dourado",
	800,
	2,
	"30g",
	"aço"
	);
insert into produto
	values(default,
	"carburador",
	"filtros sim",
	2500,
	10,
	"por",
	"seda"
	);