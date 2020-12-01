create database restaurante_come_mais;
use restaurante_come_mais;

create table mesa(
	id_mes int  primary key not null auto_increment,
	numero_mes int,
	statutos_mes varchar(30)
);

create table caixa(
	id_cai int primary key  not null auto_increment,
	saldo_inicial_cai float,
	saldo_recebimentos_cai float,
	saldo_final_cai float,
	data_cai datetime
);
 create table cliente(
	id_cli int primary key not null auto_increment,
	nome_cli varchar(200)not null,
	cpf_cli varchar(30) not null
);
create table fornecedor(
	id_for int primary key not null auto_increment,
	nome_for varchar(150),
	cnpj_for varchar(30)
); 
create table funcionario(
	id_fun int primary key not null auto_increment,
	nome_fun varchar(200),
	funcao_fun varchar(150)
);
create table venda_produto(
	id_ven_pro int primary key not null auto_increment,
	controle_ven_pro varchar(100)
);
create table pedido_produto(
	id_ped_pro int  primary key not null auto_increment,
	controle_ped_pro varchar(30)
);
create table produto(
	id_pro int primary key not null auto_increment,
	nome_pro varchar (100),
	estoque_pro float,
	valor_pro float,
	id_ven_pro_fk int,
	foreign key(id_ven_pro_fk)references venda_produto(id_ven_pro),
	id_ped_pro_fk int,
	foreign key(id_ped_pro_fk)references pedido_produto(id_ped_pro)
);
create table compra(
	id_com int primary key not null auto_increment,
	valor_com float,
	id_fun_fk int,
	foreign key(id_fun_fk)references funcionario(id_fun),
	id_for_fk int,
	foreign key(id_fun_fk)references fornecedor(id_for),
	id_pro_fk int,
	foreign key(id_pro_fk) references produto(id_pro)
);
create table refeicao_pedido(
	id_ref_ped int primary key not null auto_increment,
	controle_ref_ped varchar(100)
);

create table pedido (
	id_ped int primary key not null auto_increment,
	hora_ped time,
	valor_ped float,
	id_fun_fk int,
	foreign key(id_fun_fk)references funcionario (id_fun),
    
	id_mes_fk int,
	foreign key(id_mes_fk)references mesa (id_mes),
    
	id_ped_pro_fk int,
	foreign key(id_ped_pro_fk)references pedido_produto(id_ped_pro),
    
	id_ref_ped_fk int,
	foreign key(id_ref_ped_fk) references refeicao_pedido(id_ref_ped)	
);
create table venda(
	id_ven int primary key not null auto_increment,
	valor_ven float,
	id_ped_fk int,
	foreign key(id_ped_fk)references pedido(id_ped),
	id_ven_pro_fk int,
	foreign key(id_ven_pro_fk)references venda_produto(id_ven_pro) 
);

create table refeicao(
	id_ref int primary key not null auto_increment,
	kilo_ref float,
	id_ped_pro_fk int,
	foreign key(id_ped_pro_fk)references pedido_produto(id_ped_pro),
	id_ven_fk int,
	foreign key (id_ven_fk)references venda(id_ven)
);
create table recebimento(
	id_rec int primary key not null auto_increment,
	valor_rec float,
	id_cai_fk int,
	foreign key (id_cai_fk)references caixa(id_cai),
	id_ven_fk int,
	foreign key (id_ven_fk)references venda(id_ven)
);