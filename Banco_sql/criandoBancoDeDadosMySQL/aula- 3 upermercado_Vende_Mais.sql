-- Crie um banco de dados com um nome único e restrito.
CREATE DATABASE IF NOT EXISTS Supermercado_Vende_Mais;
USE Supermercado_Vende_Mais;

-- Tabela de Cliente com auto_increment para ID e adição de CONSTRAINT UNIQUE no CPF.
CREATE TABLE IF NOT EXISTS cliente (
    id_cli INT PRIMARY KEY AUTO_INCREMENT,
    nome_cli VARCHAR(120),
    endereco_cli VARCHAR(100),
    cpf_cli VARCHAR(30) UNIQUE
);

-- Tabela de Fornecedor com auto_increment para ID e adição de CONSTRAINT UNIQUE no CNPJ.
CREATE TABLE IF NOT EXISTS fornecedor (
    id_for INT PRIMARY KEY AUTO_INCREMENT,
    nome_for VARCHAR(100),
    cnpj_for VARCHAR(16) UNIQUE
);

-- Tabela de Caixa.
CREATE TABLE IF NOT EXISTS caixa (
    id_cai INT PRIMARY KEY AUTO_INCREMENT,
    saldo_inicial DECIMAL(10, 2),
    total_recebimentos_cai DECIMAL(10, 2),
    total_retirado_cai DECIMAL(10, 2),
    saldo_final_cai DECIMAL(10, 2)
);

-- Tabela de Setor com auto_increment para ID.
CREATE TABLE IF NOT EXISTS setor (
    id_set INT PRIMARY KEY AUTO_INCREMENT,
    nome_set VARCHAR(120)
);

-- Tabela de Funcionário com auto_increment para ID e FOREIGN KEY para Setor.
CREATE TABLE IF NOT EXISTS funcionario (
    id_fun INT PRIMARY KEY AUTO_INCREMENT,
    nome_fun VARCHAR(100),
    funcao_fun VARCHAR(100),
    id_set_fk INT,
    FOREIGN KEY (id_set_fk) REFERENCES setor(id_set)
);

-- Tabela de Produto com auto_increment para ID.
CREATE TABLE IF NOT EXISTS produto (
    id_pro INT PRIMARY KEY AUTO_INCREMENT,
    nome_pro VARCHAR(50),
    valor_pro DECIMAL(10, 2),
    estoque_pro INT
);

-- Tabela de Venda com auto_increment para ID e FOREIGN KEY para Cliente e Funcionário.
CREATE TABLE IF NOT EXISTS venda (
    id_ven INT PRIMARY KEY AUTO_INCREMENT,
    valor_ven DECIMAL(10, 2),
    data_ven DATE,
    id_cli_fk INT,
    id_fun_fk INT,
    FOREIGN KEY (id_cli_fk) REFERENCES cliente(id_cli),
    FOREIGN KEY (id_fun_fk) REFERENCES funcionario(id_fun)
);

-- Tabela de Venda_Produto com auto_increment para ID e FOREIGN KEY para Produto e Venda.
CREATE TABLE IF NOT EXISTS venda_produto (
    id_vp INT PRIMARY KEY AUTO_INCREMENT,
    agrupamento_ven_pro DECIMAL(10, 2),
    id_pro_fk INT,
    id_ven_fk INT,
    FOREIGN KEY (id_pro_fk) REFERENCES produto(id_pro),
    FOREIGN KEY (id_ven_fk) REFERENCES venda(id_ven)
);

-- Tabela de Entrega com auto_increment para ID e FOREIGN KEY para Venda.
CREATE TABLE IF NOT EXISTS entrega (
    id_ent INT PRIMARY KEY AUTO_INCREMENT,
    data_ent DATE,
    endereco_alternativo_ent VARCHAR(200),
    hora_ent TIME,
    id_ven_fk INT,
    FOREIGN KEY (id_ven_fk) REFERENCES venda(id_ven)
);

-- Tabela de Recebido com auto_increment para ID e FOREIGN KEY para Venda e Caixa.
CREATE TABLE IF NOT EXISTS recebido (
    id_rec INT PRIMARY KEY AUTO_INCREMENT,
    tipo_rec VARCHAR(100),
    data_rec DATE,
    id_ven_fk INT,
    id_cai_fk INT,
    FOREIGN KEY (id_ven_fk) REFERENCES venda(id_ven),
    FOREIGN KEY (id_cai_fk) REFERENCES caixa(id_cai)
);

-- Tabela de Compra com auto_increment para ID e FOREIGN KEY para Fornecedor e Funcionário.
CREATE TABLE IF NOT EXISTS compra (
    id_com INT PRIMARY KEY AUTO_INCREMENT,
    valor_com DECIMAL(10, 2),
    data_com DATE,
    id_for_fk INT,
    id_fun_fk INT,
    FOREIGN KEY (id_for_fk) REFERENCES fornecedor(id_for),
    FOREIGN KEY (id_fun_fk) REFERENCES funcionario(id_fun)
);

-- Tabela de Despesa com auto_increment para ID e FOREIGN KEY para Compra.
CREATE TABLE IF NOT EXISTS despesa (
    id_des INT PRIMARY KEY AUTO_INCREMENT,
    nome_des VARCHAR(100),
    valor_des DECIMAL(10, 2),
    id_com_fk INT,
    FOREIGN KEY (id_com_fk) REFERENCES compra(id_com)
);

-- Tabela de Compra_Produto com auto_increment para ID e FOREIGN KEY para Produto e Compra.
CREATE TABLE IF NOT EXISTS compra_produto (
    id_cop INT PRIMARY KEY AUTO_INCREMENT,
    quantidade_cop DECIMAL(10, 2),
    preco_cop DECIMAL(10, 2),
    id_pro_fk INT,
    id_com_fk INT,
    FOREIGN KEY (id_pro_fk) REFERENCES produto(id_pro),
    FOREIGN KEY (id_com_fk) REFERENCES compra(id_com)
);

-- Tabela de Pagamento com auto_increment para ID e FOREIGN KEY para Despesa e Caixa.
CREATE TABLE IF NOT EXISTS pagamento (
    id_pag INT PRIMARY KEY AUTO_INCREMENT,
    tipo_pag VARCHAR(100),
    data_pag DATE,
    id_des_fk INT,
    id_cai_fk INT,
    FOREIGN KEY (id_des_fk) REFERENCES despesa(id_des),
    FOREIGN KEY (id_cai_fk) REFERENCES caixa(id_cai)
);
