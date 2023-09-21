CREATE DATABASE Empresa  DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

 CREATE TABLE endereco(
	idEndereco int not null AUTO_INCREMENT,
   	ruaEndereco varchar(50),
   	bairroEndereco varchar(30),
   	refernciaEndereco varchar(30),
   	cepEndereco varchar(9),
 	PRIMARY KEY(idEndereco)
)DEFAULT COLLATE utf8_general_ci;

CREATE TABLE produto (
 	idProduto INT NOT null AUTO_INCREMENT,
 	codProduto int(50),
	nomeProduto varchar(50),
 	precoProduto double,
	quantidadeProduto int,
 	PRIMARY KEY(idProduto)
)DEFAULT COLLATE utf8_general_ci;

CREATE table pessoa(
 	idPessoa int NOT null AUTO_INCREMENT,
 	nomePessoa varchar(50),
 	rgPessoa varchar(30),
 	cpfPessoa varchar(15),
	idEndereco INT,
	PRIMARY key(idPessoa),
	FOREIGN KEY(idEndereco) REFERENCES endereco(idEndereco)
)DEFAULT COLLATE utf8_general_ci;

CREATE TABLE contato(
	idContato int not null AUTO_INCREMENT,
   	celularContato varchar(20),
   	telefoneContato varchar(20),
   	emailContato varchar(30),
   	idPessoa int,
    PRIMARY KEY(idContato),
   	FOREIGN KEY(idPessoa)REFERENCES pessoa(idPessoa)
)DEFAULT COLLATE utf8_general_ci;	

CREATE TABLE funcionario(
 	idFuncionario int not null AUTO_INCREMENT,
	matriculaFuncinario DATE,
	idPessoa int,
 	PRIMARY key(idFuncionario),
	FOREIGN KEY(idPessoa)REFERENCES pessoa(idPessoa)
)DEFAULT COLLATE utf8_general_ci;

CREATE TABLE  cliente (
	idCliente INT NOT null AUTO_INCREMENT,
 	codigoCliente int,
 	idPessoa INT,
	PRIMARY KEY(idCliente),
	FOREIGN KEY (idPessoa) REFERENCES Pessoa (idPessoa)
)DEFAULT COLLATE utf8_general_ci;

CREATE TABLE Dependente(
	idDependente int not null AUTO_INCREMENT,
	parentescoDependente varchar(50),
    nascimentoDependente date,
    idFuncionario int,
   	idPessoa int,
	PRIMARY KEY(idDependente),
    FOREIGN KEY(idFuncionario)REFERENCES Funcionario(idFuncionario),
FOREIGN KEY (idPessoa) REFERENCES Pessoa (idPessoa)
)DEFAULT COLLATE utf8_general_ci;

CREATE TABLE compra (
	idCompra INT NOT null AUTO_INCREMENT,
	dataCompra date,
 	qntItensCompra INT,
 	valorTotalCompra int,
 	idProduto INT,
 	idCliente INT,
 	idFuncionario INT,
	PRIMARY KEY(idCompra),
 	FOREIGN KEY(idFuncionario) REFERENCES funcionario(idFuncionario),
	FOREIGN KEY(idProduto) REFERENCES produto(idProduto),
 	FOREIGN KEY(idCliente) REFERENCES cliente (idCliente)
)DEFAULT COLLATE utf8_general_ci;

INSERT INTO endereco VALUES
	(1, "rua 1", "bairro 1","Referencia 1", "12345"), 
	(DEFAULT, "rua 2", "bairro 2", " Referencia 2", "12346"),
	(DEFAULT, "rua 3", "bairro 3",  " Referencia 3","12347"), 
	(DEFAULT, "rua 4", "bairro 4", " Referencia 4", "12348"),
	(DEFAULT, "rua 5",  "bairro 5"," Referencia 5", "12349"),
	(DEFAULT, "rua 6", "bairro 6"," Referencia 6", "12350"), 
	(DEFAULT, "rua 7",  "bairro 7"," Referencia 7", "12351"),
	(DEFAULT, "rua 8",  "bairro 8"," Referencia 8", "12352"),
	(DEFAULT, "rua 9", "bairro 9", " Referencia  9", "12353"),
	(DEFAULT, "rua 10", "bairro 10", " Referencia  10", "12354"),
	(DEFAULT, "rua 11", "bairro 11", " Referencia  11", "12355"),
	(DEFAULT, "rua 12", "bairro 12", " Referencia  12", "12356"), 
	(DEFAULT, "rua 13", "bairro 13", " Referencia  13", "12357"),
	(DEFAULT, "rua 14", "bairro 14", " Referencia  14", "12358"),
	(DEFAULT, "rua 15","bairro 15", " Referencia  15",  "12359");
	
	INSERT INTO produto VALUES
	(1, 1234567891, "nome 1","1000",1),
	(2, 1234567892, "nome 2","2000", 2),
	(3, 1234567893, "nome 3","3000", 3),
	(4, 1234567894, "nome 4","4000", 4),
	(5, 1234567895, "nome 5","5000", 5),
	(6, 1234567896, "nome 6","6000", 6),
	(7, 1234567897, "nome 7","7000", 7),               
	(8, 1234567898, "nome 8","8000", 8),
	(9, 1234567899, "nome 9", "9000", 9),
	(10, 1234567810, "nome 10","10000", 10),
	(11, 1234567811, "nome 11","11000", 11),
	(12, 1234567812, "nome 12","12000", 12),
	(13, 1234567813, "nome 13","13000", 13),
	(14, 1234567814, "nome 14","14000", 14),
	(15, 1234567815," nome 15","15000", 15),
	(16, 1234567816, "nome 16","16000", 16),
	(17, 1234567817, "nome 17","17000", 17),
	(18, 1234567818, "nome 18","18000", 18),
	(19, 1234567819, "nome 19","19000", 19),
	(20, 1234567820, "nome 20","20000", 20),
	(21, 1234567821, "nome 21","21000", 21),
	(22, 1234567822, "nome 22", "22000", 22),
	(23, 1234567823, "nome 23","23000", 23),
	(24, 1234567824, "nome 24","24000", 24),
	(25, 1234567825, "nome 25","25000", 25),
	(26, 1234567826, "nome 26","26000", 26),
	(27, 1234567827, "nome 27", "2700", 27),
	(28, 1234567828, "nome 28","28000", 28),
	(29, 1234567829, "nome 29","29000", 29),
	(30, 1234567830, "nome 30","30000", 30);
	
INSERT INTO pessoa VALUES
	(1, "Nome 1","1234561", "12345678911",1),
	(2, "Nome 2","1234562","12345678912", 1),
	(DEFAULT, "Nome 3", "1234563", "12345678913", 2),
	(DEFAULT, "Nome 4","1234564", "12345678914", 2),
	(DEFAULT, "Nome 5","1234565", "12345678915", 3),
	(DEFAULT, "Nome 6", "1234566","12345678916", 4),
	(DEFAULT, "Nome 7", "1234567","12345678917", 3),
	(DEFAULT, "Nome 8", "1234568","12345678918", 4),
	(DEFAULT, "Nome 9","1234569", "12345678919", 5),
	(DEFAULT, "Nome 10", "1234510","12345678910", 5),
	(DEFAULT, "Nome 11", "1234511","12345678911", 7),
	(DEFAULT, "Nome 12","1234512", "12345678912", 6),
	(DEFAULT, "Nome 13","1234513", "12345678913", 8),
	(DEFAULT, "Nome 14","1234514", "12345678914", 9),
	(DEFAULT, "Nome 15","1234515", "12345678915", 10),
	(DEFAULT, "Nome 16","1234516", "12345678916", 11),
	(DEFAULT, "Nome 17","1234517","12345678917", 12),
	(DEFAULT, "Nome 18","1234518","12345678918", 13),
	(DEFAULT, "Nome 19","1234519","12345678919", 14),
	(DEFAULT, "Nome 20","1234520", "12345678920", 13),
	(DEFAULT, "Nome 21","1234521", "12345678921", 6),
	(DEFAULT, "Nome 22","1234522", "12345678922", 8),
	(DEFAULT, "Nome 23","1234523", "12345678923", 15),
	(DEFAULT, "Nome 24","1234524","12345678924", 6),
	(DEFAULT, "Nome 25", "1234525","12345678925", 15);
	
	INSERT INTO contato VALUES
	(1, "(81)91234-5674", "(81)3497-1234", "QWERTY@gmail.com",1),
	(DEFAULT, "(81)91234-5675", "(81)3497-1235", "QWERTY@gmail.com",1),
	(DEFAULT, "(81)91234-5676", "(81)3497-1236", "WWERTY@gmail.com",2),
	(DEFAULT, "(81)91234-5677", "(81)3497-1237", "EWERTY@gmail.com",3),
	(DEFAULT, "(81)91234-5678", "(81)3497-1238", "RWERTY@gmail.com",25),
	(DEFAULT, "(81)91234-5679", "(81)3497-1239", "TWERTY@gmail.com",18),
	(DEFAULT, "(81)91234-5620", "(81)3497-1220", "YWERTY@gmail.com",15),
	(DEFAULT, "(81)91234-5621", "(81)3497-1221", "UWERTY@gmail.com",16),
	(DEFAULT, "(81)91234-5622", "(81)3497-1222", "IWERTY@gmail.com",19),
	(DEFAULT, "(81)91234-5623", "(81)3497-1223", "OWERTY@gmail.com",4),
	(DEFAULT, "(81)91234-5624", "(81)3497-1224", "PWERTY@gmail.com",6),
	(DEFAULT, "(81)91234-5625", "(81)3497-1225", "AWERTY@gmail.com",9),
	(DEFAULT, "(81)91234-5678", "(81)3497-1234", "SWERTY@gmail.com",8),
	(DEFAULT, "(81)91234-5678", "(81)3497-1234", "DWERTY@gmail.com",5),
	(DEFAULT, "(81)91234-5678", "(81)3497-1234", "QWERTY@gmail.com",11);
	
	INSERT INTO funcionario VALUES
	 (1, "2020-01-01",1), 
	 (DEFAULT, "2020-01-02",2),
 	 (DEFAULT, "2020-01-03",3),
  	 (DEFAULT, "2020-01-04",4),
 	 (DEFAULT, "2020-01-05",5);
	 
	 INSERT INTO dependente VALUES
		(1,"FILHO","2010-01-01",1,1),
		(DEFAULT,"MULHER","2010-01-03", 4, 4),
		(DEFAULT,"PAI","2010-01-04", 2, 2),
		(DEFAULT,"MÃE","2010-01-05", 3, 3),
		(DEFAULT,"IRMÃO","2010-01-06", 5, 5),
		(DEFAULT,"ENTEADO","2010-01-07", DEFAULT, 6),
		(DEFAULT,"FILHO","2010-01-08", DEFAULT, 7),
		(DEFAULT,"IRMÃ","2010-01-10", DEFAULT, 8),
		(DEFAULT,"SOGRA","2010-01-19", DEFAULT, 10),
		(DEFAULT,"PAI","2010-01-11", DEFAULT, 9);
		
		INSERT INTO cliente VALUES
			(1, 1,1),
			(DEFAULT, 2,6),
			(DEFAULT, 3,7),
			(DEFAULT, 4,8),
			(DEFAULT, 5,9),
			(DEFAULT, 6,10),
			(DEFAULT, 7,11),
			(DEFAULT, 8,12),
			(DEFAULT, 9,13),
			(DEFAULT, 10,14);


INSERT INTO compra VALUES 
	(1, "2020-05-01" , "1", "1000" , DEFAULT, 1, 1), 
	(2, "2020-05-02" , "2", "2000" ,DEFAULT, 2 , 2),
	(3, "2020-05-03" , "3", "3000" , DEFAULT, 5 , 3),
	(4, "2020-05-04" , "4", "4000" , DEFAULT, 6 , 4),
	(5, "2020-05-05" , "5", "5000" , DEFAULT, 7 , 5),
	(6, "2020-05-06" , "6", "6000" , DEFAULT, 8 , 5),
	(7, "2020-05-07" , "7", "7000" , DEFAULT, 9 , 4),
	(8, "2020-05-08" , "8", "8000" , DEFAULT, 10 , 3),
	(9, "2020-05-09" , "9", "9000" , DEFAULT, 2 , 2),
	(10, "2020-05-10" , "10", "10000" , DEFAULT, 4 , 1),
	(11, "2020-05-11" , "11", "11000" , DEFAULT, 8 , 4),
	(12, "2020-05-12" , "12", "12000" , DEFAULT, 3 , 5),
	(13, "2020-05-13" , "13", "13000" , DEFAULT, 6 , 2),
	(14, "2020-05-14" , "14", "14000" , DEFAULT, 5 , 3),
	(15, "2020-05-15" , "15", "15000" , DEFAULT, 7 , 5),
	(16, "2020-05-16" , "16", "16000" , DEFAULT, 9 , 4),
	(17, "2020-05-17" , "17", "17000" , DEFAULT, 10 , 1),
	(18, "2020-05-18" , "18", "18000" , DEFAULT, 1 , 2),
	(19, "2020-05-19" , "19", "19000" , DEFAULT, 3 , 2),
	(20, "2020-05-20" , "20", "20000" , DEFAULT, 4 , 1);



    ALTER TABLE pessoa ADD PesoPessoa varchar (20);
	ALTER TABLE pessoa ADD alturaPessoa varchar (20);
	ALTER TABLE pessoa ADD ProfissãoPessoa varchar (30);

CREATE TABLE pagamento(
    idPagamento int not null AUTO_INCREMENT,
    formaPagamento varchar(20),
    PRIMARY KEY(idPagamento)
)DEFAULT COLLATE utf8_general_ci;

ALTER TABLE compra ADD COLUMN idPagamento int;
ALTER TABLE compra ADD  FOREIGN KEY(idPagamento) REFERENCES pagamento(idPagamento);

	INSERT INTO pagamento VALUES
	(1,"avista"),
	(2,"cartão");
	
	UPDATE `pagamento` SET formaPagamento = "a_vista";

/* poderia ter feito para todas as chaves primárias e estrangeiras, 
mas como montei meu banco dessa forma. Estou mostrando
 o comando para dizer que aprendi*/

UPDATE pessoa SET `idEndereco` = 3 WHERE idPessoa = 1;



SELECT * FROM dependente INNER JOIN cliente ON dependente.idPessoa = cliente.idPessoa /* mostra os clientes que possuem dependente*/


SELECT * FROM funcionario INNER JOIN pessoa ON funcionario.idPessoa = pessoa.idPessoa /* mostra todas as pessoas que são funcionario*/ 
SELECT* FROM compra INNER JOIN cliente ON compra.idCliente = cliente.idCliente /* mostra todos os clientes que fizeram compras*/
SELECT qntItensCompra, COUNT(idCliente)FROM compra GROUP BY qntItensCompra ORDER BY qntItensCompra;/* ordena por nome e coluna*/

/* Peco desculpas por não ter conseguido resolver o restante. Muito obrigado Professora!*/