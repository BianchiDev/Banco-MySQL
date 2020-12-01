create database Supermercado_Vende_Mais;
use Supermercado_Vende_Mais;

create table cliente(
	id_cli int primary key not null auto_increment,
	nome_cli varchar(120),
	endereco_cli varchar(100),
	cpf_cli varchar(30)
 );
create table fornecedor(
	id_for int primary key not null auto_increment,
	nome_for varchar(100),
	cnpj_for varchar (16)	
);

create table caixa(
	id_cai int primary key,
	saldo_inicial float,
	total_recebimentos_cai float,
	total_retirado_cai float,
	saldo_final_cai float	
);

create table setor(
	id_set int primary key not null auto_increment,
	nome_set varchar(120)
);

create table funcionario(
	id_fun int primary key auto_increment,
	nome_fun varchar(100),
	funcao_fun varchar(100),	
	id_set_fk int,
	foreign key(id_set_fk)references setor(id_set)
);

create table produto(
	id_pro int primary key auto_increment,
	nome_pro varchar(50),
	valor_pro float ,
	estoque_pro float
);
  
create table venda(
	id_ven int primary key not null auto_increment,
	valor_ven float,
	data_ven date,
	id_cli_fk int,
	foreign key (id_cli_fk)references cliente(id_cli),
	id_fun_fk int,
	foreign key (id_fun_fk) references funcionario(id_fun)
);



 create table venda_produto(
	id_vp int primary key not null auto_increment,
	agrupamento_ven_pro float,
	id_pro_fk int,
	foreign key (id_pro_fk) references produto(id_pro),
		id_ven_fk int,
	foreign key(id_ven_fk) references venda(id_ven)
);
 
create table entrega(
	id_ent int primary key not null auto_increment,
	data_ent date,
	endereco_alternativo_ent varchar(200),
	hora_ent time,
	id_ven_fk int,
	foreign key (id_ven_fk)references venda(id_ven)
);

create table recebido(
	id_rec int primary key not null auto_increment,
	tipo_rec varchar(100),
	data_rec date,
	id_ven_fk int,
	foreign key (id_ven_fk)references venda(id_ven),
	id_cai_fk int,
	foreign key (id_cai_fk)references caixa(id_cai)
 );

create table compra(
	id_com int primary key not null auto_increment, 
	valor_com float(7,2),
	data_com date,
	id_for_fk int,
	foreign key (id_for_fk)references fornecedor(id_for),
	id_fun_fk int,
	foreign key (id_fun_fk)references funcionario(id_fun)
);

create table despesa(
	id_des int primary key not null auto_increment,
	nome_des varchar(100),
	valor_des float,
	id_com_fk int,
	foreign key(id_com_fk)references compra(id_com)
);

create table compra_produto(
	id_cop int primary key not null auto_increment,
	quantidade_cop float,
	preco_cop float,
	id_pro_fk int,
	foreign key (id_pro_fk) references produto(id_pro),
	id_com_fk int,
	foreign key (id_com_fk) references compra(id_com)
		
);

create table pagamento(
	id_pag int primary key not null auto_increment,
	tipo_pag varchar(100),
	data_pag date,
	id_des_fk int,
	foreign key (id_des_fk)references despesa(id_des),
	id_cai_fk int,
	foreign key (id_cai_fk)references caixa(id_cai)	
);
