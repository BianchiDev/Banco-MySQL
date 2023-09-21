create database BD_Banco;
use BD_Banco;

-- Cria o banco de dados BD_Banco
CREATE DATABASE IF NOT EXISTS BD_Banco;
USE BD_Banco;

-- Cria a tabela Banco
CREATE TABLE IF NOT EXISTS Banco (
    cod_ban INT PRIMARY KEY NOT NULL,
    nome_ban VARCHAR(200) NOT NULL
);

-- Cria a tabela Agência
CREATE TABLE IF NOT EXISTS Agência (
    cod_ag INT PRIMARY KEY NOT NULL,
    número_ag VARCHAR(100) NOT NULL,
    nome_ag VARCHAR(100),
    telefone_ag VARCHAR(200),
    cod_ban_fk INT NOT NULL,
    FOREIGN KEY (cod_ban_fk) REFERENCES Banco(cod_ban)
);

-- Cria a tabela Cliente
CREATE TABLE IF NOT EXISTS Cliente (
    cod_cli INT PRIMARY KEY NOT NULL,
    nome_cli VARCHAR(200) NOT NULL,
    cpf_cli VARCHAR(50) NOT NULL,
    rg_cli VARCHAR(100) NOT NULL,
    sexo_cli CHAR(1),
    datanasc_cli DATE NOT NULL,
    renda_cli FLOAT NOT NULL,
    endereço_cli VARCHAR(300) NOT NULL,
    email_cli VARCHAR(300) NOT NULL,
    telefone_cli VARCHAR(200) NOT NULL
);

-- Cria a tabela Conta_Corrente
CREATE TABLE IF NOT EXISTS Conta_Corrente (
    cod_cc INT PRIMARY KEY NOT NULL,
    número_cc INT NOT NULL,
    data_abertura_cc DATE NOT NULL,
    saldo_cc FLOAT NOT NULL,
    valorlimite_cc FLOAT NOT NULL,
    taxamensal_cc FLOAT NOT NULL,
    cod_ag_fk INT NOT NULL,
    cod_cli_fk INT NOT NULL,
    FOREIGN KEY (cod_ag_fk) REFERENCES Agência(cod_ag),
    FOREIGN KEY (cod_cli_fk) REFERENCES Cliente(cod_cli)
);

-- Cria a tabela Saque
CREATE TABLE IF NOT EXISTS Saque (
    cod_saq INT PRIMARY KEY NOT NULL,
    valor_saq FLOAT NOT NULL,
    data_saq DATE NOT NULL,
    local_saq VARCHAR(100) NOT NULL,
    hora_saq TIME,
    cod_cc_fk INT NOT NULL,
    FOREIGN KEY (cod_cc_fk) REFERENCES Conta_Corrente(cod_cc)
);

-- Cria a tabela Transferência
CREATE TABLE IF NOT EXISTS Transferência (
    cod_trans INT PRIMARY KEY NOT NULL,
    valor_trans FLOAT NOT NULL,
    data_trans DATE NOT NULL,
    descrição_trans VARCHAR(100),
    cod_cc_origem_fk INT NOT NULL,
    cod_cc_destino_fk INT NOT NULL,
    FOREIGN KEY (cod_cc_origem_fk) REFERENCES Conta_Corrente(cod_cc),
    FOREIGN KEY (cod_cc_destino_fk) REFERENCES Conta_Corrente(cod_cc)
);

-- Cria a tabela Depósito
CREATE TABLE IF NOT EXISTS Depósito (
    cod_dep INT PRIMARY KEY NOT NULL,
    valor_dep FLOAT NOT NULL,
    data_dep DATE NOT NULL,
    tipo_dep VARCHAR(100),
    cod_cc_fk INT NOT NULL,
    FOREIGN KEY (cod_cc_fk) REFERENCES Conta_Corrente(cod_cc)
);

-- Cria a tabela Pagamento
CREATE TABLE IF NOT EXISTS Pagamento (
    cod_pag INT PRIMARY KEY NOT NULL,
    valor_pag FLOAT NOT NULL,
    data_pag DATE NOT NULL,
    tipo_pag VARCHAR(100),
    datavencimento_pag DATE NOT NULL,
    codigobarras_pag VARCHAR(300),
    cod_cc_fk INT NOT NULL,
    FOREIGN KEY (cod_cc_fk) REFERENCES Conta_Corrente(cod_cc)
);




use  BD_Banco;

-- Inserções na tabela Banco
INSERT INTO Banco VALUES (1, 'Bank_da_China');
INSERT INTO Banco VALUES (2, 'JPMorgan_Chase');
INSERT INTO Banco VALUES (3, 'Citigroup');

-- Inserções na tabela Agência
INSERT INTO Agência VALUES (1, '1546', 'Bank_da_China_Pequim', '+86 785 2278 2222', 1);
INSERT INTO Agência VALUES (2, '5467', 'JPMorgan_Chase_Louisiana', '+1 504-623-1563', 2);
INSERT INTO Agência VALUES (3, '5678', 'Citigroup_Nova_Iorque', '+1 888-274-4650', 3);

-- Inserções na tabela Cliente
INSERT INTO Cliente VALUES (1, 'Saitama', '111.222.333-45', '3.444.555', 'M', '1990-12-30', 1000.00, '657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão', 'one_panch_man@Manga.com', '+86 769 2278 2222');

-- Inserções vazias na tabela Cliente (valores fictícios)
-- INSERT INTO Cliente VALUES (0, null, "", "", "", "", 0, "", "", "");

INSERT INTO Cliente VALUES (2, 'Genos', '22.333.444-56', '4.555.666', 'M', '1995-12-30', 400.00, '2 Chome-8-1 Nishishinjuku, Shinjuku City, Tokyo 163-8001, Japão', 'one_panch_man_Genos_@Manga.com', '+86 769 2278 2245');

INSERT INTO Cliente VALUES (3, 'Sonic_velocidade_do_som', '333.444.555-67', '5.666.777', 'M', '1998-05-12', 200000.00, '657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão', 'one_panch_man_Sonic_velocidade_do_som@Manga.com', '+86 769 2278 2245');

INSERT INTO Cliente VALUES (4, 'cavaleiro_sem_licença', '444.555.666-78', '6.777.888', 'M', '1999-06-01', 300.00, '657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão', 'one_panch_man_cavaleiro_sem_licença@Manga.com', '+86 769 2278 21234');

INSERT INTO Cliente VALUES (5, 'Tornado', '555.666.777-89', '7.888.999', 'F', '2000-05-16', 100000.00, '657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão', 'one_panch_man_Tornado@Manga.com', '+86 769 2278 4321');

INSERT INTO Cliente VALUES (6, 'Pretty_Pretty_Prisoner', '666.777.888-90', '8.999.000', 'M', '2001-06-30', 100.00, '657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão', 'one_panch_man_Pretty_Pretty_Prisoner@Manga.com', '+86 769 2278 2321');

INSERT INTO Cliente VALUES (7, 'Silver_Fang', '777.888.999-10', '9.000.111', 'M', '1968-07-12', 300.00, '657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão', 'one_panch_man_Silver_Fang@Manga.com', '+86 769 2278 5686');

INSERT INTO Cliente VALUES (8, 'Amai_Mask', '888.999.000-11', '1.222.333', 'F', '1988-06-12', 3000.00, '657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão', 'one_panch_man_Amai_Mask@Manga.com', '+86 769 2278 9874');

INSERT INTO Cliente VALUES (9, 'Fubuki', '999.000.111-12', '2.3333.444', 'F', '1990-10-19', 5000.00, '657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão', 'one_panch_man_Fubuki@Manga.com', '+86 769 2278 6543');

INSERT INTO Cliente VALUES (10, 'Kid_Emperor', '000.111.222-13', '3.4444.555', 'M', '1990-12-30', 8000.00, '657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão', 'one_panch_man_Kid_Emperor@Manga.com', '+86 769 2278 5432');

INSERT INTO Cliente VALUES (11, 'Atomic_Samurai', '111.222.333-14', '4.555.666', 'M', '1990-12-30', 18000.00, '657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão', 'one_panch_man_Atomic_Samurai@Manga.com', '+86 769 2278 1478');

INSERT INTO Cliente VALUES (12, 'Metal_Bat', '222.333.444-15', '5.666.777', 'M', '1982-05-30', 21000.00, '657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão', 'one_panch_man_Metal_Bat@Manga.com', '+86 769 2278 1258');

INSERT INTO Cliente VALUES (13, 'Superalloy_Darkshine', '333.444.555-16', '6.777.888', 'M', '1977-12-30', 12000.00, '657_Sanjusangendomawari_Higashiyama_Ward_Kyoto_Japão', 'one_panch_man_Superalloy_Darkshine@Manga.com', '+86 769 2278 3698');

-- Inserções na tabela Conta_Corrente
INSERT INTO Conta_Corrente VALUES (1, 112233559, '2020-04-13', 364232522.50, 36423252200.50, 364.05, 1, 1);
INSERT INTO Conta_Corrente VALUES (3, 223344559, '2015-05-30', 364255.01, 3642.00, 22.05, 3, 2);

-- Inserções vazias na tabela Conta_Corrente (valores fictícios)
-- INSERT INTO Conta_Corrente VALUES (0, 0, '', 0, 0, 0, 0, 0);

INSERT INTO Conta_Corrente VALUES (4, 223344557, '2018-10-04', 364256.75, 364252.00, 22.05, 1, 4);
INSERT INTO Conta_Corrente VALUES (5, 223344556, '2012-02-04', 36425220.57, 364252200.50, 22.05, 2, 5);
INSERT INTO Conta_Corrente VALUES (6, 223344555, '2011-01-04', 12000.63, 2000.00, 22.05, 3, 6);
INSERT INTO Conta_Corrente VALUES (7, 223344554, '2020-04-13', 3642522.57, 364252200.50, 22.05, 1, 7);
INSERT INTO Conta_Corrente VALUES (8, 223344553, '2015-05-30', 3642522.57, 364252200.50, 22.05, 2, 8);
INSERT INTO Conta_Corrente VALUES (9, 223344552, '2011-01-04', 3642522.57, 364252200.50, 22.05, 3, 9);
INSERT INTO Conta_Corrente VALUES (10, 223344551, '2019-12-04', 3642522.57, 364252200.50, 22.05, 1, 10);
INSERT INTO Conta_Corrente VALUES (11, 334455668, '2012-02-04', 3642522.57, 364252200.50, 22.05, 2, 11);
INSERT INTO Conta_Corrente VALUES (12, 445566778, '2009-12-01', 3642522.57, 364252200.50, 22.05, 3, 12);
INSERT INTO Conta_Corrente VALUES (13, 445566771, '2013-03-15', 3642522.57, 364252200.50, 22.05, 1, 13);

-- Inserções na tabela Saque
INSERT INTO Saque VALUES (1, 5000, '2020-08-12', 'ag_sao_paulo', '12:30:17', 3);
INSERT INTO Saque VALUES (2, 2500, '2020-03-20', 'ag_curitiba', '12:30:17', 4);
INSERT INTO Saque VALUES (3, 1500, '2020-09-30', 'ag_DF', '12:30:17', 5);

-- Inserções na tabela Depósito
INSERT INTO Depósito VALUES (1, 63000.05, '2019-05-20', 'cheque_predatado', 13);
INSERT INTO Depósito VALUES (2, 7563.05, '2019-12-02', 'moeda_digital', 12);
INSERT INTO Depósito VALUES (3, 68853.05, '2020-09-20', 'titulos_da_divida_p', 11);
INSERT INTO Depósito VALUES (4, 63.05, '2019-01-20', 'dinheiro', 10);

-- Inserções na tabela Pagamento
INSERT INTO Pagamento VALUES (1, 21350.75, '2020-01-15', 'moeda_digital', '2020-01-18', '033992148980.00042195670.9040511184000004600', 1);
INSERT INTO Pagamento VALUES (2, 21350.75, '2020-02-01', 'moeda_digital', '2020-03-01', '033992148980.00042195670.9040511184000005800', 8);
INSERT INTO Pagamento VALUES (3, 21350.75, '2020-02-20', 'dinheiro', '2020-03-12', '033992148980.00042195670.90405111840000000', 3);

-- Inserções na tabela Transferência
INSERT INTO Transferência VALUES (1, 2000.00, '2016-02-21', 'Pagamento_carro', 9, 6);
INSERT INTO Transferência VALUES (2, 205.00, '2018-12-01', 'emprestimo', 12, 8);
INSERT INTO Transferência VALUES (3, 2125.50, '2019-06-25', 'Pagamento_reforma', 4, 13);


# 1 Adicione 03 registros na tabela Banco.#

select * from Banco;

# 2 Adicione 03 registros na tabela Agência.#

select * from Agência;

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



#EXERCÍCIOS
#1. Adicione o atributo local_sede_ban na tabela Banco.

alter table banco add local_sede_ban varchar(200)not null;

#2. Adicione o atributo cnpj_ban na tabela Banco, antes do atributo local_sede_ban.

alter table banco add cnpj_ban varchar(30)not null after nome_ban;

#3. Adicione o atributo endereco_ag na tabela Agencia, depois do atributo telefone_ag.
 
 alter table Agência add endereco_ag  varchar(200)not null after telefone_ag;

#4. Adicione o atributo numero_cartao_cc na tabela Conta_Corrente antes do atributo dataabertura_cc.

alter table Conta_Corrente add numero_cartao_cc varchar(100)not null after número_cc;

#5. Adicione o atributo hora_dep na tabela Depósito, após o atributo data_dep.

alter table Depósito add hora_dep time not null after data_dep;

#6. Altero o nome do atributo número_ag para numero_ag, na tabela Agência.

alter table agência CHANGE número_ag numero_ag varchar(40)not null ;

#7. Altere o nome do telefone_ag para contato_ag, na tabela Agencia.

alter table agência CHANGE telefone_ag  contato_ag varchar(40) not null ; 

#8. Altere o nome do atributo endereço_cli para endereco_cli na tabela Cliente.

alter table Cliente CHANGE endereço_cli   endereco_cli  varchar(200)not null; 

#9. Altere o tipo de dado do atributo renda_cli para double.

alter table Cliente CHANGE renda_cli   renda_cli   double not null;

#10. Altere o tipo do dado do atributo data_saq para varchar na tabela Saque.

alter table saque CHANGE data_saq    data_saq  varchar(100) not null; 

#11. Altere o tipo de dado do atributo saldo_cc para double na tabela Conta_Corrente.

alter table Conta_Corrente CHANGE saldo_cc  saldo_cc   double not null;

#12. Apague o atributo local_sede_ban na tabela Banco.

alter table Banco drop local_sede_ban ;

#13. Apague o atributo cnpj_ban na tabela Banco.

alter table banco drop cnpj_ban;

#14. Apague o atributo endereco_ag na tabela Agencia.

alter table Agência drop endereco_ag ;

#15. Apague o atributo numero_cartao_cc na tabela Conta_Corrente.

alter table Conta_Corrente drop numero_cartao_cc;

#16. Apague o atributo hora_dep na tabela Depósito.

alter table  Depósito drop hora_dep;

#17. Apague a tabela Depósito.

drop table depósito;

#18. Apague a tabela Saque.

drop table Saque;

#19. Apague a tabela Pagamento.

drop table Pagamento;

#20. Apague a tabela Transferência.

drop table Transferência;