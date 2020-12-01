-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Nov-2020 às 22:40
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `empresa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `codigoCliente` int(11) DEFAULT NULL,
  `idPessoa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `codigoCliente`, `idPessoa`) VALUES
(1, 1, 1),
(2, 2, 6),
(3, 3, 7),
(4, 4, 8),
(5, 5, 9),
(6, 6, 10),
(7, 7, 11),
(8, 8, 12),
(9, 9, 13),
(10, 10, 14);

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

CREATE TABLE `compra` (
  `idCompra` int(11) NOT NULL,
  `dataCompra` date DEFAULT NULL,
  `qntItensCompra` int(11) DEFAULT NULL,
  `valorTotalCompra` int(11) DEFAULT NULL,
  `idProduto` int(11) DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `idPagamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `compra`
--

INSERT INTO `compra` (`idCompra`, `dataCompra`, `qntItensCompra`, `valorTotalCompra`, `idProduto`, `idCliente`, `idFuncionario`, `idPagamento`) VALUES
(1, '2020-05-01', 1, 1000, NULL, 1, 1, NULL),
(2, '2020-05-02', 2, 2000, NULL, 2, 2, NULL),
(3, '2020-05-03', 3, 3000, NULL, 5, 3, NULL),
(4, '2020-05-04', 4, 4000, NULL, 6, 4, NULL),
(5, '2020-05-05', 5, 5000, NULL, 7, 5, NULL),
(6, '2020-05-06', 6, 6000, NULL, 8, 5, NULL),
(7, '2020-05-07', 7, 7000, NULL, 9, 4, NULL),
(8, '2020-05-08', 8, 8000, NULL, 10, 3, NULL),
(9, '2020-05-09', 9, 9000, NULL, 2, 2, NULL),
(10, '2020-05-10', 10, 10000, NULL, 4, 1, NULL),
(11, '2020-05-11', 11, 11000, NULL, 8, 4, NULL),
(12, '2020-05-12', 12, 12000, NULL, 3, 5, NULL),
(13, '2020-05-13', 13, 13000, NULL, 6, 2, NULL),
(14, '2020-05-14', 14, 14000, NULL, 5, 3, NULL),
(15, '2020-05-15', 15, 15000, NULL, 7, 5, NULL),
(16, '2020-05-16', 16, 16000, NULL, 9, 4, NULL),
(17, '2020-05-17', 17, 17000, NULL, 10, 1, NULL),
(18, '2020-05-18', 18, 18000, NULL, 1, 2, NULL),
(19, '2020-05-19', 19, 19000, NULL, 3, 2, NULL),
(20, '2020-05-20', 20, 20000, NULL, 4, 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `idContato` int(11) NOT NULL,
  `celularContato` varchar(20) DEFAULT NULL,
  `telefoneContato` varchar(20) DEFAULT NULL,
  `emailContato` varchar(30) DEFAULT NULL,
  `idPessoa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`idContato`, `celularContato`, `telefoneContato`, `emailContato`, `idPessoa`) VALUES
(1, '(81)91234-5674', '(81)3497-1234', 'QWERTY@gmail.com', 1),
(2, '(81)91234-5675', '(81)3497-1235', 'QWERTY@gmail.com', 1),
(3, '(81)91234-5676', '(81)3497-1236', 'WWERTY@gmail.com', 2),
(4, '(81)91234-5677', '(81)3497-1237', 'EWERTY@gmail.com', 3),
(5, '(81)91234-5678', '(81)3497-1238', 'RWERTY@gmail.com', 25),
(6, '(81)91234-5679', '(81)3497-1239', 'TWERTY@gmail.com', 18),
(7, '(81)91234-5620', '(81)3497-1220', 'YWERTY@gmail.com', 15),
(8, '(81)91234-5621', '(81)3497-1221', 'UWERTY@gmail.com', 16),
(9, '(81)91234-5622', '(81)3497-1222', 'IWERTY@gmail.com', 19),
(10, '(81)91234-5623', '(81)3497-1223', 'OWERTY@gmail.com', 4),
(11, '(81)91234-5624', '(81)3497-1224', 'PWERTY@gmail.com', 6),
(12, '(81)91234-5625', '(81)3497-1225', 'AWERTY@gmail.com', 9),
(13, '(81)91234-5678', '(81)3497-1234', 'SWERTY@gmail.com', 8),
(14, '(81)91234-5678', '(81)3497-1234', 'DWERTY@gmail.com', 5),
(15, '(81)91234-5678', '(81)3497-1234', 'QWERTY@gmail.com', 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dependente`
--

CREATE TABLE `dependente` (
  `idDependente` int(11) NOT NULL,
  `parentescoDependente` varchar(50) DEFAULT NULL,
  `nascimentoDependente` date DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `idPessoa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `dependente`
--

INSERT INTO `dependente` (`idDependente`, `parentescoDependente`, `nascimentoDependente`, `idFuncionario`, `idPessoa`) VALUES
(1, 'FILHO', '2010-01-01', 1, 1),
(2, 'MULHER', '2010-01-03', 4, 4),
(3, 'PAI', '2010-01-04', 2, 2),
(4, 'MÃE', '2010-01-05', 3, 3),
(5, 'IRMÃO', '2010-01-06', 5, 5),
(6, 'ENTEADO', '2010-01-07', NULL, 6),
(7, 'FILHO', '2010-01-08', NULL, 7),
(8, 'IRMÃ', '2010-01-10', NULL, 8),
(9, 'SOGRA', '2010-01-19', NULL, 10),
(10, 'PAI', '2010-01-11', NULL, 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL,
  `ruaEndereco` varchar(50) DEFAULT NULL,
  `bairroEndereco` varchar(30) DEFAULT NULL,
  `refernciaEndereco` varchar(30) DEFAULT NULL,
  `cepEndereco` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idEndereco`, `ruaEndereco`, `bairroEndereco`, `refernciaEndereco`, `cepEndereco`) VALUES
(1, 'rua 1', 'bairro 1', 'Referencia 1', '12345'),
(2, 'rua 2', 'bairro 2', ' Referencia 2', '12346'),
(3, 'rua 3', 'bairro 3', ' Referencia 3', '12347'),
(4, 'rua 4', 'bairro 4', ' Referencia 4', '12348'),
(5, 'rua 5', 'bairro 5', ' Referencia 5', '12349'),
(6, 'rua 6', 'bairro 6', ' Referencia 6', '12350'),
(7, 'rua 7', 'bairro 7', ' Referencia 7', '12351'),
(8, 'rua 8', 'bairro 8', ' Referencia 8', '12352'),
(9, 'rua 9', 'bairro 9', ' Referencia  9', '12353'),
(10, 'rua 10', 'bairro 10', ' Referencia  10', '12354'),
(11, 'rua 11', 'bairro 11', ' Referencia  11', '12355'),
(12, 'rua 12', 'bairro 12', ' Referencia  12', '12356'),
(13, 'rua 13', 'bairro 13', ' Referencia  13', '12357'),
(14, 'rua 14', 'bairro 14', ' Referencia  14', '12358'),
(15, 'rua 15', 'bairro 15', ' Referencia  15', '12359');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idFuncionario` int(11) NOT NULL,
  `matriculaFuncinario` date DEFAULT NULL,
  `idPessoa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idFuncionario`, `matriculaFuncinario`, `idPessoa`) VALUES
(1, '2020-01-01', 1),
(2, '2020-01-02', 2),
(3, '2020-01-03', 3),
(4, '2020-01-04', 4),
(5, '2020-01-05', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `idPagamento` int(11) NOT NULL,
  `formaPagamento` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pagamento`
--

INSERT INTO `pagamento` (`idPagamento`, `formaPagamento`) VALUES
(1, 'a_vista'),
(2, 'a_vista');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `idPessoa` int(11) NOT NULL,
  `nomePessoa` varchar(50) DEFAULT NULL,
  `rgPessoa` varchar(30) DEFAULT NULL,
  `cpfPessoa` varchar(15) DEFAULT NULL,
  `idEndereco` int(11) DEFAULT NULL,
  `PesoPessoa` varchar(20) DEFAULT NULL,
  `alturaPessoa` varchar(20) DEFAULT NULL,
  `ProfissãoPessoa` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`idPessoa`, `nomePessoa`, `rgPessoa`, `cpfPessoa`, `idEndereco`, `PesoPessoa`, `alturaPessoa`, `ProfissãoPessoa`) VALUES
(1, 'Nome 1', '1234561', '12345678911', 3, NULL, NULL, NULL),
(2, 'Nome 2', '1234562', '12345678912', 1, NULL, NULL, NULL),
(3, 'Nome 3', '1234563', '12345678913', 2, NULL, NULL, NULL),
(4, 'Nome 4', '1234564', '12345678914', 2, NULL, NULL, NULL),
(5, 'Nome 5', '1234565', '12345678915', 3, NULL, NULL, NULL),
(6, 'Nome 6', '1234566', '12345678916', 4, NULL, NULL, NULL),
(7, 'Nome 7', '1234567', '12345678917', 3, NULL, NULL, NULL),
(8, 'Nome 8', '1234568', '12345678918', 4, NULL, NULL, NULL),
(9, 'Nome 9', '1234569', '12345678919', 5, NULL, NULL, NULL),
(10, 'Nome 10', '1234510', '12345678910', 5, NULL, NULL, NULL),
(11, 'Nome 11', '1234511', '12345678911', 7, NULL, NULL, NULL),
(12, 'Nome 12', '1234512', '12345678912', 6, NULL, NULL, NULL),
(13, 'Nome 13', '1234513', '12345678913', 8, NULL, NULL, NULL),
(14, 'Nome 14', '1234514', '12345678914', 9, NULL, NULL, NULL),
(15, 'Nome 15', '1234515', '12345678915', 10, NULL, NULL, NULL),
(16, 'Nome 16', '1234516', '12345678916', 11, NULL, NULL, NULL),
(17, 'Nome 17', '1234517', '12345678917', 12, NULL, NULL, NULL),
(18, 'Nome 18', '1234518', '12345678918', 13, NULL, NULL, NULL),
(19, 'Nome 19', '1234519', '12345678919', 14, NULL, NULL, NULL),
(20, 'Nome 20', '1234520', '12345678920', 13, NULL, NULL, NULL),
(21, 'Nome 21', '1234521', '12345678921', 6, NULL, NULL, NULL),
(22, 'Nome 22', '1234522', '12345678922', 8, NULL, NULL, NULL),
(23, 'Nome 23', '1234523', '12345678923', 15, NULL, NULL, NULL),
(24, 'Nome 24', '1234524', '12345678924', 6, NULL, NULL, NULL),
(25, 'Nome 25', '1234525', '12345678925', 15, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idProduto` int(11) NOT NULL,
  `codProduto` int(50) DEFAULT NULL,
  `nomeProduto` varchar(50) DEFAULT NULL,
  `precoProduto` double DEFAULT NULL,
  `quantidadeProduto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idProduto`, `codProduto`, `nomeProduto`, `precoProduto`, `quantidadeProduto`) VALUES
(1, 1234567891, 'nome 1', 1000, 1),
(2, 1234567892, 'nome 2', 2000, 2),
(3, 1234567893, 'nome 3', 3000, 3),
(4, 1234567894, 'nome 4', 4000, 4),
(5, 1234567895, 'nome 5', 5000, 5),
(6, 1234567896, 'nome 6', 6000, 6),
(7, 1234567897, 'nome 7', 7000, 7),
(8, 1234567898, 'nome 8', 8000, 8),
(9, 1234567899, 'nome 9', 9000, 9),
(10, 1234567810, 'nome 10', 10000, 10),
(11, 1234567811, 'nome 11', 11000, 11),
(12, 1234567812, 'nome 12', 12000, 12),
(13, 1234567813, 'nome 13', 13000, 13),
(14, 1234567814, 'nome 14', 14000, 14),
(15, 1234567815, ' nome 15', 15000, 15),
(16, 1234567816, 'nome 16', 16000, 16),
(17, 1234567817, 'nome 17', 17000, 17),
(18, 1234567818, 'nome 18', 18000, 18),
(19, 1234567819, 'nome 19', 19000, 19),
(20, 1234567820, 'nome 20', 20000, 20),
(21, 1234567821, 'nome 21', 21000, 21),
(22, 1234567822, 'nome 22', 22000, 22),
(23, 1234567823, 'nome 23', 23000, 23),
(24, 1234567824, 'nome 24', 24000, 24),
(25, 1234567825, 'nome 25', 25000, 25),
(26, 1234567826, 'nome 26', 26000, 26),
(27, 1234567827, 'nome 27', 2700, 27),
(28, 1234567828, 'nome 28', 28000, 28),
(29, 1234567829, 'nome 29', 29000, 29),
(30, 1234567830, 'nome 30', 30000, 30);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `idPessoa` (`idPessoa`);

--
-- Índices para tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`idCompra`),
  ADD KEY `idFuncionario` (`idFuncionario`),
  ADD KEY `idProduto` (`idProduto`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idPagamento` (`idPagamento`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`idContato`),
  ADD KEY `idPessoa` (`idPessoa`);

--
-- Índices para tabela `dependente`
--
ALTER TABLE `dependente`
  ADD PRIMARY KEY (`idDependente`),
  ADD KEY `idFuncionario` (`idFuncionario`),
  ADD KEY `idPessoa` (`idPessoa`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idEndereco`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncionario`),
  ADD KEY `idPessoa` (`idPessoa`);

--
-- Índices para tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`idPagamento`);

--
-- Índices para tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`idPessoa`),
  ADD KEY `idEndereco` (`idEndereco`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idProduto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `compra`
--
ALTER TABLE `compra`
  MODIFY `idCompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `idContato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `dependente`
--
ALTER TABLE `dependente`
  MODIFY `idDependente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `idPagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `idPessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`idPessoa`);

--
-- Limitadores para a tabela `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`),
  ADD CONSTRAINT `compra_ibfk_3` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `compra_ibfk_4` FOREIGN KEY (`idPagamento`) REFERENCES `pagamento` (`idPagamento`);

--
-- Limitadores para a tabela `contato`
--
ALTER TABLE `contato`
  ADD CONSTRAINT `contato_ibfk_1` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`idPessoa`);

--
-- Limitadores para a tabela `dependente`
--
ALTER TABLE `dependente`
  ADD CONSTRAINT `dependente_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  ADD CONSTRAINT `dependente_ibfk_2` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`idPessoa`);

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`idPessoa`);

--
-- Limitadores para a tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD CONSTRAINT `pessoa_ibfk_1` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
