-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 18-Set-2018 às 17:06
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id5440282_nutricao`
--
CREATE DATABASE IF NOT EXISTS `id5440282_nutricao` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id5440282_nutricao`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `idadministrador` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`idadministrador`, `usuario`, `senha`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `alimentacao`
--

CREATE TABLE `alimentacao` (
  `idalimentacao` int(11) NOT NULL,
  `alimento_quantidade_modo_preparacao_idmodo_preparacao` int(11) NOT NULL,
  `alimento_quantidade_unidade_medida_idmedida` int(11) NOT NULL,
  `alimento_quantidade_alimento` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
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
  `modo_preparacao_idmodo_preparacao` int(11) NOT NULL,
  `unidade_medida_idmedida` int(11) NOT NULL,
  `nome_alimento` varchar(45) NOT NULL,
  `grama` float NOT NULL,
  `caloria` float NOT NULL,
  `proteina` float NOT NULL,
  `carboidrato` float NOT NULL,
  `fibra alimentar` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alimento_quantidade`
--

INSERT INTO `alimento_quantidade` (`alimento`, `modo_preparacao_idmodo_preparacao`, `unidade_medida_idmedida`, `nome_alimento`, `grama`, `caloria`, `proteina`, `carboidrato`, `fibra alimentar`) VALUES
(14, 1, 2, 'canjica, branca, crua', 45, 161, 3.2, 35.1, 0),
(3, 1, 4, 'aveia, flocos, crua', 5, 19, 0.6, 3.3, 0),
(14, 1, 4, 'canjica, branca, crua', 5, 17.9, 0.3, 3.9, 0),
(3, 1, 5, 'aveia, flocos, crua', 15, 59, 2, 10, 0),
(14, 1, 5, 'canjica, branca, crua', 15, 53.7, 1, 11.7, 0),
(14, 1, 7, 'canjica, branca, crua', 17, 60, 1.2, 13.2, 0),
(2, 1, 11, 'arroz integral, cru', 200, 720, 14.6, 155, 0),
(2, 1, 12, 'arroz integral, cru', 100, 360, 7.3, 77.5, 0),
(2, 1, 13, 'arroz integral, cru', 50, 180, 3.6, 38.7, 0),
(2, 1, 16, 'arroz integral, cru', 100, 360, 7.3, 77.5, 0),
(3, 1, 16, 'aveia, flocos, crua', 100, 394, 13.9, 66.6, 0),
(14, 1, 16, 'canjica, branca, crua', 100, 358, 7.2, 78.1, 0),
(29, 1, 16, 'macarrão, trigo, cru', 100, 371, 10, 77.9, 0),
(30, 1, 16, 'macarrão, trigo, cru, com ovos', 100, 371, 10.3, 76.6, 0),
(41, 1, 16, 'pastel, massa, crua', 100, 310, 6.9, 57.4, 0),
(47, 1, 16, 'abóbora, cabotian, crua', 100, 39, 1.7, 8.4, 0),
(48, 1, 16, 'abóbora, menina brasileira, crua', 100, 14, 0.6, 3.3, 0),
(49, 1, 16, 'abóbora, moranga, crua', 100, 12, 1, 2.7, 0),
(51, 1, 16, 'abóbora, pescoço, cozida', 100, 24, 0.7, 6.1, 0),
(53, 1, 16, 'abóbrinha, italiana, crua', 100, 19, 1.1, 4.3, 0),
(55, 1, 16, 'abóbrinha, paulista, crua', 100, 31, 0.6, 7.9, 0),
(56, 1, 16, 'acelga, crua', 100, 21, 1.4, 4.6, 0),
(57, 1, 16, 'agrião, cru', 100, 17, 2.7, 2.3, 0),
(58, 1, 16, 'alface, americana, crua', 100, 9, 0.6, 1.7, 0),
(59, 1, 16, 'alface, crespa, crua', 100, 11, 1.3, 1.7, 0),
(60, 1, 16, 'alface, lisa, crua', 100, 14, 1.7, 2.4, 0),
(61, 1, 16, 'alface, roxa, crua', 100, 13, 0.9, 2.5, 0),
(62, 1, 16, 'alfavaca, crua', 100, 29, 2.7, 5.2, 0),
(63, 1, 16, 'alho poró, cru', 100, 32, 1.4, 6.9, 0),
(64, 1, 16, 'almeirão, cru', 100, 18, 1.8, 3.3, 0),
(70, 1, 16, 'batata, inglesa, crua', 100, 64, 1.8, 14.7, 0),
(73, 1, 16, 'berinjela, crua', 100, 20, 1.2, 4.4, 0),
(75, 1, 16, 'beterraba, crua', 100, 49, 1.9, 11.1, 0),
(78, 1, 16, 'brócolis, cru', 100, 25, 3.6, 4, 0),
(79, 1, 16, 'cebola, crua', 100, 39, 1.7, 8.9, 0),
(81, 1, 16, 'cenoura, crua', 100, 34, 1.3, 7.7, 0),
(82, 1, 16, 'chicória, crua', 100, 14, 1.1, 2.9, 0),
(87, 1, 16, 'espinafre, cru', 100, 16, 2, 2.6, 0),
(89, 1, 16, 'farinha de mandioca, cru', 100, 361, 1.6, 87.9, 0),
(90, 1, 16, 'inhame, cru', 100, 97, 2.1, 23.2, 0),
(98, 1, 16, 'pepino, cru', 100, 10, 0.9, 2, 0),
(99, 1, 16, 'pimentão, amarelo, cru', 100, 28, 1.2, 6, 0),
(100, 1, 16, 'pimentão, verde, cru', 100, 21, 1.1, 4.9, 0),
(101, 1, 16, 'pimentão, vermelho, cru', 100, 23, 1, 5.5, 0),
(102, 1, 16, 'quiabo, cru', 100, 30, 1.9, 6.4, 0),
(103, 1, 16, 'rabanete, cru', 100, 14, 1.4, 2.7, 0),
(104, 1, 16, 'repolho, branco, cru', 100, 17, 0.9, 3.9, 0),
(105, 1, 16, 'repolho, roxo, cru', 100, 31, 1.9, 7.2, 0),
(107, 1, 16, 'rúcula, crua', 100, 13, 1.8, 2.2, 0),
(108, 1, 16, 'salsa, crua', 100, 33, 3.3, 5.7, 0),
(110, 1, 16, 'serralha, crua', 100, 30, 2.7, 4.9, 0),
(111, 1, 16, 'taioba, crua', 100, 34, 2.9, 5.4, 0),
(112, 1, 16, 'tomate, com sementes, cru', 100, 15, 1.1, 3.1, 0),
(117, 1, 16, 'vagem, cru', 100, 25, 1.8, 5.3, 0),
(118, 1, 16, 'abacate, cru', 100, 96, 1.2, 6, 0),
(119, 1, 16, 'abacaxi, cru', 100, 48, 0.9, 12.3, 0),
(122, 1, 16, 'acerola, cru', 100, 33, 0.9, 8, 0),
(125, 1, 16, 'ameixa, crua', 100, 53, 0.8, 13.9, 0),
(126, 1, 16, 'banana, da terra, crua', 100, 128, 1.4, 33.7, 0),
(127, 1, 16, 'banana, figo, crua', 100, 105, 1.1, 27.8, 0),
(128, 1, 16, 'banana, maça, crua', 100, 87, 1.8, 22.3, 0),
(129, 1, 16, 'banana, nanica, crua', 100, 92, 1.4, 23.8, 0),
(130, 1, 16, 'banana, ouro, crua', 100, 112, 1.5, 29.3, 0),
(131, 1, 16, 'banana, pacova, crua', 100, 78, 1.2, 20.3, 0),
(132, 1, 16, 'banana, prata, crua', 100, 98, 1.3, 26, 0),
(133, 1, 16, 'cacau, cru', 100, 74, 1, 19.4, 0),
(134, 1, 16, 'cajú, cru', 100, 43, 1, 10.3, 0),
(137, 1, 16, 'cupuaçu, polpa', 100, 49, 0.8, 11.4, 0),
(138, 1, 16, 'fígo, cru', 100, 41, 1, 10.2, 0),
(140, 1, 16, 'goiaba branca', 100, 52, 0.9, 12.4, 0),
(141, 1, 16, 'goiaba vermelha', 100, 54, 1.1, 13, 0),
(142, 1, 16, 'graviola, crua', 100, 62, 0.8, 15.8, 0),
(144, 1, 16, 'jabuticaba', 100, 58, 0.6, 15.3, 0),
(145, 1, 16, 'jaca', 100, 88, 1.4, 22.5, 0),
(146, 1, 16, 'jambo ', 100, 27, 0.9, 6.5, 0),
(147, 1, 16, 'jamelão', 100, 41, 0.5, 10.6, 0),
(148, 1, 16, 'kiwi', 100, 51, 1.3, 11.5, 0),
(149, 1, 16, 'maça orgânica', 100, 52, 0.2, 13.8, 0),
(150, 1, 16, 'acerola orgânica', 100, 32, 0.4, 7.6, 0),
(151, 1, 16, 'amora', 100, 43, 1.3, 9.6, 0),
(1, 2, 2, 'arroz integral, cozido', 60, 74, 1.5, 15.4, 0),
(1, 2, 5, 'arroz integral, cozido', 20, 25, 0.5, 5.1, 0),
(1, 2, 8, 'arroz integral, cozido', 85, 105, 2.2, 21.9, 0),
(1, 2, 11, 'arroz integral, cozido', 200, 248, 5, 51, 0),
(1, 2, 12, 'arroz integral, cozido', 100, 124, 2, 25, 0),
(1, 2, 13, 'arroz integral, cozido', 50, 62, 1.3, 12.9, 0),
(1, 2, 16, 'arroz integral, cozido', 100, 124, 2.6, 25.8, 0),
(22, 2, 16, 'curau, milho verde', 100, 78, 2.4, 13.9, 0),
(31, 2, 16, 'pamonha, barra para cozimento, pré cozida', 100, 171, 2.6, 30.7, 0),
(44, 2, 16, 'polenta, cozida', 100, 103, 2.3, 23.3, 0),
(46, 2, 16, 'abóbora, cabotian, cozida', 100, 48, 1.4, 10.8, 0),
(52, 2, 16, 'abóbrinha, italiana, cozida', 100, 15, 1.1, 3, 0),
(66, 2, 16, 'batata, baroa, cozida', 100, 80, 0.9, 18.9, 0),
(67, 2, 16, 'batata, doce, cozida', 100, 77, 0.6, 18.4, 0),
(69, 2, 16, 'batata, inglesa, cozida', 100, 52, 1.2, 11.9, 0),
(72, 2, 16, 'berinjela, cozida', 100, 19, 0.7, 4.5, 0),
(74, 2, 16, 'beterraba, cozida', 100, 32, 1.3, 7.2, 0),
(77, 2, 16, 'brócolis, cozido', 100, 25, 2.1, 4.4, 0),
(80, 2, 16, 'cenoura, cozida', 100, 30, 0.8, 6.7, 0),
(83, 2, 16, 'chuchu, cozido', 100, 19, 0.4, 4.8, 0),
(86, 2, 16, 'couve-flor, cozida', 100, 19, 1.2, 3.9, 0),
(91, 2, 16, 'mandioca, cozida', 100, 125, 0.6, 30.1, 0),
(94, 2, 16, 'nhoque, batata, cozido', 100, 181, 5.9, 36.8, 0),
(97, 4, 16, 'pão de queijo, assado', 100, 363, 5.1, 34.2, 0),
(39, 5, 16, 'pastel, de carne, frito', 100, 388, 10.1, 43.8, 0),
(40, 5, 16, 'pastel, de queijo, frito', 100, 422, 8.7, 48.1, 0),
(42, 5, 16, 'pastel, massa,frita', 100, 570, 6, 49.3, 0),
(68, 5, 16, 'batata, frita, tipo chips (industrializada))', 100, 543, 5.6, 51.2, 0),
(71, 5, 16, 'batata, inglesa, frita', 100, 267, 5, 35.6, 0),
(93, 5, 16, 'mandioca, frita', 100, 300, 1.4, 50.3, 0),
(50, 7, 16, 'abóbora, moranga, refogada', 100, 29, 0.4, 6, 0),
(54, 7, 16, 'abóbrinha, italiana, refogada', 100, 24, 1.1, 4.2, 0),
(65, 7, 16, 'almeirão, refogado', 100, 65, 1.7, 5.7, 0),
(85, 7, 16, 'couve, refogada', 100, 90, 1.7, 8.7, 0),
(88, 7, 16, 'espinafre, refogado', 100, 67, 2.7, 4.2, 0),
(106, 7, 16, 'repolho, roxo, refogado', 100, 42, 1.8, 7.6, 0),
(84, 11, 16, 'couve, com manteiga', 100, 27, 2.9, 4.3, 0),
(116, 12, 16, 'tomate, salada', 100, 21, 0.8, 5.1, 0),
(28, 13, 16, 'macarrão, instantaneo', 100, 436, 8.8, 62.4, 0),
(17, 14, 16, 'cereais, mingau, milho, infantil', 100, 394, 6.4, 87.3, 0),
(15, 16, 2, 'canjica, com leite integral', 45, 50, 1, 10.6, 0),
(16, 16, 2, 'cereais, milho, flocos, com sal', 45, 166.5, 3.2, 36.3, 0),
(16, 16, 4, 'cereais, milho, flocos, com sal', 5, 18.5, 0.3, 4, 0),
(16, 16, 5, 'cereais, milho, flocos, com sal', 15, 55.5, 1, 12.1, 0),
(4, 16, 14, 'biscoito, doce, maisena', 4, 17.7, 0.3, 3, 0),
(5, 16, 14, 'biscoito, doce, recheado com chocolate', 10, 47.2, 0.6, 7, 0),
(6, 16, 14, 'biscoito, doce, recheado com morango', 10, 47, 0.5, 7, 0),
(7, 16, 14, 'biscoito, doce, wafer, recheado de chocolate', 7.5, 37, 0.4, 5, 0),
(8, 16, 14, 'biscoito, doce, wafer, recheado de morango', 7.5, 38, 0.3, 5, 0),
(9, 16, 14, 'biscoito, salgado, cream cracker', 5, 21.6, 0.5, 3, 0),
(4, 16, 16, 'biscoito, doce, maisena', 100, 443, 8.1, 75.2, 0),
(5, 16, 16, 'biscoito, doce, recheado com chocolate', 100, 472, 6.4, 70.5, 0),
(6, 16, 16, 'biscoito, doce, recheado com morango', 100, 471, 5.7, 71, 0),
(7, 16, 16, 'biscoito, doce, wafer, recheado de chocolate', 100, 502, 5.6, 67.5, 0),
(8, 16, 16, 'biscoito, doce, wafer, recheado de morango', 100, 513, 4.5, 67.4, 0),
(9, 16, 16, 'biscoito, salgado, cream cracker', 100, 432, 10.1, 68.7, 0),
(10, 16, 16, 'bolo, pronto, aipim', 100, 324, 4.4, 47.9, 0),
(11, 16, 16, 'bolo, pronto, chocolate', 100, 410, 6.2, 54.7, 0),
(12, 16, 16, 'bolo, pronto, coco', 100, 333, 5.7, 52.3, 0),
(13, 16, 16, 'bolo, pronto, milho', 100, 311, 4.8, 45.1, 0),
(15, 16, 16, 'canjica, com leite integral', 100, 112, 2.4, 23.6, 0),
(16, 16, 16, 'cereais, milho, flocos, com sal', 100, 370, 7.3, 80.8, 0),
(18, 16, 16, 'cereal matinal, milho', 100, 365, 7.2, 83.8, 0),
(19, 16, 16, 'cereais matinal, milho, com açucar', 100, 377, 4.7, 88.8, 0),
(20, 16, 16, 'crema de arroz, pó', 100, 386, 7, 83.9, 0),
(21, 16, 16, 'creme de milho, pó', 100, 333, 4.8, 86.1, 0),
(23, 16, 16, 'farinha de arroz', 100, 363, 1.3, 85.5, 0),
(24, 16, 16, 'farinha, de centeio, integral', 100, 336, 12.5, 73.3, 0),
(25, 16, 16, 'farinha, de milho, amarela', 100, 351, 7.2, 79.1, 0),
(26, 16, 16, 'farinha, de rosca', 100, 371, 11.4, 75.8, 0),
(27, 16, 16, 'farinha, láctea de cereais ', 100, 415, 11.9, 77.8, 0),
(32, 16, 16, 'pão, aveia, forma', 100, 343, 12.4, 59.6, 0),
(33, 16, 16, 'pão, de soja', 100, 309, 11.3, 56.5, 0),
(34, 16, 16, 'pão, de glúten, forma', 100, 253, 12, 44.1, 0),
(35, 16, 16, 'pão, milho, forma', 100, 292, 8.3, 56.4, 0),
(36, 16, 16, 'pão, trigo, forma, integral', 100, 253, 9.4, 50, 0),
(37, 16, 16, 'pão, trigo, frances', 100, 300, 8, 58.6, 0),
(38, 16, 16, 'pão,, trigo, sovado', 100, 311, 8.4, 61.5, 0),
(43, 16, 16, 'pipoca', 100, 448, 9.9, 70.3, 0),
(45, 16, 16, 'torrada, pão frances', 100, 377, 10.5, 74.6, 0),
(76, 16, 16, 'biscoito, povilho doce', 100, 438, 1.3, 80.5, 0),
(92, 16, 16, 'mandioca, farofa, temparada', 100, 406, 2.1, 80.3, 0),
(120, 16, 16, 'abacaxi, polpa', 100, 31, 0.5, 7.8, 0),
(121, 16, 16, 'açai', 100, 58, 0.8, 6.2, 0),
(123, 16, 16, 'acerola, polpa', 100, 22, 0.6, 5.5, 0),
(135, 16, 16, 'cajú, polpa', 100, 37, 0.5, 9.4, 0),
(143, 16, 16, 'graviola polpa', 100, 38, 0.6, 9.8, 0),
(152, 16, 16, 'açúcar mascavo', 100, 380, 0.12, 98, 0),
(153, 16, 16, 'rapadura', 100, 296, 0, 76, 0),
(157, 16, 16, 'laranja, baía', 100, 45, 1, 11.5, 0),
(159, 16, 16, 'laranja, da terra', 100, 51, 1.1, 12.9, 0),
(161, 16, 16, 'laranja, lima', 100, 46, 1.1, 11.5, 0),
(163, 16, 16, 'laranja, pera', 100, 37, 1, 8.9, 0),
(165, 16, 16, 'mamão, formosa', 100, 45, 0.8, 11.6, 0),
(166, 16, 16, 'mamão, papaia', 100, 40, 0.5, 10.4, 0),
(167, 16, 16, 'manga, haden', 100, 64, 0.4, 16.7, 0),
(168, 16, 16, 'manga, palmer', 100, 72, 0.4, 19.4, 0),
(169, 16, 16, 'manga, tommy', 100, 51, 0.9, 12.8, 0),
(170, 16, 16, 'maracujá', 100, 68, 2, 12.3, 0),
(172, 16, 16, 'melancia', 100, 33, 0.9, 8.1, 0),
(173, 16, 16, 'melão', 100, 29, 0.7, 7.5, 0),
(174, 16, 16, 'mexerica, murcote', 100, 58, 0.9, 14.9, 0),
(175, 16, 16, 'mexerica, rio', 100, 37, 0.7, 9.3, 0),
(176, 16, 16, 'morango', 100, 30, 0.9, 6.8, 0),
(177, 16, 16, 'pera, park', 100, 61, 0.2, 16.1, 0),
(178, 16, 16, 'pera, willians', 100, 53, 0.6, 14, 0),
(179, 16, 16, 'pessego, aurora', 100, 36, 0.8, 9.3, 0),
(181, 16, 16, 'romã', 100, 56, 0.4, 15.1, 0),
(182, 16, 16, 'tamarindo', 100, 276, 3.2, 72.5, 0),
(183, 16, 16, 'tangerina, poncã', 100, 38, 0.8, 9.6, 0),
(4, 16, 17, 'biscoito, doce, maisena', 200, 886, 16.2, 150.4, 0),
(5, 16, 17, 'biscoito, doce, recheado com chocolate', 136, 642, 8, 95, 0),
(6, 16, 17, 'biscoito, doce, recheado com morango', 120, 565.2, 6.8, 85, 0),
(7, 16, 17, 'biscoito, doce, wafer, recheado de chocolate', 140, 702, 7.8, 94.5, 0),
(8, 16, 17, 'biscoito, doce, wafer, recheado de morango', 140, 718, 6.3, 94.3, 0),
(9, 16, 17, 'biscoito, salgado, cream cracker', 200, 864, 20.2, 137.4, 0),
(95, 18, 16, 'palmito, juçara, em conserva', 100, 23, 1.8, 4.3, 0),
(96, 18, 16, 'palmito, pupunha, em conserva', 100, 29, 2.5, 5.5, 0),
(109, 19, 16, 'seleta de legumes, enlatada', 100, 57, 3.4, 12.7, 0),
(124, 19, 16, 'ameixa, calda, enlatada', 100, 183, 0.4, 46.9, 0),
(139, 19, 16, 'figo, em calda, enlatado', 100, 184, 0.6, 50.3, 0),
(113, 20, 16, 'tomate, extrato', 100, 61, 2.4, 15, 0),
(115, 21, 16, 'tomate, purê', 100, 28, 1.4, 6.9, 0),
(154, 22, 5, 'sorvete industrializado', 25, 51.5, 0.9, 6.2, 0),
(155, 22, 14, 'picolé industrializado', 60, 47.4, 0.12, 11.5, 0),
(114, 22, 16, 'tomate, molho industrial', 100, 38, 1.4, 7.7, 0),
(154, 22, 16, 'sorvete industrializado', 100, 206, 3.6, 25.1, 0),
(156, 22, 16, 'chocolate', 100, 535, 7.6, 59.4, 0),
(180, 22, 16, 'pessego, enlatado', 100, 63, 0.7, 16.9, 0),
(136, 23, 16, 'caju, suco', 100, 45, 0.4, 10.7, 0),
(158, 23, 16, 'laranja, baía, suco', 100, 37, 0.7, 8.7, 0),
(160, 23, 16, 'laranja, da terra, suco', 100, 41, 0.7, 9.6, 0),
(162, 23, 16, 'laranja, lima, suco', 100, 39, 0.7, 9.2, 0),
(164, 23, 16, 'laranja, pera, suco', 100, 33, 0.7, 7.6, 0),
(171, 23, 16, 'maracujá, suco', 100, 42, 0.8, 9.6, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dicas`
--

CREATE TABLE `dicas` (
  `iddicas` int(11) NOT NULL,
  `conteudo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `administrador_idadministrador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

--
-- Extraindo dados da tabela `modo_preparacao`
--

INSERT INTO `modo_preparacao` (`idmodo_preparacao`, `modo`) VALUES
(1, 'cru (a)'),
(2, 'cozido (a)'),
(3, 'grelhado (a)'),
(4, 'assado (a)'),
(5, 'frito (a)'),
(6, 'empanado (a)'),
(7, 'refogado (a)'),
(8, 'molho vermelho'),
(9, 'molho branco'),
(10, 'ao alho e óleo'),
(11, 'com manteiga'),
(12, 'ao vinagrete'),
(13, 'ensopado'),
(14, 'mingau'),
(15, 'sopa'),
(16, 'não se aplica'),
(17, 'farofa'),
(18, 'em conserva'),
(19, 'enlatado'),
(20, 'extrato'),
(21, 'purê'),
(22, 'industrial'),
(23, 'suco');

-- --------------------------------------------------------

--
-- Estrutura da tabela `receitas`
--

CREATE TABLE `receitas` (
  `idreceitas` int(11) NOT NULL,
  `conteudo` longtext NOT NULL,
  `grupo_idgrupo` int(11) NOT NULL,
  `administrador_idadministrador` int(11) NOT NULL,
  `titulo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `refeicao`
--

CREATE TABLE `refeicao` (
  `idrefeicao` int(11) NOT NULL,
  `refeicao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `refeicao`
--

INSERT INTO `refeicao` (`idrefeicao`, `refeicao`) VALUES
(1, 'café da manhã'),
(2, 'lanche da manhã'),
(3, 'almoço'),
(4, 'lanche da tarde'),
(5, 'janta'),
(6, 'lanche da noite');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade_medida`
--

CREATE TABLE `unidade_medida` (
  `idmedida` int(11) NOT NULL,
  `medida` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `unidade_medida`
--

INSERT INTO `unidade_medida` (`idmedida`, `medida`) VALUES
(1, 'concha'),
(2, 'colher de arroz'),
(3, 'colher de café'),
(4, 'colher de chá'),
(5, 'colher de sopa'),
(7, 'colher de sobremesa'),
(8, 'escumadeira'),
(9, 'fatia grande'),
(10, 'pedaço grande'),
(11, 'prato fundo'),
(12, 'prato raso'),
(13, 'prato de sobremesa'),
(14, 'unidade'),
(15, 'xicara'),
(16, 'grama'),
(17, 'pacote');

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
  `administrador_idadministrador` int(11) NOT NULL,
  `qunatidade_agua` int(11) NOT NULL,
  `calorias_dia` float NOT NULL,
  `proteina_dia` float NOT NULL,
  `carboidrato_dia` float NOT NULL,
  `sexo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idusuarios`, `nome`, `peso`, `altura`, `data_nascimento`, `email`, `senha`, `administrador_idadministrador`, `qunatidade_agua`, `calorias_dia`, `proteina_dia`, `carboidrato_dia`, `sexo`) VALUES
(1, 'inara', 50, 155, '2000-08-07', 'inara@inara.com', 'inara', 1, 100, 20, 20, 20, 1),
(2, 'inara', 10, 10, '2018-09-04', 'inara', 'inara', 1, 10, 10, 10, 10, 10),
(3, 'inara', 1, 1, '2018-09-18', 'i', 'i', 1, 1, 1, 1, 1, 1),
(4, 'in', 1, 1, '2018-09-02', 'i', 'i', 1, 0, 0, 0, 0, 1);

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
  ADD KEY `fk_alimentacao_alimento_quantidade1_idx` (`alimento_quantidade_modo_preparacao_idmodo_preparacao`,`alimento_quantidade_unidade_medida_idmedida`,`alimento_quantidade_alimento`);

--
-- Indexes for table `alimento_quantidade`
--
ALTER TABLE `alimento_quantidade`
  ADD PRIMARY KEY (`modo_preparacao_idmodo_preparacao`,`unidade_medida_idmedida`,`alimento`),
  ADD KEY `fk_alimento_quantidade_modo_preparacao1_idx` (`modo_preparacao_idmodo_preparacao`),
  ADD KEY `fk_alimento_quantidade_unidade_medida1_idx` (`unidade_medida_idmedida`);

--
-- Indexes for table `dicas`
--
ALTER TABLE `dicas`
  ADD PRIMARY KEY (`iddicas`),
  ADD KEY `fk_dicas_administrador1_idx` (`administrador_idadministrador`);

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
  ADD KEY `fk_usuarios_administrador_idx` (`administrador_idadministrador`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrador`
--
ALTER TABLE `administrador`
  MODIFY `idadministrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `alimentacao`
--
ALTER TABLE `alimentacao`
  MODIFY `idalimentacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grupo`
--
ALTER TABLE `grupo`
  MODIFY `idgrupo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modo_preparacao`
--
ALTER TABLE `modo_preparacao`
  MODIFY `idmodo_preparacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `receitas`
--
ALTER TABLE `receitas`
  MODIFY `idreceitas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unidade_medida`
--
ALTER TABLE `unidade_medida`
  MODIFY `idmedida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `alimentacao`
--
ALTER TABLE `alimentacao`
  ADD CONSTRAINT `fk_alimentacao_alimento_quantidade1` FOREIGN KEY (`alimento_quantidade_modo_preparacao_idmodo_preparacao`,`alimento_quantidade_unidade_medida_idmedida`,`alimento_quantidade_alimento`) REFERENCES `alimento_quantidade` (`modo_preparacao_idmodo_preparacao`, `unidade_medida_idmedida`, `alimento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `alimento_quantidade`
--
ALTER TABLE `alimento_quantidade`
  ADD CONSTRAINT `fk_alimento_quantidade_modo_preparacao1` FOREIGN KEY (`modo_preparacao_idmodo_preparacao`) REFERENCES `modo_preparacao` (`idmodo_preparacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alimento_quantidade_unidade_medida1` FOREIGN KEY (`unidade_medida_idmedida`) REFERENCES `unidade_medida` (`idmedida`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `dicas`
--
ALTER TABLE `dicas`
  ADD CONSTRAINT `fk_dicas_administrador1` FOREIGN KEY (`administrador_idadministrador`) REFERENCES `administrador` (`idadministrador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `fk_usuarios_administrador` FOREIGN KEY (`administrador_idadministrador`) REFERENCES `administrador` (`idadministrador`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
