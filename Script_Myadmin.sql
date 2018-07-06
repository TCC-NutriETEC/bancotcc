-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06-Jul-2018 às 21:38
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `idadministrador` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alimentacao`
--

CREATE TABLE `alimentacao` (
  `idalimentacao` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `alimento_quantidade_alimento` int(11) NOT NULL,
  `alimento_quantidade_modo_preparacao_idmodo_preparacao` int(11) NOT NULL,
  `unidade_medida_idmedida` int(11) NOT NULL,
  `caloria` float NOT NULL,
  `proteina` float NOT NULL,
  `carboidrato` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alimento_quantidade`
--

CREATE TABLE `alimento_quantidade` (
  `alimento` int(11) NOT NULL,
  `nome_alimento` varchar(45) NOT NULL,
  `caloria` float NOT NULL,
  `proteina` float NOT NULL,
  `carboidrato` float NOT NULL,
  `numero_quantidade` float NOT NULL,
  `modo_preparacao_idmodo_preparacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `faq`
--

CREATE TABLE `faq` (
  `idfaq` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `texto` longtext NOT NULL,
  `administrador_idadministrador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupo`
--

CREATE TABLE `grupo` (
  `idgrupo` int(11) NOT NULL,
  `patologia` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `data` date NOT NULL,
  `usuarios_idusuarios` int(11) NOT NULL,
  `alimentacao_idalimentacao` int(11) NOT NULL,
  `refeicao_idrefeicao` int(11) NOT NULL,
  `quant_agua` int(11) NOT NULL,
  `quant_caloria` float NOT NULL,
  `quant_proteina` float NOT NULL,
  `quant_carboidrato` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `modo_preparacao`
--

CREATE TABLE `modo_preparacao` (
  `idmodo_preparacao` int(11) NOT NULL,
  `modo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pratica_exercicio`
--

CREATE TABLE `pratica_exercicio` (
  `idpratica_exercicio` int(1) NOT NULL,
  `pratica` varchar(45) NOT NULL,
  `complemento` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- Error reading data for table tcc.pratica_exercicio: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `tcc`.`pratica_exercicio`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `receitas`
--

CREATE TABLE `receitas` (
  `idreceitas` int(11) NOT NULL,
  `receita` longtext NOT NULL,
  `grupo_idgrupo` int(11) NOT NULL,
  `administrador_idadministrador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- Error reading data for table tcc.receitas: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `tcc`.`receitas`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `refeicao`
--

CREATE TABLE `refeicao` (
  `idrefeicao` int(11) NOT NULL,
  `refeicao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade_medida`
--

CREATE TABLE `unidade_medida` (
  `idmedida` int(11) NOT NULL,
  `medida` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `peso` float NOT NULL,
  `altura` float NOT NULL,
  `data_nascimento` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `objetivo` int(1) NOT NULL,
  `pratica_exercicio_idpratica_exercicio` int(1) NOT NULL,
  `obs` longtext,
  `administrador_idadministrador` int(11) NOT NULL,
  `qunatidade_agua` int(11) NOT NULL,
  `calorias_dia` float NOT NULL,
  `proteina_dia` float NOT NULL,
  `carboidrato_dia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`idadministrador`);

--
-- Indexes for table `alimentacao`
--
ALTER TABLE `alimentacao`
  ADD PRIMARY KEY (`idalimentacao`),
  ADD KEY `fk_alimentacao_alimento_quantidade1_idx` (`alimento_quantidade_alimento`,`alimento_quantidade_modo_preparacao_idmodo_preparacao`),
  ADD KEY `fk_alimentacao_unidade_medida1_idx` (`unidade_medida_idmedida`);

--
-- Indexes for table `alimento_quantidade`
--
ALTER TABLE `alimento_quantidade`
  ADD PRIMARY KEY (`alimento`,`modo_preparacao_idmodo_preparacao`),
  ADD UNIQUE KEY `caloria_UNIQUE` (`caloria`),
  ADD KEY `fk_alimento_quantidade_modo_preparacao1_idx` (`modo_preparacao_idmodo_preparacao`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`idfaq`),
  ADD KEY `fk_faq_administrador1_idx` (`administrador_idadministrador`);

--
-- Indexes for table `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`idgrupo`);

--
-- Indexes for table `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`usuarios_idusuarios`,`alimentacao_idalimentacao`,`refeicao_idrefeicao`,`data`),
  ADD KEY `fk_historico_usuarios1_idx` (`usuarios_idusuarios`),
  ADD KEY `fk_historico_alimentacao1_idx` (`alimentacao_idalimentacao`),
  ADD KEY `fk_historico_refeicao1_idx` (`refeicao_idrefeicao`);

--
-- Indexes for table `modo_preparacao`
--
ALTER TABLE `modo_preparacao`
  ADD PRIMARY KEY (`idmodo_preparacao`);

--
-- Indexes for table `pratica_exercicio`
--
ALTER TABLE `pratica_exercicio`
  ADD PRIMARY KEY (`idpratica_exercicio`);

--
-- Indexes for table `receitas`
--
ALTER TABLE `receitas`
  ADD PRIMARY KEY (`idreceitas`),
  ADD KEY `fk_receitas_grupo1_idx` (`grupo_idgrupo`),
  ADD KEY `fk_receitas_administrador1_idx` (`administrador_idadministrador`);

--
-- Indexes for table `refeicao`
--
ALTER TABLE `refeicao`
  ADD PRIMARY KEY (`idrefeicao`);

--
-- Indexes for table `unidade_medida`
--
ALTER TABLE `unidade_medida`
  ADD PRIMARY KEY (`idmedida`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuarios`),
  ADD KEY `fk_usuarios_administrador_idx` (`administrador_idadministrador`),
  ADD KEY `fk_usuarios_pratica_exercicio1_idx` (`pratica_exercicio_idpratica_exercicio`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrador`
--
ALTER TABLE `administrador`
  MODIFY `idadministrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `alimentacao`
--
ALTER TABLE `alimentacao`
  MODIFY `idalimentacao` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `idfaq` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grupo`
--
ALTER TABLE `grupo`
  MODIFY `idgrupo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modo_preparacao`
--
ALTER TABLE `modo_preparacao`
  MODIFY `idmodo_preparacao` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `receitas`
--
ALTER TABLE `receitas`
  MODIFY `idreceitas` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `unidade_medida`
--
ALTER TABLE `unidade_medida`
  MODIFY `idmedida` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuarios` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `alimentacao`
--
ALTER TABLE `alimentacao`
  ADD CONSTRAINT `fk_alimentacao_alimento_quantidade1` FOREIGN KEY (`alimento_quantidade_alimento`,`alimento_quantidade_modo_preparacao_idmodo_preparacao`) REFERENCES `alimento_quantidade` (`alimento`, `modo_preparacao_idmodo_preparacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alimentacao_unidade_medida1` FOREIGN KEY (`unidade_medida_idmedida`) REFERENCES `unidade_medida` (`idmedida`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `alimento_quantidade`
--
ALTER TABLE `alimento_quantidade`
  ADD CONSTRAINT `fk_alimento_quantidade_modo_preparacao1` FOREIGN KEY (`modo_preparacao_idmodo_preparacao`) REFERENCES `modo_preparacao` (`idmodo_preparacao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `faq`
--
ALTER TABLE `faq`
  ADD CONSTRAINT `fk_faq_administrador1` FOREIGN KEY (`administrador_idadministrador`) REFERENCES `administrador` (`idadministrador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `fk_historico_alimentacao1` FOREIGN KEY (`alimentacao_idalimentacao`) REFERENCES `alimentacao` (`idalimentacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_historico_refeicao1` FOREIGN KEY (`refeicao_idrefeicao`) REFERENCES `refeicao` (`idrefeicao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_historico_usuarios1` FOREIGN KEY (`usuarios_idusuarios`) REFERENCES `usuarios` (`idusuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `receitas`
--
ALTER TABLE `receitas`
  ADD CONSTRAINT `fk_receitas_administrador1` FOREIGN KEY (`administrador_idadministrador`) REFERENCES `administrador` (`idadministrador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_receitas_grupo1` FOREIGN KEY (`grupo_idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_administrador` FOREIGN KEY (`administrador_idadministrador`) REFERENCES `administrador` (`idadministrador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuarios_pratica_exercicio1` FOREIGN KEY (`pratica_exercicio_idpratica_exercicio`) REFERENCES `pratica_exercicio` (`idpratica_exercicio`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
