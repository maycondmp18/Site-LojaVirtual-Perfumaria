-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 25-Ago-2021 às 09:26
-- Versão do servidor: 5.6.41-84.1
-- versão do PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `essenz66_essenza`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'Maycon Douglas', 'maycon.melo.097@gmail.com', '54e119145da86b974f83773928578b1c');

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinhos`
--

CREATE TABLE `carrinhos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinhos_produtos`
--

CREATE TABLE `carrinhos_produtos` (
  `id` int(11) NOT NULL,
  `valor_cotacao` double NOT NULL,
  `valor_venda` double NOT NULL,
  `qnt_produto` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `carrinho_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `preferencia` varchar(60) NOT NULL,
  `numero` int(30) NOT NULL,
  `bairro` varchar(60) NOT NULL,
  `cidade` varchar(60) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mundoessenza`
--

CREATE TABLE `mundoessenza` (
  `id` int(11) NOT NULL,
  `codigo` varchar(60) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `descricao` text NOT NULL,
  `marca` varchar(60) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `fragancia` varchar(100) NOT NULL,
  `contraind` varchar(255) NOT NULL,
  `peso` int(4) NOT NULL,
  `conteudo` int(4) NOT NULL,
  `imagem` varchar(220) NOT NULL,
  `pontos` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(60) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `descricao` text NOT NULL,
  `marca` varchar(60) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `fragancia` varchar(100) NOT NULL,
  `contraind` varchar(255) NOT NULL,
  `peso` int(4) NOT NULL,
  `conteudo` int(4) NOT NULL,
  `imagem` varchar(220) NOT NULL,
  `valor` double NOT NULL,
  `pontos` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `codigo`, `titulo`, `descricao`, `marca`, `sexo`, `fragancia`, `contraind`, `peso`, `conteudo`, `imagem`, `valor`, `pontos`) VALUES
(1, '20210809', 'Polo 30ml', 'Perfume polo 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(2, '202108092', 'Polo 50ml', 'Perfume polo 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(3, '202108093', 'Polo 100ml', 'Perfume polo 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(4, '202108094', 'Polo 50ml', 'Perfume polo 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(5, '202108095', 'Polo 100ml', 'Perfume polo 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(6, '202108096', 'Polo 100ml', 'Perfume polo 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(7, '202108097', 'Polo 100ml', 'Perfume polo 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(8, '202108098', 'Polo 100ml', 'Perfume polo 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(9, '202108099', 'Polo 100ml', 'Perfume polo 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(10, '2021080910', 'Polo 100ml', 'Perfume polo 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(11, '202108011', 'Polo Sport 30ml', 'Perfume Polo Sport 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(12, '2021080912', 'Polo Sport 50ml', 'Perfume Polo Sport 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(13, '2021080913', 'Polo Sport 100ml', 'Perfume Polo Sport 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(14, '2021080914', 'Polo Sport 50ml', 'Perfume Polo Sport 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(15, '2021080915', 'Polo Sport 100ml', 'Perfume Polo Sport 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(16, '2021080916', 'Polo Sport 100ml', 'Perfume Polo Sport 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(17, '2021080917', 'Polo Sport 100ml', 'Perfume Polo Sport 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(18, '2021080918', 'Polo Sport 100ml', 'Perfume Polo Sport 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(19, '2021080919', 'Polo Sport 100ml', 'Perfume Polo Sport 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(20, '2021080920', 'Polo Sport 100ml', 'Perfume Polo Sport 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(21, '202108021', 'Polo Black 30ml', 'Perfume Polo Black 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(22, '2021080922', 'Polo Black 50ml', 'Perfume Polo Black 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(23, '2021080923', 'Polo Black 100ml', 'Perfume Polo Black 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(24, '2021080924', 'Polo Black 50ml', 'Perfume Polo Black 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(25, '2021080925', 'Polo Black 100ml', 'Perfume Polo Black 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(26, '2021080926', 'Polo Black 100ml', 'Perfume Polo Black 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(27, '2021080927', 'Polo Black 100ml', 'Perfume Polo Black 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(28, '2021080928', 'Polo Black 100ml', 'Perfume Polo Black 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(29, '2021080929', 'Polo Black 100ml', 'Perfume Polo Black 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(30, '2021080930', 'Polo Black 100ml', 'Perfume Polo Black 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(31, '2021080931', 'Polo Blue 30ml', 'Perfume Polo Blue 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(32, '2021080932', 'Polo Blue 50ml', 'Perfume Polo Blue 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(33, '2021080933', 'Polo Blue 100ml', 'Perfume Polo Blue 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(34, '2021080934', 'Polo Blue 50ml', 'Perfume Polo Blue 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(35, '2021080935', 'Polo Blue 100ml', 'Perfume Polo Blue 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(36, '2021080936', 'Polo Blue 100ml', 'Perfume Polo Blue 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(37, '2021080937', 'Polo Blue 100ml', 'Perfume Polo Blue 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(38, '2021080938', 'Polo Blue 100ml', 'Perfume Polo Blue 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(39, '2021080939', 'Polo Blue 100ml', 'Perfume Polo Blue 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(40, '2021080940', 'Polo Blue 100ml', 'Perfume Polo Blue 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(41, '2021080941', '212 Carolina for man 30ml', 'Perfume 212 Carolina for man 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(42, '2021080942', '212 Carolina for man 50ml', 'Perfume 212 Carolina for man 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(43, '2021080943', '212 Carolina for man 100ml', 'Perfume 212 Carolina for man 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(44, '2021080944', '212 Carolina for man 50ml', 'Perfume 212 Carolina for man 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(45, '2021080945', '212 Carolina for man 100ml', 'Perfume 212 Carolina for man 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(46, '2021080946', '212 Carolina for man 100ml', 'Perfume 212 Carolina for man 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(47, '2021080947', '212 Carolina for man 100ml', 'Perfume 212 Carolina for man 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(48, '2021080948', '212 Carolina for man 100ml', 'Perfume 212 Carolina for man 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(49, '2021080949', '212 Carolina for man 100ml', 'Perfume 212 Carolina for man 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(50, '2021080950', '212 Carolina for man 100ml', 'Perfume 212 Carolina for man 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(51, '2021080951', '212 vip men 30ml', 'Perfume 212 vip men 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(52, '2021080952', '212 vip men 50ml', 'Perfume 212 vip men 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(53, '2021080953', '212 vip men 100ml', 'Perfume 212 vip men 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(54, '2021080954', '212 vip men 50ml', 'Perfume 212 vip men 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(55, '2021080955', '212 vip men 100ml', 'Perfume 212 vip men 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(56, '2021080956', '212 vip men 100ml', 'Perfume 212 vip men 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(57, '2021080957', '212 vip men 100ml', 'Perfume 212 vip men 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(58, '2021080958', '212 vip men 100ml', 'Perfume 212 vip men 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(59, '2021080959', '212 vip men 100ml', 'Perfume 212 vip men 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(60, '2021080960', '212 vip men 100ml', 'Perfume 212 vip men 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(61, '2021080961', 'CH Men prive 30ml', 'Perfume CH Men prive 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(62, '2021080962', 'CH Men prive 50ml', 'Perfume CH Men prive 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(63, '2021080963', 'CH Men prive 100ml', 'Perfume CH Men prive 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(64, '2021080964', 'CH Men prive 50ml', 'Perfume CH Men prive 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(65, '2021080965', 'CH Men prive 100ml', 'Perfume CH Men prive 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(66, '2021080966', 'CH Men prive 100ml', 'Perfume CH Men prive 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(67, '2021080967', 'CH Men prive 100ml', 'Perfume CH Men prive 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(68, '2021080968', 'CH Men prive 100ml', 'Perfume CH Men prive 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(69, '2021080969', 'CH Men prive 100ml', 'Perfume CH Men prive 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(70, '2021080970', 'CH Men prive 100ml', 'Perfume CH Men prive 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(71, '2021080971', 'Allure Sport 30ml', 'Perfume Allure Sport 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(72, '2021080972', 'Allure Sport 50ml', 'Perfume Allure Sport 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(73, '2021080973', 'Allure Sport 100ml', 'Perfume Allure Sport 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(74, '2021080974', 'Allure Sport 50ml', 'Perfume Allure Sport 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(75, '2021080975', 'Allure Sport 100ml', 'Perfume Allure Sport 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(76, '2021080976', 'Allure Sport 100ml', 'Perfume Allure Sport 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(77, '2021080977', 'Allure Sport 100ml', 'Perfume Allure Sport 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(78, '2021080978', 'Allure Sport 100ml', 'Perfume Allure Sport 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(79, '2021080979', 'Allure Sport 100ml', 'Perfume Allure Sport 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(80, '2021080980', 'Allure Sport 100ml', 'Perfume Allure Sport 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(81, '2021080981', 'Azzaro org 1ª versão 30ml', 'Perfume Azzaro org 1ª versão 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(82, '2021080982', 'Azzaro org 1ª versão 50ml', 'Perfume Azzaro org 1ª versão 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(83, '2021080983', 'Azzaro org 1ª versão 100ml', 'Perfume Azzaro org 1ª versão 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(84, '2021080984', 'Azzaro org 1ª versão 50ml', 'Perfume Azzaro org 1ª versão 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(85, '2021080985', 'Azzaro org 1ª versão 100ml', 'Perfume Azzaro org 1ª versão 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(86, '2021080986', 'Azzaro org 1ª versão 100ml', 'Perfume Azzaro org 1ª versão 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(87, '2021080987', 'Azzaro org 1ª versão 100ml', 'Perfume Azzaro org 1ª versão 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(88, '2021080988', 'Azzaro org 1ª versão 100ml', 'Perfume Azzaro org 1ª versão 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(89, '2021080989', 'Azzaro org 1ª versão 100ml', 'Perfume Azzaro org 1ª versão 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(90, '2021080990', 'Azzaro org 1ª versão 100ml', 'Perfume Azzaro org 1ª versão 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(91, '2021080991', 'Dune Dior 30ml', 'Perfume Dune Dior 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(92, '2021080992', 'Dune Dior 50ml', 'Perfume Dune Dior 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(93, '2021080993', 'Dune Dior 100ml', 'Perfume Dune Dior 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(94, '2021080994', 'Dune Dior 50ml', 'Perfume Dune Dior 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(95, '2021080959', 'Dune Dior 100ml', 'Perfume Dune Dior 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(96, '2021080996', 'Dune Dior 100ml', 'Perfume Dune Dior 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(97, '2021080997', 'Dune Dior 100ml', 'Perfume Dune Dior 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(98, '2021080998', 'Dune Dior 100ml', 'Perfume Dune Dior 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(99, '2021080999', 'Dune Dior 100ml', 'Perfume Dune Dior 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(100, '20210809100', 'Dune Dior 100ml', 'Perfume Dune Dior 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(101, '20210809101', 'Barolo 30ml', 'Perfume Barolo 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(102, '20210809102', 'Barolo 50ml', 'Perfume Barolo 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(103, '20210809103', 'Barolo 100ml', 'Perfume Barolo 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(104, '20210809104', 'Barolo 50ml', 'Perfume Barolo 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(105, '20210809105', 'Barolo 100ml', 'Perfume Barolo 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(106, '20210809106', 'Barolo 100ml', 'Perfume Barolo 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(107, '20210809107', 'Barolo 100ml', 'Perfume Barolo 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(108, '20210809108', 'Barolo 100ml', 'Perfume Barolo 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(109, '20210809109', 'Barolo 100ml', 'Perfume Barolo 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(110, '20210809110', 'Barolo 30ml', 'Perfume Barolo 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(111, '20210809111', 'Hugo Boss 30ml', 'Perfume Hugo Boss 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(112, '20210809112', 'Hugo Boss 50ml', 'Perfume Hugo Boss 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(113, '20210809113', 'Hugo Boss 100ml', 'Perfume Hugo Boss 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(114, '20210809114', 'Hugo Boss 50ml', 'Perfume Hugo Boss 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(115, '20210809115', 'Hugo Boss 100ml', 'Perfume Hugo Boss 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(116, '20210809116', 'Hugo Boss 100ml', 'Perfume Hugo Boss 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(117, '20210809117', 'Hugo Boss 100ml', 'Perfume Hugo Boss 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(118, '20210809118', 'Hugo Boss 100ml', 'Perfume Hugo Boss 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(119, '20210809119', 'Hugo Boss 100ml', 'Perfume Hugo Boss 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(120, '20210809120', 'Hugo Boss 30ml', 'Perfume Hugo Boss 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(121, '20210809121', 'Invictus 30ml', 'Perfume Invictus 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(122, '20210809122', 'Invictus 50ml', 'Perfume Invictus 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(123, '20210809123', 'Invictus 100ml', 'Perfume Invictus 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(124, '20210809124', 'Invictus 50ml', 'Perfume Invictus 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(125, '20210809125', 'Invictus 100ml', 'Perfume Invictus 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(126, '20210809126', 'Invictus 100ml', 'Perfume Invictus 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(127, '20210809127', 'Invictus 100ml', 'Perfume Invictus 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(128, '20210809128', 'Invictus 100ml', 'Perfume Invictus 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(129, '20210809129', 'Invictus 100ml', 'Perfume Invictus 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(130, '20210809130', 'Invictus 30ml', 'Perfume Invictus 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(131, '20210809131', 'Joop! Home 30ml', 'Perfume Joop! Home 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(132, '202108092132', 'Joop! Home 50ml', 'Perfume Joop! Home 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(133, '202108093133', 'Joop! Home 100ml', 'Perfume Joop! Home 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(134, '202108094134', 'Joop! Home 50ml', 'Perfume Joop! Home 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(135, '202108095135', 'Joop! Home 100ml', 'Perfume Joop! Home 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(136, '202108096136', 'Joop! Home 100ml', 'Perfume Joop! Home 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(137, '202108097137', 'Joop! Home 100ml', 'Perfume Joop! Home 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(138, '202108098138', 'Joop! Home 100ml', 'Perfume Joop! Home 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(139, '202108099139', 'Joop! Home 100ml', 'Perfume Joop! Home 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(140, '20210809140', 'Joop! Home 30ml', 'Perfume Joop! Home 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(141, '20210809141', 'Silver Scent Jacques 30ml', 'Perfume Silver Scent Jacques 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(142, '202108092142', 'Silver Scent Jacques 50ml', 'Perfume Silver Scent Jacques 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(143, '202108093143', 'Silver Scent Jacques 100ml', 'Perfume Silver Scent Jacques 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(144, '202108094144', 'Silver Scent Jacques 50ml', 'Perfume Silver Scent Jacques 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(145, '202108095145', 'Silver Scent Jacques 100ml', 'Perfume Silver Scent Jacques 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(146, '202108096146', 'Silver Scent Jacques 100ml', 'Perfume Silver Scent Jacques 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(147, '202108097147', 'Silver Scent Jacques 100ml', 'Perfume Silver Scent Jacques 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(148, '202108098148', 'Silver Scent Jacques 100ml', 'Perfume Silver Scent Jacques 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(149, '202108099149', 'Silver Scent Jacques 100ml', 'Perfume Silver Scent Jacques 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(150, '20210809150', 'Silver Scent Jacques 100ml', 'Perfume Silver Scent Jacques 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(151, '20210809151', 'Tommy Hilfiger 30ml', 'Perfume Tommy Hilfiger 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(152, '202108092152', 'Tommy Hilfiger 50ml', 'Perfume Tommy Hilfiger 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(153, '202108093153', 'Tommy Hilfiger 100ml', 'Perfume Tommy Hilfiger 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(154, '202108094154', 'Tommy Hilfiger 50ml', 'Perfume Tommy Hilfiger 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(155, '202108095155', 'Tommy Hilfiger 100ml', 'Perfume Tommy Hilfiger 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(156, '202108096156', 'Tommy Hilfiger 100ml', 'Perfume Tommy Hilfiger 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(157, '202108097157', 'Tommy Hilfiger 100ml', 'Perfume Tommy Hilfiger 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(158, '202108098158', 'Tommy Hilfiger 100ml', 'Perfume Tommy Hilfiger 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(159, '202108099159', 'Tommy Hilfiger 100ml', 'Perfume Tommy Hilfiger 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(160, '20210809160', 'Tommy Hilfiger 100ml', 'Perfume Tommy Hilfiger 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(161, '20210809161', 'Animale 30ml', 'Perfume Animale 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(162, '202108092162', 'Animale 50ml', 'Perfume Animale 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(163, '202108093163', 'Animale 100ml', 'Perfume Animale 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(164, '202108094164', 'Animale 50ml', 'Perfume Animale 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(165, '202108095165', 'Animale 100ml', 'Perfume Animale 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(166, '202108096166', 'Animale 100ml', 'Perfume Animale 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(167, '202108097167', 'Animale 100ml', 'Perfume Animale 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(168, '202108098168', 'Animale 100ml', 'Perfume Animale 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(169, '202108099169', 'Animale 100ml', 'Perfume Animale 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(170, '20210809170', 'Animale 100ml', 'Perfume Animale 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(171, '20210809171', 'Cuba 30ml', 'Perfume Cuba 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(172, '202108092172', 'Cuba 50ml', 'Perfume Cuba 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(173, '202108093173', 'Cuba 100ml', 'Perfume Cuba 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(174, '202108094174', 'Cuba 50ml', 'Perfume Cuba 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(175, '202108095175', 'Cuba 100ml', 'Perfume Cuba 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(176, '202108096176', 'Cuba 100ml', 'Perfume Cuba 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(177, '202108097177', 'Cuba 100ml', 'Perfume Cuba 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(178, '202108098178', 'Cuba 100ml', 'Perfume Cuba 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(179, '202108099179', 'Cuba 100ml', 'Perfume Cuba 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(180, '20210809100', 'Cuba 100ml', 'Perfume Cuba 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(181, '20210809181', 'Farenheit Italy 30ml', 'Perfume Farenheit Italy 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(182, '202108092182', 'Farenheit Italy 50ml', 'Perfume Farenheit Italy 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(183, '202108093183', 'Farenheit Italy 100ml', 'Perfume Farenheit Italy 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(184, '202108094184', 'Farenheit Italy 50ml', 'Perfume Farenheit Italy 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(185, '202108095185', 'Farenheit Italy 100ml', 'Perfume Farenheit Italy 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(186, '202108096186', 'Farenheit Italy 100ml', 'Perfume Farenheit Italy 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(187, '202108097187', 'Farenheit Italy 100ml', 'Perfume Farenheit Italy 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(188, '202108098188', 'Farenheit Italy 100ml', 'Perfume Farenheit Italy 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(189, '202108099189', 'Farenheit Italy 100ml', 'Perfume Farenheit Italy 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(190, '20210809190', 'Farenheit Italy 100ml', 'Perfume Farenheit Italy 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(191, '20210809191', 'Ventiver Zara vs 2 30ml', 'Perfume Ventiver Zara vs 2 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(192, '202108092192', 'Ventiver Zara vs 2 50ml', 'Perfume Ventiver Zara vs 2 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(193, '202108093193', 'Ventiver Zara vs 2 100ml', 'Perfume Ventiver Zara vs 2 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(194, '202108094194', 'Ventiver Zara vs 2 50ml', 'Perfume Ventiver Zara vs 2 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(195, '202108095195', 'Ventiver Zara vs 2 100ml', 'Perfume Ventiver Zara vs 2 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(196, '202108096196', 'Ventiver Zara vs 2 100ml', 'Perfume Ventiver Zara vs 2 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(197, '202108097197', 'Ventiver Zara vs 2 100ml', 'Perfume Ventiver Zara vs 2 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(198, '202108098198', 'Ventiver Zara vs 2 100ml', 'Perfume Ventiver Zara vs 2 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(199, '202108099199', 'Ventiver Zara vs 2 100ml', 'Perfume Ventiver Zara vs 2 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(200, '20210809200', 'Ventiver Zara vs 2 100ml', 'Perfume Ventiver Zara vs 2 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(201, '20210809201', 'Ferrari Black Extreme 30ml', 'Perfume Ferrari Black Extreme 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(202, '202108092202', 'Ferrari Black Extreme 50ml', 'Perfume Ferrari Black Extreme 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(203, '202108093203', 'Ferrari Black Extreme 100ml', 'Perfume Ferrari Black Extreme 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(204, '202108094204', 'Ferrari Black Extreme 50ml', 'Perfume Ferrari Black Extreme 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(205, '202108095205', 'Ferrari Black Extreme 100ml', 'Perfume Ferrari Black Extreme 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(206, '202108096206', 'Ferrari Black Extreme 100ml', 'Perfume Ferrari Black Extreme 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(207, '202108097207', 'Ferrari Black Extreme 100ml', 'Perfume Ferrari Black Extreme 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(208, '202108098208', 'Ferrari Black Extreme 100ml', 'Perfume Ferrari Black Extreme 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(209, '202108099209', 'Ferrari Black Extreme 100ml', 'Perfume Ferrari Black Extreme 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(210, '20210809210', 'Ferrari Black Extreme 100ml', 'Perfume Ferrari Black Extreme 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(211, '20210809211', 'Ferrari Black 30ml', 'Perfume Ferrari Black 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(212, '202108092212', 'Ferrari Black 50ml', 'Perfume Ferrari Black 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(213, '202108093213', 'Ferrari Black 100ml', 'Perfume Ferrari Black 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(214, '202108094214', 'Ferrari Black 50ml', 'Perfume Ferrari Black 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(215, '202108095215', 'Ferrari Black 100ml', 'Perfume Ferrari Black 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(216, '202108096216', 'Ferrari Black 100ml', 'Perfume Ferrari Black 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(217, '202108097217', 'Ferrari Black 100ml', 'Perfume Ferrari Black 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(218, '202108098218', 'Ferrari Black 100ml', 'Perfume Ferrari Black 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(219, '202108099219', 'Ferrari Black 100ml', 'Perfume Ferrari Black 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(220, '20210809220', 'Ferrari Black 100ml', 'Perfume Ferrari Black 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(221, '20210809221', 'Jean Paul Gautier 30ml', 'Perfume Jean Paul Gautier 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(222, '202108092222', 'Jean Paul Gautier 50ml', 'Perfume Jean Paul Gautier 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(223, '202108093223', 'Jean Paul Gautier 100ml', 'Perfume Jean Paul Gautier 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(224, '202108094224', 'Jean Paul Gautier 50ml', 'Perfume Jean Paul Gautier 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(225, '202108095225', 'Jean Paul Gautier 100ml', 'Perfume Jean Paul Gautier 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(226, '202108096226', 'Jean Paul Gautier 100ml', 'Perfume Jean Paul Gautier 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(227, '202108097227', 'Jean Paul Gautier 100ml', 'Perfume Jean Paul Gautier 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(228, '202108098228', 'Jean Paul Gautier 100ml', 'Perfume Jean Paul Gautier 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(229, '202108099229', 'Jean Paul Gautier 100ml', 'Perfume Jean Paul Gautier 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(230, '20210809230', 'Jean Paul Gautier 100ml', 'Perfume Jean Paul Gautier 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(231, '20210809231', 'Kouros EuA 30ml', 'Perfume Kouros EuA 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(232, '202108092232', 'Kouros EuA 50ml', 'Perfume Kouros EuA 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(233, '202108093233', 'Kouros EuA 100ml', 'Perfume Kouros EuA 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(234, '202108094234', 'Kouros EuA 50ml', 'Perfume Kouros EuA 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(235, '202108095235', 'Kouros EuA 100ml', 'Perfume Kouros EuA 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(236, '202108096236', 'Kouros EuA 100ml', 'Perfume Kouros EuA 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(237, '202108097237', 'Kouros EuA 100ml', 'Perfume Kouros EuA 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(238, '202108098238', 'Kouros EuA 100ml', 'Perfume Kouros EuA 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0');
INSERT INTO `produtos` (`id`, `codigo`, `titulo`, `descricao`, `marca`, `sexo`, `fragancia`, `contraind`, `peso`, `conteudo`, `imagem`, `valor`, `pontos`) VALUES
(239, '202108099239', 'Kouros EuA 100ml', 'Perfume Kouros EuA 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(240, '20210809240', 'Kouros EuA 100ml', 'Perfume Kouros EuA 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(241, '20210809241', 'Patchouly 30ml', 'Perfume Patchouly 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(242, '202108092242', 'Patchouly 50ml', 'Perfume Patchouly 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(243, '202108093243', 'Patchouly 100ml', 'Perfume Patchouly 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(244, '202108094244', 'Patchouly 50ml', 'Perfume Patchouly 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(245, '202108095245', 'Patchouly 100ml', 'Perfume Patchouly 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(246, '202108096246', 'Patchouly 100ml', 'Perfume Patchouly 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(247, '202108097247', 'Patchouly 100ml', 'Perfume Patchouly 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(248, '202108098248', 'Patchouly 100ml', 'Perfume Patchouly 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(249, '202108099249', 'Patchouly 100ml', 'Perfume Patchouly 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(250, '20210809250', 'Patchouly 100ml', 'Perfume Patchouly 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(251, '20210809251', 'Ter Lapidus 30ml', 'Perfume Ter Lapidus 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(252, '202108092252', 'Ter Lapidus 50ml', 'Perfume Ter Lapidus 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(253, '202108093253', 'Ter Lapidus 100ml', 'Perfume Ter Lapidus 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(254, '202108094254', 'Ter Lapidus 50ml', 'Perfume Ter Lapidus 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(255, '202108095255', 'Ter Lapidus 100ml', 'Perfume Ter Lapidus 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(256, '202108096256', 'Ter Lapidus 100ml', 'Perfume Ter Lapidus 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(257, '202108097257', 'Ter Lapidus 100ml', 'Perfume Ter Lapidus 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(258, '202108098258', 'Ter Lapidus 100ml', 'Perfume Ter Lapidus 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(259, '202108099259', 'Ter Lapidus 100ml', 'Perfume Ter Lapidus 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(260, '20210809260', 'Ter Lapidus 100ml', 'Perfume Ter Lapidus 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(261, '20210809261', 'Eternity Rob 30ml', 'Perfume Eternity Rob 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(262, '202108092262', 'Eternity Rob 50ml', 'Perfume Eternity Rob 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(263, '202108093263', 'Eternity Rob 100ml', 'Perfume Eternity Rob 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(264, '202108094264', 'Eternity Rob 50ml', 'Perfume Eternity Rob 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(265, '202108095265', 'Eternity Rob 100ml', 'Perfume Eternity Rob 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(266, '202108096266', 'Eternity Rob 100ml', 'Perfume Eternity Rob 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(267, '202108097267', 'Eternity Rob 100ml', 'Perfume Eternity Rob 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(268, '202108098268', 'Eternity Rob 100ml', 'Perfume Eternity Rob 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(269, '202108099269', 'Eternity Rob 100ml', 'Perfume Eternity Rob 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(270, '20210809270', 'Eternity Rob 100ml', 'Perfume Eternity Rob 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(271, '20210809271', 'Drakkar 30ml', 'Perfume Drakkar 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(272, '202108092272', 'Drakkar 50ml', 'Perfume Drakkar 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(273, '202108093273', 'Drakkar 100ml', 'Perfume Drakkar 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(274, '202108094274', 'Drakkar 50ml', 'Perfume Drakkar 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(275, '202108095275', 'Drakkar 100ml', 'Perfume Drakkar 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(276, '202108096276', 'Drakkar 100ml', 'Perfume Drakkar 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(277, '202108097277', 'Drakkar 100ml', 'Perfume Drakkar 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(278, '202108098278', 'Drakkar 100ml', 'Perfume Drakkar 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(279, '202108099279', 'Drakkar 100ml', 'Perfume Drakkar 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(280, '20210809280', 'Drakkar 100ml', 'Perfume Drakkar 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(281, '20210809281', 'Presence 30ml', 'Perfume Presence 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(282, '202108092282', 'Presence 50ml', 'Perfume Presence 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(283, '202108093283', 'Presence 100ml', 'Perfume Presence 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(284, '202108094284', 'Presence 50ml', 'Perfume Presence 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(285, '202108095285', 'Presence 100ml', 'Perfume Presence 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(286, '202108096286', 'Presence 100ml', 'Perfume Presence 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(287, '202108097287', 'Presence 100ml', 'Perfume Presence 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(288, '202108098288', 'Presence 100ml', 'Perfume Presence 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(289, '202108099289', 'Presence 100ml', 'Perfume Presence 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(290, '20210809290', 'Presence 100ml', 'Perfume Presence 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(291, '20210809291', 'Black XS 30ml', 'Perfume Black XS 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(292, '202108092292', 'Black XS 50ml', 'Perfume Black XS 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(293, '202108093293', 'Black XS 100ml', 'Perfume Black XS 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(294, '202108094294', 'Black XS 50ml', 'Perfume Black XS 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(295, '202108095295', 'Black XS 100ml', 'Perfume Black XS 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(296, '202108096296', 'Black XS 100ml', 'Perfume Black XS 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(297, '202108097297', 'Black XS 100ml', 'Perfume Black XS 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(298, '202108098298', 'Black XS 100ml', 'Perfume Black XS 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(299, '202108099299', 'Black XS 100ml', 'Perfume Black XS 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(300, '20210809300', 'Black XS 100ml', 'Perfume Black XS 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(301, '20210809301', 'Bleu Chanel 30ml', 'Perfume Bleu Chanel 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(302, '202108092302', 'Bleu Chanel 50ml', 'Perfume Bleu Chanel 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(303, '202108093303', 'Bleu Chanel 100ml', 'Perfume Bleu Chanel 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(304, '202108094304', 'Bleu Chanel 50ml', 'Perfume Bleu Chanel 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(305, '202108095305', 'Bleu Chanel 100ml', 'Perfume Bleu Chanel 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(306, '202108096306', 'Bleu Chanel 100ml', 'Perfume Bleu Chanel 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(307, '202108097307', 'Bleu Chanel 100ml', 'Perfume Bleu Chanel 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(308, '202108098308', 'Bleu Chanel 100ml', 'Perfume Bleu Chanel 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(309, '202108099309', 'Bleu Chanel 100ml', 'Perfume Bleu Chanel 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(310, '20210809310', 'Bleu Chanel 100ml', 'Perfume Bleu Chanel 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(311, '20210809311', 'CK Dissey 30ml', 'Perfume CK Dissey 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(312, '202108092312', 'CK Dissey 50ml', 'Perfume CK Dissey 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(313, '202108093313', 'CK Dissey 100ml', 'Perfume CK Dissey 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(314, '202108094314', 'CK Dissey 50ml', 'Perfume CK Dissey 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(315, '202108095315', 'CK Dissey 100ml', 'Perfume CK Dissey 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(316, '202108096316', 'CK Dissey 100ml', 'Perfume CK Dissey 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(317, '202108097317', 'CK Dissey 100ml', 'Perfume CK Dissey 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(318, '202108098318', 'CK Dissey 100ml', 'Perfume CK Dissey 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(319, '202108099319', 'CK Dissey 100ml', 'Perfume CK Dissey 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(320, '20210809320', 'CK Dissey 100ml', 'Perfume CK Dissey 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(321, '20210809321', 'Doce & Gabana 30ml', 'Perfume Doce & Gabana 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(322, '202108092322', 'Doce & Gabana 50ml', 'Perfume Doce & Gabana 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(323, '202108093323', 'Doce & Gabana 100ml', 'Perfume Doce & Gabana 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(324, '202108094324', 'Doce & Gabana 50ml', 'Perfume Doce & Gabana 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(325, '202108095325', 'Doce & Gabana 100ml', 'Perfume Doce & Gabana 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(326, '202108096326', 'Doce & Gabana 100ml', 'Perfume Doce & Gabana 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(327, '202108097327', 'Doce & Gabana 100ml', 'Perfume Doce & Gabana 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(328, '202108098328', 'Doce & Gabana 100ml', 'Perfume Doce & Gabana 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(329, '202108099329', 'Doce & Gabana 100ml', 'Perfume Doce & Gabana 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(330, '20210809330', 'Doce & Gabana 100ml', 'Perfume Doce & Gabana 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(331, '20210809331', 'Egoist Platinum 30ml', 'Perfume Egoist Platinum 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(332, '202108092332', 'Egoist Platinum 50ml', 'Perfume Egoist Platinum 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(333, '202108093333', 'Egoist Platinum 100ml', 'Perfume Egoist Platinum 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(334, '202108094334', 'Egoist Platinum 50ml', 'Perfume Egoist Platinum 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(335, '202108095335', 'Egoist Platinum 100ml', 'Perfume Egoist Platinum 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(336, '202108096336', 'Egoist Platinum 100ml', 'Perfume Egoist Platinum 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(337, '202108097337', 'Egoist Platinum 100ml', 'Perfume Egoist Platinum 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(338, '202108098338', 'Egoist Platinum 100ml', 'Perfume Egoist Platinum 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(339, '202108099339', 'Egoist Platinum 100ml', 'Perfume Egoist Platinum 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(340, '20210809340', 'Egoist Platinum 100ml', 'Perfume Egoist Platinum 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(341, '20210809341', 'L\'eau Dissey 30ml', 'Perfume L\'eau Dissey 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(342, '202108092342', 'L\'eau Dissey 50ml', 'Perfume L\'eau Dissey 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(343, '202108093343', 'L\'eau Dissey 100ml', 'Perfume L\'eau Dissey 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(344, '202108094344', 'L\'eau Dissey 50ml', 'Perfume L\'eau Dissey 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(345, '202108095345', 'L\'eau Dissey 100ml', 'Perfume L\'eau Dissey 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(346, '202108096346', 'L\'eau Dissey 100ml', 'Perfume L\'eau Dissey 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(347, '202108097347', 'L\'eau Dissey 100ml', 'Perfume L\'eau Dissey 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(348, '202108098348', 'L\'eau Dissey 100ml', 'Perfume L\'eau Dissey 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(349, '202108099349', 'L\'eau Dissey 100ml', 'Perfume L\'eau Dissey 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(350, '20210809350', 'L\'eau Dissey 100ml', 'Perfume L\'eau Dissey 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(351, '20210809351', 'One Milion Intense 30ml', 'Perfume One Milion Intense 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(352, '202108092352', 'One Milion Intense 50ml', 'Perfume One Milion Intense 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(353, '202108093353', 'One Milion Intense 100ml', 'Perfume One Milion Intense 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(354, '202108094354', 'One Milion Intense 50ml', 'Perfume One Milion Intense 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(355, '202108095355', 'One Milion Intense 100ml', 'Perfume One Milion Intense 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(356, '202108096356', 'One Milion Intense 100ml', 'Perfume One Milion Intense 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(357, '202108097357', 'One Milion Intense 100ml', 'Perfume One Milion Intense 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(358, '202108098358', 'One Milion Intense 100ml', 'Perfume One Milion Intense 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(359, '202108099359', 'One Milion Intense 100ml', 'Perfume One Milion Intense 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(360, '20210809360', 'One Milion Intense 100ml', 'Perfume One Milion Intense 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(361, '20210809361', 'Paco Rabane 30ml', 'Perfume Paco Rabane 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(362, '202108092362', 'Paco Rabane 50ml', 'Perfume Paco Rabane 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(363, '202108093363', 'Paco Rabane 100ml', 'Perfume Paco Rabane 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(364, '202108094364', 'Paco Rabane 50ml', 'Perfume Paco Rabane 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(365, '202108095365', 'Paco Rabane 100ml', 'Perfume Paco Rabane 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(366, '202108096366', 'Paco Rabane 100ml', 'Perfume Paco Rabane 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(367, '202108097367', 'Paco Rabane 100ml', 'Perfume Paco Rabane 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(368, '202108098368', 'Paco Rabane 100ml', 'Perfume Paco Rabane 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(369, '202108099369', 'Paco Rabane 100ml', 'Perfume Paco Rabane 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(370, '20210809370', 'Paco Rabane 100ml', 'Perfume Paco Rabane 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(371, '20210809371', 'Emporio Armani 30ml', 'Perfume Emporio Armani 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(372, '202108092372', 'Emporio Armani 50ml', 'Perfume Emporio Armani 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(373, '202108093373', 'Emporio Armani 100ml', 'Perfume Emporio Armani 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(374, '202108094374', 'Emporio Armani 50ml', 'Perfume Emporio Armani 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(375, '202108095375', 'Emporio Armani 100ml', 'Perfume Emporio Armani 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(376, '202108096376', 'Emporio Armani 100ml', 'Perfume Emporio Armani 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(377, '202108097377', 'Emporio Armani 100ml', 'Perfume Emporio Armani 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(378, '202108098378', 'Emporio Armani 100ml', 'Perfume Emporio Armani 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(379, '202108099379', 'Emporio Armani 100ml', 'Perfume Emporio Armani 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(380, '20210809380', 'Emporio Armani 100ml', 'Perfume Emporio Armani 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(381, '20210809381', 'Sauvage Dior 30ml', 'Perfume Sauvage Dior 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(382, '202108092382', 'Sauvage Dior 50ml', 'Perfume Sauvage Dior 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(383, '202108093383', 'Sauvage Dior 100ml', 'Perfume Sauvage Dior 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(384, '202108094384', 'Sauvage Dior 50ml', 'Perfume Sauvage Dior 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(385, '202108095385', 'Sauvage Dior 100ml', 'Perfume Sauvage Dior 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(386, '202108096386', 'Sauvage Dior 100ml', 'Perfume Sauvage Dior 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(387, '202108097387', 'Sauvage Dior 100ml', 'Perfume Sauvage Dior 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(388, '202108098388', 'Sauvage Dior 100ml', 'Perfume Sauvage Dior 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(389, '202108099389', 'Sauvage Dior 100ml', 'Perfume Sauvage Dior 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(390, '20210809390', 'Sauvage Dior 100ml', 'Perfume Sauvage Dior 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(391, '20210809391', '212 Carolina Orig 30ml', 'Perfume 212 Carolina Orig 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(392, '20210809392', '212 Carolina Orig 50ml', 'Perfume 212 Carolina Orig 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(393, '20210809393', '212 Carolina Orig 100ml', 'Perfume 212 Carolina Orig 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(394, '20210809394', '212 Carolina Orig 50ml', 'Perfume 212 Carolina Orig 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(395, '20210809395', '212 Carolina Orig 100ml', 'Perfume 212 Carolina Orig 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(396, '20210809396', '212 Carolina Orig 100ml', 'Perfume 212 Carolina Orig 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(397, '20210809397', '212 Carolina Orig 100ml', 'Perfume 212 Carolina Orig 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(398, '20210809398', '212 Carolina Orig 100ml', 'Perfume 212 Carolina Orig 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(399, '20210809399', '212 Carolina Orig 100ml', 'Perfume 212 Carolina Orig 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(400, '202108093910', '212 Carolina Orig 100ml', 'Perfume 212 Carolina Orig 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(401, '20210803911', '212  Vip Rose 30ml', 'Perfume 212  Vip Rose 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(402, '202108093912', '212  Vip Rose 50ml', 'Perfume 212  Vip Rose 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(403, '202108093913', '212  Vip Rose 100ml', 'Perfume 212  Vip Rose 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(404, '202108093914', '212  Vip Rose 50ml', 'Perfume 212  Vip Rose 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(405, '202108093915', '212  Vip Rose 100ml', 'Perfume 212  Vip Rose 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(406, '202108093916', '212  Vip Rose 100ml', 'Perfume 212  Vip Rose 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(407, '202108093917', '212  Vip Rose 100ml', 'Perfume 212  Vip Rose 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(408, '202108093918', '212  Vip Rose 100ml', 'Perfume 212  Vip Rose 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(409, '202108093919', '212  Vip Rose 100ml', 'Perfume 212  Vip Rose 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(410, '202108093920', '212  Vip Rose 100ml', 'Perfume 212  Vip Rose 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(411, '20210803921', '212 Sexy 30ml', 'Perfume 212 Sexy 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(412, '202108093922', '212 Sexy 50ml', 'Perfume 212 Sexy 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(413, '202108093923', '212 Sexy 100ml', 'Perfume 212 Sexy 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(414, '202108093924', '212 Sexy 50ml', 'Perfume 212 Sexy 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(415, '202108093925', '212 Sexy 100ml', 'Perfume 212 Sexy 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(416, '202108093926', '212 Sexy 100ml', 'Perfume 212 Sexy 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(417, '202108093927', '212 Sexy 100ml', 'Perfume 212 Sexy 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(418, '202108093928', '212 Sexy 100ml', 'Perfume 212 Sexy 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(419, '202108093929', '212 Sexy 100ml', 'Perfume 212 Sexy 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(420, '202108093930', '212 Sexy 100ml', 'Perfume 212 Sexy 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(421, '202108093931', 'Angel Demon 30ml', 'Perfume Angel Demon 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(422, '202108093932', 'Angel Demon 50ml', 'Perfume Angel Demon 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(423, '202108093933', 'Angel Demon 100ml', 'Perfume Angel Demon 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(424, '202108093934', 'Angel Demon 50ml', 'Perfume Angel Demon 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(425, '202108093935', 'Angel Demon 100ml', 'Perfume Angel Demon 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(426, '202108093936', 'Angel Demon 100ml', 'Perfume Angel Demon 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(427, '202108093937', 'Angel Demon 100ml', 'Perfume Angel Demon 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(428, '202108093938', 'Angel Demon 100ml', 'Perfume Angel Demon 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(429, '202108093939', 'Angel Demon 100ml', 'Perfume Angel Demon 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(430, '202108093940', 'Angel Demon 100ml', 'Perfume Angel Demon 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(431, '202108093941', 'Angel 30ml', 'Perfume Angel 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(432, '202108093942', 'Angel 50ml', 'Perfume Angel 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(433, '202108093943', 'Angel 100ml', 'Perfume Angel 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(434, '202108093944', 'Angel 50ml', 'Perfume Angel 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(435, '202108093945', 'Angel 100ml', 'Perfume Angel 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(436, '202108093946', 'Angel 100ml', 'Perfume Angel 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(437, '202108093947', 'Angel 100ml', 'Perfume Angel 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(438, '202108093948', 'Angel 100ml', 'Perfume Angel 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(439, '202108093949', 'Angel 100ml', 'Perfume Angel 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(440, '202108093950', 'Angel 100ml', 'Perfume Angel 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(441, '202108093951', 'Doce & Gabana 30ml', 'Perfume Doce & Gabana 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(442, '202108093952', 'Doce & Gabana 50ml', 'Perfume Doce & Gabana 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(443, '202108093953', 'Doce & Gabana 100ml', 'Perfume Doce & Gabana 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(444, '202108093954', 'Doce & Gabana 50ml', 'Perfume Doce & Gabana 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(445, '202108093955', 'Doce & Gabana 100ml', 'Perfume Doce & Gabana 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(446, '202108093956', 'Doce & Gabana 100ml', 'Perfume Doce & Gabana 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(447, '202108093957', 'Doce & Gabana 100ml', 'Perfume Doce & Gabana 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(448, '202108093958', 'Doce & Gabana 100ml', 'Perfume Doce & Gabana 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(449, '202108093959', 'Doce & Gabana 100ml', 'Perfume Doce & Gabana 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(450, '202108093960', 'Doce & Gabana 100ml', 'Perfume Doce & Gabana 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(451, '202108093961', 'Lady Milion 30ml', 'Perfume Lady Milion30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(452, '202108093962', 'Lady Milion 50ml', 'Perfume Lady Milion 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(453, '202108093963', 'Lady Milion 100ml', 'Perfume Lady Milion 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(454, '202108093964', 'Lady Milion 50ml', 'Perfume Lady Milion 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(455, '202108093965', 'Lady Milion 100ml', 'Perfume Lady Milion 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(456, '202108093966', 'Lady Milion 100ml', 'Perfume Lady Milion 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(457, '202108093967', 'Lady Milion 100ml', 'Perfume Lady Milion 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(458, '202108093968', 'Lady Milion 100ml', 'Perfume Lady Milion 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(459, '202108093969', 'Lady Milion 100ml', 'Perfume Lady Milion 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(460, '202108093970', 'Lady Milion 100ml', 'Perfume Lady Milion 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(461, '202108093971', 'Olympea 30ml', 'Perfume Olympea 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(462, '202108093972', 'Olympea 50ml', 'Perfume Olympea 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(463, '202108093973', 'Olympea 100ml', 'Perfume Olympea 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(464, '202108093974', 'Olympea 50ml', 'Perfume Olympea 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(465, '202108093975', 'Olympea 100ml', 'Perfume Olympea 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(466, '202108093976', 'Olympea 100ml', 'Perfume Olympea 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(467, '202108093977', 'Olympea 100ml', 'Perfume Olympea 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(468, '202108093978', 'Olympea 100ml', 'Perfume Olympea 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(469, '202108093979', 'Olympea 100ml', 'Perfume Olympea 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(470, '202108093980', 'Olympea 100ml', 'Perfume Olympea 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(471, '202108093981', 'Anais Anais 30ml', 'Perfume Anais Anais 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(472, '202108093982', 'Anais Anais 50ml', 'Perfume Anais Anais 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(473, '202108093983', 'Anais Anais 100ml', 'Perfume Anais Anais 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(474, '202108093984', 'Anais Anais 50ml', 'Perfume Anais Anais 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(475, '202108093985', 'Anais Anais 100ml', 'Perfume Anais Anais 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(476, '202108093986', 'Anais Anais 100ml', 'Perfume Anais Anais 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(477, '202108093987', 'Anais Anais 100ml', 'Perfume Anais Anais 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0');
INSERT INTO `produtos` (`id`, `codigo`, `titulo`, `descricao`, `marca`, `sexo`, `fragancia`, `contraind`, `peso`, `conteudo`, `imagem`, `valor`, `pontos`) VALUES
(478, '202108093988', 'Anais Anais 100ml', 'Perfume Anais Anais 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(479, '202108093989', 'Anais Anais 100ml', 'Perfume Anais Anais 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(480, '202108093990', 'Anais Anais 100ml', 'Perfume Anais Anais 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(481, '202108093991', 'Animale 30ml', 'Perfume Animale 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(482, '202108093992', 'Animale 50ml', 'Perfume Animale 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(483, '202108093993', 'Animale 100ml', 'Perfume Animale 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(484, '202108093994', 'Animale 50ml', 'Perfume Animale 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(485, '202108093959', 'Animale 100ml', 'Perfume Animale 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(486, '202108093996', 'Animale 100ml', 'Perfume Animale 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(487, '202108093997', 'Animale 100ml', 'Perfume Animale 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(488, '202108093998', 'Animale 100ml', 'Perfume Animale 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(489, '202108093999', 'Animale 100ml', 'Perfume Animale 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(490, '2021080939100', 'Animale 100ml', 'Perfume Animale 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(491, '2021080939101', 'Cartier Lá Phantera 30ml', 'Perfume Cartier Lá Phantera 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(492, '2021080939102', 'Cartier Lá Phantera 50ml', 'Perfume Cartier Lá Phantera 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(493, '2021080939103', 'Cartier Lá Phantera 100ml', 'Perfume Cartier Lá Phantera 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(494, '2021080939104', 'Cartier Lá Phantera 50ml', 'Perfume Cartier Lá Phantera 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(495, '2021080939105', 'Cartier Lá Phantera 100ml', 'Perfume Cartier Lá Phantera 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(496, '2021080939106', 'Cartier Lá Phantera 100ml', 'Perfume Cartier Lá Phantera 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(497, '2021080939107', 'Cartier Lá Phantera 100ml', 'Perfume Cartier Lá Phantera 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(498, '2021080939108', 'Cartier Lá Phantera 100ml', 'Perfume Cartier Lá Phantera 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(499, '2021080939109', 'Cartier Lá Phantera 100ml', 'Perfume Cartier Lá Phantera 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(500, '2021080939110', 'Chanel 5 Orig 30ml', 'PerfumeChanel 5 Orig 30ml 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(501, '2021080939111', 'Chanel 5 Orig 30ml', 'Perfume Chanel 5 Orig 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(502, '2021080939112', 'Chanel 5 Orig 50ml', 'Perfume Chanel 5 Orig 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(503, '2021080939113', 'Chanel 5 Orig 100ml', 'Perfume Chanel 5 Orig 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(504, '2021080939114', 'Chanel 5 Orig 50ml', 'Perfume Chanel 5 Orig 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(505, '2021080939115', 'Chanel 5 Orig 100ml', 'Perfume Chanel 5 Orig 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(506, '2021080939116', 'Chanel 5 Orig 100ml', 'Perfume Chanel 5 Orig 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(507, '2021080939117', 'Chanel 5 Orig 100ml', 'Perfume Chanel 5 Orig 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(508, '2021080939118', 'Chanel 5 Orig 100ml', 'Perfume Chanel 5 Orig 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(509, '2021080939119', 'Chanel 5 Orig 100ml', 'Perfume Chanel 5 Orig 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(510, '2021080939120', 'Chanel 5 Orig 30ml', 'Perfume Chanel 5 Orig 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(511, '2021080939121', 'Coco Mademoiselle 30ml', 'Perfume Coco Mademoiselle 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(512, '2021080939122', 'Coco Mademoiselle 50ml', 'Perfume Coco Mademoiselle 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(513, '2021080939123', 'Coco Mademoiselle 100ml', 'Perfume Coco Mademoiselle 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(514, '2021080939124', 'Coco Mademoiselle 50ml', 'Perfume Coco Mademoiselle 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(515, '2021080939125', 'Coco Mademoiselle 100ml', 'Perfume Coco Mademoiselle 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(516, '2021080939126', 'Coco Mademoiselle 100ml', 'Perfume Coco Mademoiselle 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(517, '2021080939127', 'Coco Mademoiselle 100ml', 'Perfume Coco Mademoiselle 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(518, '2021080939128', 'Coco Mademoiselle 100ml', 'Perfume Coco Mademoiselle 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(519, '2021080939129', 'Coco Mademoiselle 100ml', 'Perfume Coco Mademoiselle 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(520, '2021080939130', 'Coco Mademoiselle 30ml', 'Perfume Coco Mademoiselle 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(521, '2021080939131', 'Fantasy Brit 30ml', 'Perfume Fantasy Brit 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(522, '20210809239132', 'Fantasy Brit 50ml', 'Perfume Fantasy Brit 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(523, '20210809339133', 'Fantasy Brit 100ml', 'Perfume Fantasy Brit 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(524, '20210809439134', 'Fantasy Brit 50ml', 'Perfume Fantasy Brit 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(525, '20210809539135', 'Fantasy Brit 100ml', 'Perfume Fantasy Brit 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(526, '20210809639136', 'Fantasy Brit 100ml', 'Perfume Fantasy Brit 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(527, '20210809739137', 'Fantasy Brit 100ml', 'Perfume Fantasy Brit 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(528, '20210809839138', 'Fantasy Brit 100ml', 'Perfume Fantasy Brit 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(529, '20210809939139', 'Fantasy Brit 100ml', 'Perfume Fantasy Brit 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(530, '2021080939140', 'Fantasy Brit 30ml', 'Perfume Fantasy Brit 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(531, '2021080939141', 'Flower by Kenzo 30ml', 'Perfume Flower by Kenzo 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(532, '20210809239142', 'Flower by Kenzo 50ml', 'Perfume Flower by Kenzo 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(533, '20210809339143', 'Flower by Kenzo 100ml', 'Perfume Flower by Kenzo 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(534, '20210809439144', 'Flower by Kenzo 50ml', 'Perfume Flower by Kenzo 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(535, '20210809539145', 'Flower by Kenzo 100ml', 'Perfume Flower by Kenzo 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(536, '20210809639146', 'Flower by Kenzo 100ml', 'Perfume Flower by Kenzo 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(537, '20210809739147', 'Flower by Kenzo 100ml', 'Perfume Flower by Kenzo 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(538, '20210809839148', 'Flower by Kenzo 100ml', 'Perfume Flower by Kenzo 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(539, '20210809939149', 'Flower by Kenzo 100ml', 'Perfume Flower by Kenzo 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(540, '2021080939150', 'Flower by Kenzo 100ml', 'Perfume Flower by Kenzo 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(541, '2021080939151', 'La vier est Belle 30ml', 'Perfume La vier est Belle 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(542, '20210809239152', 'La vier est Belle 50ml', 'Perfume La vier est Belle 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(543, '20210809339153', 'La vier est Belle 100ml', 'Perfume La vier est Belle 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(544, '20210809439154', 'La vier est Belle 50ml', 'Perfume La vier est Belle 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(545, '20210809539155', 'La vier est Belle 100ml', 'Perfume La vier est Belle 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(546, '20210809639156', 'La vier est Belle 100ml', 'Perfume La vier est Belle 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(547, '20210809739157', 'La vier est Belle 100ml', 'Perfume La vier est Belle 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(548, '20210809839158', 'La vier est Belle 100ml', 'Perfume La vier est Belle 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(549, '20210809939159', 'La vier est Belle 100ml', 'Perfume La vier est Belle 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(540, '2021080939160', 'La vier est Belle 100ml', 'Perfume La vier est Belle 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(551, '2021080939161', 'Paison Girl 30ml', 'Perfume Paison Girl 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(552, '20210809239162', 'Paison Girl 50ml', 'Perfume Paison Girl 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(553, '20210809339163', 'Paison Girl 100ml', 'Perfume Paison Girl 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(554, '20210809439164', 'Paison Girl 50ml', 'Perfume Paison Girl 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(555, '20210809539165', 'Paison Girl 100ml', 'Perfume Paison Girl 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(556, '20210809639166', 'Paison Girl 100ml', 'Perfume Paison Girl 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(557, '20210809739167', 'Paison Girl 100ml', 'Perfume Paison Girl 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(558, '20210809839168', 'Paison Girl 100ml', 'Perfume Paison Girl 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(559, '20210809939169', 'Paison Girl 100ml', 'Perfume Paison Girl 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(560, '2021080939170', 'Paison Girl 100ml', 'Perfume Paison Girl 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(561, '2021080939171', 'Scandal 30ml', 'Perfume Scandal 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(562, '20210809239172', 'Scandal 50ml', 'Perfume Scandal 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(563, '20210809339173', 'Scandal 100ml', 'Perfume Scandal 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(564, '20210809439174', 'Scandal 50ml', 'Perfume Scandal 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(565, '20210809539175', 'Scandal 100ml', 'Perfume Scandal 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(566, '20210809613976', 'Scandal 100ml', 'Perfume Scandal 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(567, '20210809739177', 'Scandal 100ml', 'Perfume Scandal 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(568, '20210809839178', 'Scandal 100ml', 'Perfume Scandal 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(569, '20210809939179', 'Scandal 100ml', 'Perfume Scandal 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(570, '2021080939100', 'Scandal 100ml', 'Perfume Scandal 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(571, '2021080939181', 'Glamour 30ml', 'Perfume Glamour 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(572, '20210809239182', 'Glamour 50ml', 'Perfume Glamour 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(573, '20210809339183', 'Glamour 100ml', 'Perfume Glamour 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(574, '20210809439184', 'Glamour 50ml', 'Perfume Glamour 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(575, '20210809539185', 'Glamour 100ml', 'Perfume Glamour 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(576, '20210809639186', 'Glamour 100ml', 'Perfume Glamour 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(577, '20210809739187', 'Glamour 100ml', 'Perfume Glamour 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(578, '20210809839188', 'Glamour 100ml', 'Perfume Glamour 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(579, '20210809939189', 'Glamour 100ml', 'Perfume Glamour 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(580, '2021080939190', 'Glamour 100ml', 'Perfume Glamour 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(581, '2021080939191', 'Good Girl CH 30ml', 'Perfume Good Girl CH 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(582, '20210809239192', 'Good Girl CH 50ml', 'Perfume Good Girl CH 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(583, '20210809339193', 'Good Girl CH100ml', 'Perfume Good Girl CH 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(584, '20210809439194', 'Good Girl CH 50ml', 'Perfume Good Girl CH 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(585, '20210809539195', 'Good Girl CH 100ml', 'Perfume Good Girl CH 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(586, '20210809639196', 'Good Girl CH 100ml', 'Perfume Good Girl CH 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(587, '20210809739197', 'Good Girl CH 100ml', 'Perfume Good Girl CH 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(588, '20210809839198', 'Good Girl CH 100ml', 'Perfume Good Girl CH 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(589, '20210809939199', 'Good Girl CH 100ml', 'Perfume Good Girl CH 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(590, '2021080939200', 'Good Girl CH 100ml', 'Perfume Good Girl CH 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(591, '2021080939201', 'Eternity 30ml', 'Perfume Eternity 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(592, '20210809239202', 'Eternity 50ml', 'Perfume Eternity 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(593, '20210809339203', 'Eternity 100ml', 'Perfume Eternity 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(594, '20210809439204', 'Eternity 50ml', 'Perfume Eternity 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(595, '20210809539205', 'Eternity 100ml', 'Perfume Eternity 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(596, '20210809639206', 'Eternity 100ml', 'Perfume Eternity 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(597, '20210809739207', 'Eternity 100ml', 'Perfume Eternity 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(598, '20210809839208', 'Eternity 100ml', 'Perfume Eternity 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(599, '20210809939209', 'Eternity 100ml', 'Perfume Eternity 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(600, '2021080939210', 'Eternity 100ml', 'Perfume Eternity 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(601, '2021080939211', 'Black Optium ysl 30ml', 'Perfume Black Optium ysl 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(602, '20210809239212', 'Black Optium ysl 50ml', 'Perfume Black Optium ysl 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(603, '20210809339213', 'Black Optium ysl 100ml', 'Perfume Black Optium ysl 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(604, '20210809439214', 'Black Optium ysl 50ml', 'Perfume Black Optium ysl 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(605, '20210809539215', 'Black Optium ysl 100ml', 'Perfume Black Optium ysl 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(606, '20210809639216', 'Black Optium ysl 100ml', 'Perfume Black Optium ysl 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(607, '20210809739217', 'Black Optium ysl 100ml', 'Perfume Black Optium ysl 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(608, '20210809839218', 'Black Optium ysl 100ml', 'Perfume Black Optium ysl 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(609, '20210809939219', 'Black Optium ysl 100ml', 'Perfume Black Optium ysl 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(610, '2021080939220', 'Black Optium ysl 100ml', 'Perfume Black Optium ysl 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(611, '2021080939221', 'Gabriela Firm 30ml', 'Perfume Gabriela Firm 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(612, '20210809239222', 'Gabriela Firm 50ml', 'Perfume Gabriela Firm 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(613, '20210809339223', 'Gabriela Firm 100ml', 'Perfume Gabriela Firm 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(614, '20210809439224', 'Gabriela Firm 50ml', 'Perfume Gabriela Firm 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(615, '20210809539225', 'Gabriela Firm 100ml', 'Perfume Gabriela Firm 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(616, '20210809639226', 'Gabriela Firm 100ml', 'Perfume Gabriela Firm 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(617, '20210809739227', 'Gabriela Firm 100ml', 'Perfume Gabriela Firm 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(618, '20210809839228', 'Gabriela Firm 100ml', 'Perfume Gabriela Firm 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(619, '20210809939229', 'Gabriela Firm 100ml', 'Perfume Gabriela Firm 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(620, '2021080939230', 'Gabriela Firm 100ml', 'Perfume Gabriela Firm 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(621, '2021080939231', 'Polo Sport Wom 30ml', 'Perfume Polo Sport Wom 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(622, '20210809239232', 'Polo Sport Wom 50ml', 'Perfume Polo Sport Wom 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(623, '20210809339233', 'Polo Sport Wom 100ml', 'Perfume Polo Sport Wom 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(624, '20210809439234', 'Polo Sport Wom 50ml', 'Perfume Polo Sport Wom 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(625, '20210809539235', 'Polo Sport Wom 100ml', 'Perfume Polo Sport Wom 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(626, '20210809639236', 'Polo Sport Wom 100ml', 'Perfume Polo Sport Wom 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(627, '20210809739237', 'Polo Sport Wom 100ml', 'Perfume Polo Sport Wom 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(628, '20210809839238', 'Polo Sport Wom 100ml', 'Perfume Polo Sport Wom 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(631, '2021080939241', 'Si Armani 30ml', 'Perfume Si Armani 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(632, '20210809239242', 'Si Armani 50ml', 'Perfume Si Armani 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(633, '20210809339243', 'Si Armani 100ml', 'Perfume Si Armani 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(634, '20210809439244', 'Si Armani 50ml', 'Perfume Si Armani 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(635, '20210809539245', 'Si Armani 100ml', 'Perfume Si Armani 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(636, '20210809639246', 'Si Armani 100ml', 'Perfume Si Armani 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(637, '20210809739247', 'Si Armani 100ml', 'Perfume Si Armani 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(638, '20210809839248', 'Si Armani 100ml', 'Perfume Si Armani 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(639, '20210809939249', 'Si Armani 100ml', 'Perfume Si Armani 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(630, '2021080939250', 'Si Armani 100ml', 'Perfume Si Armani 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(641, '2021080939641', 'Laguma 30ml', 'Perfume Laguma 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(642, '20210809239642', 'Laguma 50ml', 'Perfume Laguma 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(643, '20210809339643', 'Laguma 100ml', 'Perfume Laguma 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(644, '20210809439644', 'Laguma 50ml', 'Perfume Laguma 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(645, '20210809539645', 'Laguma 100ml', 'Perfume Laguma 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(646, '20210809639646', 'Laguma 100ml', 'Perfume Laguma 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(647, '20210809739647', 'Laguma 100ml', 'Perfume Laguma 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(648, '20210809839648', 'Laguma 100ml', 'Perfume Laguma 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(649, '20210809939649', 'Laguma 100ml', 'Perfume Laguma 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(650, '2021080939650', 'Laguma 100ml', 'Perfume Laguma 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(651, '2021080939651', 'Light Blue vs 3 30ml', 'Perfume Light Blue vs 3 30ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(652, '20210809239652', 'Light Blue vs 3 50ml', 'Perfume Light Blue vs 3 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(653, '20210809339653', 'Light Blue vs 3 100ml', 'Perfume Light Blue vs 3 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(654, '20210809439654', 'Light Blue vs 3 50ml', 'Perfume Light Blue vs 3 50ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(655, '20210809539655', 'Light Blue vs 3 100ml', 'Perfume Light Blue vs 3 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(656, '20210809639656', 'Light Blue vs 3 100ml', 'Perfume Light Blue vs 3 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(657, '20210809739657', 'Light Blue vs 3 100ml', 'Perfume Light Blue vs 3 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(658, '20210809839658', 'Light Blue vs 3 100ml', 'Perfume Light Blue vs 3 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(659, '20210809939659', 'Light Blue vs 3 100ml', 'Perfume Light Blue vs 3 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(660, '2021080939660', 'Light Blue vs 3 100ml', 'Perfume Light Blue vs 3 100ml Perfumaria Essenza', 'Essenza', 'Feminino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(661, '2021080939661', 'Lavanda Inglesa 30ml', 'Perfume Lavanda Inglesa 30ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(662, '20210809239662', 'Lavanda Inglesa 50ml', 'Perfume Lavanda Inglesa 50ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(663, '20210809339663', 'Lavanda Inglesa 100ml', 'Perfume Lavanda Inglesa 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(664, '20210809439664', 'Lavanda Inglesa 50ml', 'Perfume Lavanda Inglesa 50ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(665, '20210809539665', 'Lavanda Inglesa 100ml', 'Perfume Lavanda Inglesa 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(666, '20210809639666', 'Lavanda Inglesa 100ml', 'Perfume Lavanda Inglesa 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(667, '20210809739667', 'Lavanda Inglesa 100ml', 'Perfume Lavanda Inglesa 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(668, '20210809839668', 'Lavanda Inglesa 100ml', 'Perfume Lavanda Inglesa 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(669, '20210809939669', 'Lavanda Inglesa 100ml', 'Perfume Lavanda Inglesa 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(670, '2021080939670', 'Lavanda Inglesa 100ml', 'Perfume Lavanda Inglesa 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(671, '2021080939671', 'Mamãe Bebê 30ml', 'Perfume Mamãe Bebê 30ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(672, '20210809239672', 'Mamãe Bebê 50ml', 'Perfume Mamãe Bebê 50ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(673, '20210809339673', 'Mamãe Bebê 100ml', 'Perfume Mamãe Bebê 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(674, '20210809439674', 'Mamãe Bebê 50ml', 'Perfume Mamãe Bebê 50ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(675, '20210809539675', 'Mamãe Bebê 100ml', 'Perfume Mamãe Bebê 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(676, '20210809639676', 'Mamãe Bebê 100ml', 'Perfume Mamãe Bebê 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(677, '20210809739677', 'Mamãe Bebê 100ml', 'Perfume Mamãe Bebê 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(678, '20210809839678', 'Mamãe Bebê 100ml', 'Perfume Mamãe Bebê 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(679, '20210809939679', 'Mamãe Bebê 100ml', 'Perfume Mamãe Bebê 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(680, '2021080939680', 'Mamãe Bebê 100ml', 'Perfume Mamãe Bebê 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(681, '2021080939681', 'Giovanna Baby 30ml', 'Perfume Giovanna Baby 30ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(682, '20210809239682', 'Giovanna Baby 50ml', 'Perfume Giovanna Baby 50ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(683, '20210809339683', 'Giovanna Baby 100ml', 'Perfume Giovanna Baby 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(684, '20210809439684', 'Giovanna Baby 50ml', 'Perfume Giovanna Baby 50ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(685, '20210809539685', 'Giovanna Baby 100ml', 'Perfume Giovanna Baby 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(686, '20210809639686', 'Giovanna Baby 100ml', 'Perfume Giovanna Baby 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(687, '20210809739687', 'Giovanna Baby 100ml', 'Perfume Giovanna Baby 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(688, '20210809839688', 'Giovanna Baby 100ml', 'Perfume Giovanna Baby 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(689, '20210809939689', 'Giovanna Baby 100ml', 'Perfume Giovanna Baby 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(690, '2021080939690', 'Giovanna Baby 100ml', 'Perfume Giovanna Baby 100ml Perfumaria Essenza', 'Essenza', 'Colônia ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0'),
(691, '20210809691', 'J\'adore Ultamate 30ml', 'Perfume J\'adore Ultamate 30ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 30, 1, 'photo_2021-08-09_12-19-11.jpg', 24, '0'),
(692, '202108092692', 'J\'adore Ultamate 50ml', 'Perfume J\'adore Ultamate 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-54-01.jpg', 40, '0'),
(693, '202108093693', 'J\'adore Ultamate 100ml', 'Perfume J\'adore Ultamate 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-15.jpg', 70, '0'),
(694, '202108094694', 'J\'adore Ultamate 50ml', 'Perfume J\'adore Ultamate 50ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 50, 1, 'photo_2021-08-09_12-55-16.jpg', 40, '0'),
(695, '202108095695', 'J\'adore Ultamate 100ml', 'Perfume J\'adore Ultamate 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-18.jpg', 70, '0'),
(696, '202108096696', 'J\'adore Ultamate 100ml', 'Perfume J\'adore Ultamate 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-20.jpg', 80, '0'),
(697, '202108097697', 'J\'adore Ultamate 100ml', 'Perfume J\'adore Ultamate 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-22.jpg', 80, '0'),
(698, '202108098698', 'J\'adore Ultamate 100ml', 'Perfume J\'adore Ultamate 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-23.jpg', 80, '0'),
(699, '202108099699', 'J\'adore Ultamate 100ml', 'Perfume J\'adore Ultamate 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-25.jpg', 80, '0'),
(700, '20210809700', 'J\'adore Ultamate 100ml', 'Perfume J\'adore Ultamate 100ml Perfumaria Essenza', 'Essenza', 'Masculino ', 'Essenza', 'Alérgicos a produtos caseiros', 100, 1, 'photo_2021-08-09_12-55-26.jpg', 80, '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `revendedors`
--

CREATE TABLE `revendedors` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(13) NOT NULL,
  `nacimento` int(8) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `preferencia` varchar(255) NOT NULL,
  `numero` int(30) NOT NULL,
  `cidade` varchar(60) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `pontos` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `carrinhos`
--
ALTER TABLE `carrinhos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `carrinhos_produtos`
--
ALTER TABLE `carrinhos_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`,`cpf`);

--
-- Índices para tabela `mundoessenza`
--
ALTER TABLE `mundoessenza`
  ADD PRIMARY KEY (`id`,`codigo`) USING BTREE;

--
-- Índices para tabela `revendedors`
--
ALTER TABLE `revendedors`
  ADD PRIMARY KEY (`id`,`cpf`) USING BTREE;

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `carrinhos`
--
ALTER TABLE `carrinhos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `carrinhos_produtos`
--
ALTER TABLE `carrinhos_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mundoessenza`
--
ALTER TABLE `mundoessenza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `revendedors`
--
ALTER TABLE `revendedors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
