-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 04-Dez-2018 às 16:04
-- Versão do servidor: 5.6.41-84.1
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `engne598_coincoin`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `banco`
--

CREATE TABLE `banco` (
  `usuarios_id` int(11) NOT NULL,
  `banco` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agencia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `usuarios_id` int(11) NOT NULL,
  `cep` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complemento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logradouro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lat` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lng` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`usuarios_id`, `cep`, `cidade`, `estado`, `complemento`, `logradouro`, `numero`, `lat`, `lng`) VALUES
(3, '72594-230', 'Brasília', 'DF', 'complementando', 'Quadra QRI 37', '221', '-15.8762853', '-47.9973611'),
(6, '71543-543', 'Cardeal', 'DF', 'Coisinha', 'Casa do catwiwvwjw', '12\r', '-15.836754', '-47.993249'),
(10, '72594-230', 'Brasília', 'DF', 'complementando', 'Quadra QRI 36', '221\r', '-15.84855081', '-48.13399685'),
(101, '71.562-44', 'Brasilia', 'DF', 'reeed', 'Casa da Casinhaa', '12', '0.0', '0.0'),
(106, '71.620-06', 'Brasília', 'DF', 'Quadra 01', 'Lago Sul', '01', '0.0', '0.0'),
(107, '71.617-55', 'Brasília', 'DF', 'susveievd', 'Feeesdsswwbb', '12', '-15.846629205230556', '-47.73215040564537'),
(108, '77.784-44', 'bdbdbdb', 'AP', 'ndndndn', 'jsnsnsns', '959', '-15.76597986677199', '-47.87188678979874'),
(114, '70.297-40', 'Brasília', 'DF', 'Sl 170', 'Octogonal Área Octogonal Sul 4', '35', '0.0', '0.0'),
(116, '70.297-40', 'Brasília', 'DF', 'ksnsjjajjs sknab', 'Octogonal Área Octogonal Sul 4', '16882', '0.0', '0.0'),
(117, '70.297-40', 'Brasília', 'DF', 'sggte', 'Octogonal Área Octogonal Sul 4', '649', '-15.762981661244435', '-47.8723119199276'),
(118, '70.297-40', 'Brasília', 'DF', 'faculdade', 'Octogonal Área Octogonal Sul 4', '1', '-15.765648491734673', '-47.86696594208479'),
(119, '70.297-40', 'Brasília', 'DF', 'octa', 'Octogonal Área Octogonal Sul 4', '1', '-15.760404498477172', '-47.87067141383886');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estabelecimentos`
--

CREATE TABLE `estabelecimentos` (
  `id` int(11) NOT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '0 - Inabilitado\n1- Habilitado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `estabelecimentos`
--

INSERT INTO `estabelecimentos` (`id`, `tipo`, `status`) VALUES
(1, 'Açougue', 1),
(2, 'Alfaiataria', 1),
(3, 'Antiquário', 1),
(4, 'Banca de jornal', 1),
(5, 'Bazar', 1),
(6, 'Cabeleireiro', 1),
(7, 'Coffeeshop', 1),
(8, 'Drogaria', 1),
(9, 'Farmácia', 1),
(10, 'Gráfica', 1),
(11, 'Loja', 1),
(12, 'Loja de brinquedos', 1),
(13, 'Papelaria', 1),
(14, 'Pet shop', 1),
(15, 'Posto de abastecimento', 1),
(16, 'Pub', 1),
(17, 'Quitanda', 1),
(18, 'Salão de beleza', 1),
(19, 'Sebo', 1),
(20, 'Sex shop', 1),
(21, 'Sorveteria', 1),
(22, 'Supermercado', 1),
(23, 'Tabacaria', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja`
--

CREATE TABLE `loja` (
  `usuarios_id` int(11) NOT NULL,
  `cnpj` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `nome_est` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` text COLLATE utf8_unicode_ci,
  `telefone_est` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `imagem_perfil` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'default_image.jpg',
  `imagem_capa` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'default_image.jpg',
  `promocao` int(11) DEFAULT NULL,
  `estabelecimentos_id` int(11) NOT NULL,
  `lat` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `long` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `loja`
--

INSERT INTO `loja` (`usuarios_id`, `cnpj`, `nome_est`, `descricao`, `telefone_est`, `imagem_perfil`, `imagem_capa`, `promocao`, `estabelecimentos_id`, `lat`, `long`) VALUES
(3, '96.909.291/0001-04', 'Padaria Delícia', 'Testando a descrição.', '(61) 99999-9999', 'img-1539865090.png', 'img-1539865090.png', 16, 1, '-15.8762853', '-47.9973611'),
(6, '98.027.135/0001-45', 'Casa do Carlonhos', 'Kugar Tip', '(12) 6636-3211', 'imagem.jpg', 'imagem.jpg', 11, 2, '-15.836754', '-47.993249'),
(10, '34.350.582/0001-58', 'Taverna Nerd', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 5, 3, '-15.84855081', '-48.13399685'),
(11, '84.931.707/0001-01', 'Posto Casa do Ouro', 'Testando a descrição.', '(61) 99999-9999', 'img-1543874446.png', 'img-1543874461.png', 7, 4, '-15.79402851', '-47.93329729'),
(15, '69.252.986/0001-93', 'Oficina Vira Lata Fred', 'Testando a descrição.', '(61) 99999-9999', 'img-1542916295.png', 'img-1542911166.png', 9, 5, '-15.84027378', '-47.97621263'),
(17, '47.964.842/0001-27', 'Relojoaria Marques', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 11, 6, '-15.86438318', '-47.88626207'),
(23, '16.127.942/0001-75', 'Mercearia do Seu Zé', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 13, 7, '-15.7771794', '-47.89003862'),
(25, '41.738.467/0001-10', 'Loja de Games NOS', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 15, 8, '-15.80460108', '-47.83270372'),
(26, '53.041.231/0001-00', 'Taverna Mina-San', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 17, 9, '-15.71010074', '-47.91201128'),
(30, '62.542.287/0001-39', 'Bar dos Amigos', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 19, 10, '-15.96084655', '-48.03555971'),
(35, '05.115.202/0001-00', 'Supermercado Joga 10', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 21, 11, '-16.01918103', '-48.06791788'),
(36, '50.860.788/0001-84', 'Padaria Xibiu', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 23, 12, '-16.03130784', '-48.04517275'),
(37, '33.952.731/0001-96', 'Salão Moda Fora', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 25, 13, '-16.0350696', '-48.02172355'),
(42, '71.186.224/0001-88', 'Posto 229', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 27, 14, '-15.95635102', '-47.99681312'),
(43, '67.662.409/0001-44', 'Oficina Casa do Carro', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 29, 15, '-15.87093374', '-47.98676315'),
(46, '42.249.316/0001-61', 'Relojoaria B2', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 31, 16, '-15.83479295', '-48.04600957'),
(51, '50.242.608/0001-09', 'Mercearia BRZUERA', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 33, 17, '-15.84845883', '-48.05802545'),
(54, '64.016.069/0001-96', 'Casa do Macarrão', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 35, 18, '-15.81874953', '-48.0425398'),
(57, '19.498.892/0001-20', 'Bar do José', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 37, 19, '-15.83303539', '-48.02374323'),
(62, '04.105.742/0001-32', 'Casa de Carnes Miau', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 39, 20, '-15.80172004', '-47.99686045'),
(63, '68.092.574/0001-70', 'Feira do Produtor', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 41, 21, '-15.78544972', '-47.91044691'),
(64, '12.635.401/0001-05', 'Feira do Consumidor', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 43, 22, '-15.77611641', '-47.89156416'),
(69, '71.153.754/0001-20', 'Posto do Descanso', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 45, 23, '-15.7939731', '-47.8777016'),
(72, '64.160.354/0001-86', 'Casa do São Paulino', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 2, 1, '-15.7881917', '-47.8581322'),
(75, '43.815.941/0001-96', 'Supermercado Tats', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 4, 2, '-15.98254863', '-48.01590448'),
(79, '72.286.193/0001-08', 'Supermercado Souza', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 6, 3, '-15.79554231', '-47.82502234'),
(82, '78.622.972/0001-05', 'Sacolão Sacola Grande', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 8, 4, '-15.83699807', '-47.87330076'),
(93, '57.550.714/0001-90', 'Academia Birl', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 10, 5, '-15.82911222', '-47.85660669'),
(94, '50.363.011/0001-04', 'Academia Massa Magra', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 12, 6, '-15.82996518', '-47.82064105'),
(99, '58.502.823/0001-03', 'Ballet do 24', 'Testando a descrição.', '(61) 99999-9999', 'imagem.jpg', 'imagem.jpg', 14, 7, '-16.03394759', '-48.06834703'),
(101, '42.492.394/0001-92', 'Carlitos Loja E Coisas', 'Hsjeheis sjsbsd', '(61) 99954-8003', 'default_image.jpg', 'default_image.jpg', 0, 1, '0.0', '0.0'),
(106, '80.778.086/0001-17', 'Loja Do Mateus', 'Suplementos e Varejo', '(61) 98123-4567', 'default_image.jpg', 'default_image.jpg', 0, 1, '0.0', '0.0'),
(107, '20.976.994/0001-93', 'Casaria Do Negócio', 'Feievekebeje', '(61) 99944-4444', 'default_image.jpg', 'default_image.jpg', 0, 1, '-15.846629205230556', '-47.73215040564537'),
(108, '03.829.949/0001-97', 'Bshdjdjjd', 'jdjdjdjjd', '(61) 99319-4494', 'default_image.jpg', 'default_image.jpg', 0, 1, '-15.76597986677199', '-47.87188678979874'),
(114, '00.000.208/0001-00', 'Brb', 'Banco', '(61) 3037-3070', 'default_image.jpg', 'default_image.jpg', 0, 1, '0.0', '0.0'),
(116, '73.666.870/0001-78', 'Jdhja Fis. Fssc', 'bsjrbakb riavhe. ', '(61) 99114-1679', 'default_image.jpg', 'default_image.jpg', 0, 1, '0.0', '0.0'),
(117, '01.853.717/0001-49', 'Jejbej Djabb ', 'jenbrjabb tiwbbrjs. fjsjbr r jwjhhgu', '(61) 99114-1679', 'default_image.jpg', 'default_image.jpg', 0, 1, '-15.762981661244435', '-47.8723119199276'),
(118, '00.273.814/0001-08', 'Mil De Re', 'mil de re e o novo nome do restaurante', '(61) 99114-1679', 'default_image.jpg', 'default_image.jpg', 0, 1, '-15.765648491734673', '-47.86696594208479'),
(119, '63.657.512/0001-45', 'Loja Mil De Re', 'loja vem kabrblav ekabrbna dkhba ', '(61) 99114-1679', 'default_image.jpg', 'default_image.jpg', 0, 1, '-15.760404498477172', '-47.87067141383886');

-- --------------------------------------------------------

--
-- Estrutura da tabela `promocoes`
--

CREATE TABLE `promocoes` (
  `id` int(11) NOT NULL,
  `porcentagem` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_expiracao` timestamp NULL DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `data_expiracao` timestamp NULL DEFAULT NULL,
  `token` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tokens`
--

INSERT INTO `tokens` (`id`, `data_expiracao`, `token`, `usuarios_id`) VALUES
(3, NULL, '0223c8c720c09b0e7334786d9f11a04d868fbccf', 103),
(8, '2018-09-04 08:46:30', '2bddd5f4bb7bca2d5b077930346ab0f7ba5fcfca', 106),
(9, NULL, 'c6d254a938af6c7af1803dfef5127a5215c8d8ad', 107),
(10, '2018-09-07 12:48:33', 'c76b88a6e1f6220521a1a920305bcaf88a3fd99f', 102),
(11, NULL, '82e8578666bb95eae45d7c4798ef5d716cfebc81', 108),
(12, NULL, '0bc7db3495e85167c91efb58e9489ccbc0e6a5eb', 109),
(13, NULL, '3ce301f0a861407d6730dfcfa8f9ab87c24173d5', 110),
(14, '2018-09-22 17:47:56', '0cc39f05d3b7cba52a35c0b7e6821d0a90e14dfc', 2),
(16, '2018-10-20 14:58:08', '15d38b39b810f89fcb5619b2ffa517c68494523d', 105),
(21, NULL, '35bd34251760d56af481ab40b3961a75bcb8ab62', 116),
(23, NULL, '4f43537335d8190523631151d8b71035d9822e6a', 118);

-- --------------------------------------------------------

--
-- Estrutura da tabela `transacoes`
--

CREATE TABLE `transacoes` (
  `id` int(11) NOT NULL,
  `id_user_origem` int(11) NOT NULL,
  `id_user_destino` int(11) NOT NULL,
  `valor` decimal(15,2) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_antes` decimal(15,2) DEFAULT NULL,
  `total_depois` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `transacoes`
--

INSERT INTO `transacoes` (`id`, `id_user_origem`, `id_user_destino`, `valor`, `data`, `total_antes`, `total_depois`) VALUES
(1, 2, 101, '90.00', '2018-08-28 13:49:29', '1000.00', '910.00'),
(2, 101, 2, '90.00', '2018-08-28 13:50:21', '90.00', '0.00'),
(3, 2, 101, '900.00', '2018-08-28 13:50:46', '1000.00', '100.00'),
(4, 102, 103, '0.00', '2018-08-29 19:56:01', '0.00', '0.00'),
(5, 102, 103, '0.00', '2018-08-29 19:57:29', '0.00', '0.00'),
(6, 104, 102, '0.00', '2018-08-29 20:11:00', '0.00', '0.00'),
(7, 102, 104, '0.00', '2018-09-03 03:52:55', '0.00', '0.00'),
(8, 104, 102, '0.00', '2018-09-03 03:55:33', '0.00', '0.00'),
(9, 106, 102, '0.00', '2018-09-03 04:18:15', '0.00', '0.00'),
(10, 106, 104, '0.00', '2018-09-03 04:19:18', '0.00', '0.00'),
(11, 2, 50, '2.00', '2018-09-21 19:11:37', '100.00', '98.00'),
(12, 50, 2, '15.00', '2018-09-21 19:12:29', '79.77', '64.77'),
(13, 2, 50, '13.00', '2018-09-21 19:13:33', '113.00', '100.00'),
(16, 6, 4, '24.00', '2018-11-05 22:06:30', '1000.00', '976.00'),
(17, 6, 4, '21.00', '2018-11-05 22:25:40', '976.00', '955.00'),
(18, 2, 6, '12.00', '2018-11-13 16:48:06', '100.00', '88.00'),
(19, 2, 6, '11.00', '2018-11-13 16:59:10', '88.00', '77.00'),
(20, 15, 10, '11.00', '2018-11-13 17:10:24', '18034.00', '18023.00'),
(21, 15, 6, '1.00', '2018-11-13 17:14:59', '18023.00', '18022.00'),
(22, 4, 12, '1.00', '2018-11-22 18:41:29', '845.00', '844.00'),
(23, 4, 12, '1.00', '2018-11-22 18:52:05', '844.00', '843.00'),
(24, 12, 4, '1.00', '2018-11-22 18:56:25', '502.00', '501.00'),
(25, 11, 4, '1234.00', '2018-12-03 22:31:01', '65000.00', '63766.00'),
(26, 11, 4, '1.00', '2018-12-03 22:33:05', '63766.00', '63765.00'),
(27, 11, 4, '1.00', '2018-12-03 22:53:57', '63765.00', '63764.00'),
(28, 11, 4, '1.00', '2018-12-03 22:57:04', '63764.00', '63763.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cpf` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `saldo` decimal(15,2) NOT NULL DEFAULT '0.00',
  `verificado` int(11) NOT NULL DEFAULT '0' COMMENT '0 - Não Verificado |\n1 - Verificado |\n2 - Excluído',
  `imagem` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default_image.jpg',
  `privilegio` int(11) NOT NULL DEFAULT '0' COMMENT '0 - usuario |\n1 - lojista |\n2 - admin',
  `create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `telefone`, `saldo`, `verificado`, `imagem`, `privilegio`, `create`, `hash`) VALUES
(1, 'Phelipe Resende', '103.463.536-02', 'phelipeuni@gmail.com', '(12) 22222-2222', '1000.00', 1, 'default_image.jpg', 2, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(2, 'Tales', '064.927.791-00', 'adr.tales@gmail.com', '(12) 22222-2222', '77.00', 1, 'img-1543874984.png', 2, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(3, 'Pt', '377.135.816-77', 'pt@gmail.com', '(12) 3422-3211', '0.00', 0, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(4, 'Paulo', '018.894.061-80', 'euzinho@gmail.com', '(12) 6666-3211', '2081.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(5, 'Top', '860.123.129-20', 'meninotop@gmail.com', '(12) 6664-3211', '200.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(6, 'Bonecao Da UnB', '831.513.434-57', 'mlkloko@gmail.com', '(12) 6636-3211', '979.00', 1, 'img-1539866741.png', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(7, 'Edson Pai Minstsu', '241.211.249-52', 'pactocomodiabo@gmail.com', '(12) 6667-3211', '666.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(8, 'Porra', '659.275.526-17', 'quaseumacrianca@gmail.com', '(12) 6612-3211', '10.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(9, 'Concentro', '695.952.359-11', 'cnacasf@gmail.com', '(12) 6212-3211', '0.00', 0, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(10, 'Brasil Junior', '361.153.454-48', 'bjbj@gmail.com', '(12) 6212-1231', '1131.00', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(11, 'Engnet', '431.166.382-09', 'engnet@gmail.com', '(12) 7212-1231', '63763.00', 1, 'img-1543874694.png', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(12, 'Nao Tenho Ideia De Nome', '356.978.546-76', 'seila@gmail.com', '(12) 7234-1231', '501.00', 1, 'img-1542913914.png', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(13, 'Cafe', '576.143.622-17', 'cafe@gmail.com', '(12) 7211-1231', '127.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(14, 'Quero Cafe', '216.395.445-50', 'quecafe@gmail.com', '(12) 7211-1221', '18.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(15, 'Mwejebe', '557.132.657-30', 'wme@gmail.com', '(12) 2111-1221', '18022.00', 1, 'img-1542133812.png', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(16, 'Cheira Po', '387.116.810-63', 'viciado@gmail.com', '(12) 4511-1221', '0.10', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(17, 'Proerd', '844.884.156-52', 'aquiepulica@gmail.com', '(12) 3511-1229', '0.00', 0, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(18, 'Irineu', '963.733.382-74', 'irineuzera@gmail.com', '(12) 3516-1229', '450.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(19, 'Vc Nao Sabe', '430.602.863-10', 'vcnsb@gmail.com', '(12) 3516-1759', '0.00', 0, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(20, 'Nem Eu', '848.343.956-50', 'nemeu@gmail.com', '(12) 3516-1759', '98.17', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(21, 'Nao Tinha Medo', '092.435.365-16', 'ntmedo@gmail.com', '(61) 3517-1759', '100.72', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(22, 'O Tal Joao', '981.881.566-12', 'taljoao@gmail.com', '(61) 3007-1759', '70.93', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(23, 'De Santo Cristo', '543.548.285-29', 'dscristo@gmail.com', '(61) 3012-1759', '45.00', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(24, 'Era O Que', '073.271.082-03', 'eroque@gmail.com', '(61) 3012-1119', '45.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(25, 'Todos Diziam', '369.961.437-99', 'todosdiziam@gmail.com', '(61) 3332-1119', '4125.00', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(26, 'Quando Ele', '727.606.233-35', 'qndele@gmail.com', '(61) 3332-1221', '25.00', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(27, 'Se Perdeu', '990.573.442-20', 'seperdeu@gmail.com', '(61) 3532-1221', '12.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(28, 'Deixou Pra Tras', '268.931.848-24', 'deixou@gmail.com', '(61) 4532-1221', '0.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(29, 'Todo Marasmo', '365.789.823-96', 'todoele@gmail.com', '(61) 4532-1221', '0.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(30, 'Da Fazenda', '778.764.449-46', 'deladafazenda@gmail.com', '(61) 4556-1221', '1230.00', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(31, 'So Pra Sentir', '743.307.085-07', 'sentirmesmo@gmail.com', '(61) 3457-1759', '130.40', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(32, 'No Seu Sangue', '386.596.626-87', 'lanosangue@gmail.com', '(61) 3027-1759', '70.93', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(33, 'O Odio Que', '916.397.210-70', 'odiador@gmail.com', '(61) 3592-1759', '1345.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(34, 'Jesus', '576.813.124-80', 'painho@gmail.com', '(61) 3892-1119', '89.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(35, 'Lhe Deu', '587.716.446-52', 'pesado@gmail.com', '(61) 3132-1219', '0.00', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(36, 'Iziii', '658.057.422-41', 'inhegas@gmail.com', '(61) 3322-1331', '19.90', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(37, 'Pesadaum', '808.724.326-96', 'pesadaols@gmail.com', '(61) 3566-1221', '19.90', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(38, 'Dezenove', '161.572.717-52', 'uhuuu@gmail.com', '(61) 4578-1221', '10.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(39, 'E Noventa', '538.883.654-14', 'taacabando@gmail.com', '(61) 7732-1221', '89.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(40, 'Cansei Disso', '336.113.562-12', 'barraquit@gmail.com', '(61) 4586-1341', '230.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(41, 'Resolvi Continuar', '657.156.627-37', 'boraporra@gmail.com', '(61) 3127-1759', '10.40', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(42, 'Do It', '715.535.493-76', 'ni@gmail.com', '(61) 9927-1759', '9999.93', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(43, 'Just Do It', '497.459.399-43', 'ke@gmail.com', '(61) 9927-1790', '999.93', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(45, 'James Bond', '747.794.062-18', 'bondinho@gmail.com', '(61) 9989-4690', '4.15', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(46, 'Falta Pouco', '239.531.782-96', 'quaseporraaa@gmail.com', '(61) 6789-4690', '1234.56', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(47, 'Muito Pouco', '756.703.865-07', 'tamoindo@gmail.com', '(61) 9679-4690', '234.56', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(48, 'Continue A Nadar', '453.314.086-64', 'dory@gmail.com', '(61) 9680-4690', '987.56', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(49, 'E Se Lembre', '547.097.912-10', 'remember@gmail.com', '(61) 9690-4690', '98.56', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(50, 'João Vítor', '007.926.641-08', 'queirozbragajv@@gmail.com', '(61) 9319-6494', '77.77', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(51, 'Amanda Linda', '062.207.760-03', 'amanda@gmail.com', '(61) 7777-1919', '77.71', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(52, 'Rafaela Cabeluda', '578.527.310-15', 'rafacabelo@gmail.com', '(61) 1111-1111', '78.89', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(53, 'Gustavo Mano', '283.301.560-79', 'mitogus@gmail.com', '(61) 2222-2222', '47.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(54, 'Lucas Anã', '110.258.650-14', 'pegoumesmo@gmail.com', '(61) 9687-3333', '57.73', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(55, 'Daniel V8', '623.815.070-00', 'catudoamor@gmail.com', '(61) 3333-4690', '87.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(56, 'Samuel Mito da Elétrica', '669.721.840-10', 'samitoENE@gmail.com', '(61) 4444-4690', '27.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(57, 'Manuela Garrincha', '118.051.950-77', 'manugrr@gmail.com', '(61) 9687-4444', '33.73', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(58, 'Carlos Júnior', '973.280.660-59', 'carlosjr@gmail.com', '(61) 9687-5555', '17.87', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(59, 'Pavel Migué', '386.690.040-62', 'ialSS@gmail.com', '(61) 5555-4690', '57.43', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(60, 'Junior DF', '856.826.090-00', 'dfjunior@gmail.com', '(62) 9687-4690', '77.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(61, 'Dançando na Chuva', '194.396.330-42', 'raindance@gmail.com', '(61) 1212-1212', '12.21', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(62, 'Star Wars', '874.888.780-35', 'eusouseupai@gmail.com', '(61) 4545-5454', '54.45', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(63, 'Star Trek', '069.814.070-27', 'starwarsemelhor@gmail.com', '(61) 9682-7452', '7.73', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(64, 'Game Over', '998.499.720-09', 'deuruim@gmail.com', '(61) 9687-4791', '66.57', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(65, 'Mortal Kombat', '878.237.690-50', 'katana@gmail.com', '(61) 2020-2020', '77.20', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(66, 'Cristiano Ronaldo', '564.537.080-51', 'cr7mito@gmail.com', '(61) 2121-2222', '22.45', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(67, 'Lionel Messi', '401.507.670-21', 'messimito@gmail.com', '(61) 9687-4689', '555.55', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(68, 'Neymar Júnior', '188.924.880-07', 'neymito@gmail.com', '(61) 4545-4545', '48.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(69, 'Mesut Ozil', '373.824.290-24', 'ozilmesut@gmail.com', '(61) 9687-7887', '100.25', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(70, 'Gino e Geno', '921.715.940-98', 'sertanejoraiz@gmail.com', '(61) 8684-4690', '22.46', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(72, 'Phelipe Coutinho', '518.478.100-55', '14barca@gmail.com', '(61) 1414-1414', '14.41', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(73, 'Tinga Ney', '571.716.270-71', 'neytinga@gmail.com', '(61) 0100-1010', '89.45', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(74, 'Game of Thrones', '945.728.570-08', 'vaijoaodasneves@gmail.com', '(61) 9696-6969', '69.96', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(75, 'Marcos', '407.580.600-68', 'socram@gmail.com', '(61) 9687-7865', '77.20', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(76, 'Com Grander Poderes Vem Grandes Nomes', '783.186.746-50', 'tiobenedito@gmail.com', '(61) 9687-4690', '18.56', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(77, 'Dark', '108.427.990-87', 'escuro@gmail.com', '(61) 2323-4690', '77.22', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(78, 'White', '293.713.620-65', 'claro@gmail.com', '(61) 7117-4690', '77.23', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(79, 'Gray', '951.221.840-20', 'cinza@gmail.com', '(61) 5898-4690', '77.24', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(81, 'Blue', '530.188.820-08', 'azul@gmail.com', '(61) 9687-9292', '75.26', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(82, 'Red', '983.932.010-63', 'vermelho@gmail.com', '(61) 9687-9393', '80.27', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(83, 'Yellow', '457.210.920-68', 'marelo@gmail.com', '(61) 9687-9494', '82.28', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(84, 'Brown', '993.002.500-60', 'marrozin@gmail.com', '(61) 9687-9595', '12.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(85, 'John', '079.736.130-80', 'joao@gmail.com', '(61) 9688-2323', '23.88', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(86, 'Silver', '431.235.490-11', 'prateado@gmail.com', '(61) 9687-8756', '5.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(87, 'Gold', '526.938.070-69', 'dourado@gmail.com', '(61) 9687-6769', '45.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(88, 'Picachu', '364.544.380-07', 'pokemon@gmail.com', '(61) 6952-4690', '55.25', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(89, 'Blastoise', '290.776.120-09', 'agua3@gmail.com', '(61) 4041-4690', '31.12', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(90, 'Squirtle', '287.578.150-20', 'agua1@gmail.com', '(61) 4243-4690', '74.53', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(91, 'Bubasauro', '047.839.370-95', 'terra1@gmail.com', '(61) 4445-4690', '77.86', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(92, 'Naruto Usumaki', '802.191.670-28', 'ninja@gmail.com', '(61) 4647-5090', '11.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(93, 'Sasuke Uchira', '868.603.260-50', 'ninja2@gmail.com', '(61) 7212-4690', '12.73', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(94, 'Sakura', '084.098.620-34', 'ninja3@gmail.com', '(61) 9687-0202', '13.73', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(95, 'Timão e Pumba', '307.830.660-74', 'hakunamatata@gmail.com', '(61) 9687-0303', '14.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(96, 'Jenoflexos', '439.750.480-69', 'dejoelhos@gmail.com', '(61) 9687-0404', '161.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(97, 'Fome', '216.947.140-55', 'come@gmail.com', '(61) 9687-0505', '200.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(98, 'Sono', '234.515.690-27', 'dorme@gmail.com', '(61) 9687-0600', '201.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(99, 'Tamo Junto', '003.748.890-23', 'enois@gmail.com', '(61) 9687-1025', '208.73', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(100, 'Phelipe Mito', '146.943.990-55', 'mitophelipe@gmail.com', '(61) 4546-0101', '10.10', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(101, 'Carlton Banks', '613.916.720-54', 'tata-blu@hotmail.com', '(61) 99945-8004', '900.00', 1, 'default_image.jpg', 1, '2018-08-28 13:46:24', '$2y$10$ZOfzwGgZ0nTYGvBwyC1wBeXW4eNWgF75Zw1E5TDU0Rt0.2fmF7uqC'),
(102, 'Mateus', '057.989.091-07', 'mateuspedrosa38@gmail.com', '(61) 98347-9282', '0.00', 1, 'default_image.jpg', 0, '2018-08-29 19:44:04', '$2y$10$InnbJoFvdvIS1qrbpdH7m.D8ncTNM.vSv5TIduNdRMmcPvtYNRd/q'),
(103, 'Moises', '451.683.853-20', 'moises_silva98@hotmail.com', '(61) 99695-2783', '0.00', 0, 'default_image.jpg', 0, '2018-08-29 19:52:48', '$2y$10$qeR95XRnaoKHp6x/sdZNKe9A7egvGAYyIafj6Oq39TIevUsqBbsKa'),
(104, 'Ellis', '379.618.451-00', 'matias-mateus520@hotmail.com', '(61) 98347-9282', '0.00', 1, 'default_image.jpg', 0, '2018-08-29 20:08:25', '$2y$10$Rg//n4RtJCq9bwms8XX3aO03zldhEdrIvbjjmwxq8TmJQ2k7KgcWa'),
(105, 'Moises', '065.390.461-46', 'moisesssousa98@gmail.com', '(61) 99695-2783', '0.00', 1, 'default_image.jpg', 0, '2018-08-31 14:02:55', '$2y$10$MR9Uxi2OMENqe6YsXBt9eOukfSdXEKnUKjAPGkCqQiYLeJYgQcp4S'),
(106, 'Matheus Pedroaa', '177.305.741-36', 'mateus.pedrosa@engnetconsultoria.com.br', '(61) 98347-9282', '0.00', 1, 'default_image.jpg', 1, '2018-09-03 04:06:33', '$2y$10$qy.Ezyp7qgW0ErXwSxhhj.SEb1o9KDowjGFgzlfwgtmMo/0mbEii.'),
(107, 'Carlinhos Caraiba', '072.237.580-82', 'barrettotales@gmail.com', '(61) 99544-4444', '0.00', 0, 'default_image.jpg', 1, '2018-09-05 01:37:27', '$2y$10$vfoKTXd.8Yc7X5Uxv7SrLORBJtrR3lrlAwnIFg4xtzd8fjc/uIiLS'),
(108, 'Gislenenene', '524.512.596-04', 'jsjsjsjsnsn@nsjdjd.com', '(64) 99319-6946', '0.00', 0, 'default_image.jpg', 1, '2018-09-21 18:33:13', '$2y$10$/jnfLK/QwOL1olN0Itk2gOSzHOka2eZ5D.FVNnS0UDrrYnaCpqAVS'),
(109, 'Tales Criolo', '851.525.877-34', 'cristo@gmail.com', '(61) 3399-8284', '0.00', 0, 'default_image.jpg', 0, '2018-09-21 18:35:20', '$2y$10$Y9eWGggtvtSaEkh1VtLmx.zjZ9b49esXVZqlYOwaBzeIxxPHVGqNO'),
(110, 'Luís Fernando Shigueki Araki', '012.991.161-59', 'araki.luis@gmail.com', '(61) 3341-1372', '0.00', 0, 'default_image.jpg', 0, '2018-09-21 18:53:58', '$2y$10$WIfZoZXQ0wWtyUV8PDjcR.uziVbqqBMVjqOiqnq3dTrHlXRXC4PNi'),
(111, 'Heitor Magalhães Vieira', '052.045.031-02', 'heitor.vieira@engnetconsultoria.com.br', '(61) 99991-3175', '0.00', 1, 'img-1540414435.png', 0, '2018-10-19 16:07:59', '$2y$10$Xo02U2oU9BQYPxHfQRVqCuMCt1z86h1Zff1JgpomJWnf2w3WAWX/C'),
(112, 'Henrique Vasconcelos ', '042.708.491-18', 'henrique.oliveira@engnetconsultoria.com.br', '(61) 99810-1273', '0.00', 1, 'img-1541495411.png', 0, '2018-10-19 16:59:29', '$2y$10$fvZNhvbYVbWmYdXLpr9BVO57mMFp7c3JfKgJTOWpRmFQxonqFH286'),
(113, 'Jethro', '051.700.247-70', 'jetbezerra@gmail.com', '(61) 98301-8859', '1200.00', 1, 'default_image.jpg', 0, '2018-10-27 14:37:23', '$2y$10$gv0Um4mzeOnEugu8kohPzOdkH6iGB.ha3bKwK5WdeZOrTu6FRl2q.'),
(114, 'Cezar', '901.909.391-68', 'administrador@admcoincoin.com', '(62) 99844-1122', '0.00', 1, 'default_image.jpg', 2, '2018-10-27 14:56:02', '$2y$10$7AyaJ5aDpv271ot7nOXkYuww9lllGPSmz.VvL0WyVeS3yT8nvOeLi'),
(115, 'Diretor De Projetos', '149.487.430-03', 'projetos@engnetconsultoria.com.br', '(61) 99114-1679', '0.00', 1, 'default_image.jpg', 0, '2018-11-06 13:40:06', '$2y$10$93.Kzjxqg3MD.GLplslK5umvM/PU581/EVnjZqp/ybv5K7w2aivCO'),
(116, 'Paulo', '254.624.230-04', 'paulo.thiago.98@gmail.com', '(61) 99114-1679', '0.00', 0, 'default_image.jpg', 1, '2018-11-12 21:26:18', '$2y$10$fgGVEo3jXrvqCy4tv8vIQua8jGGiX8glk7CvbxOa8qlTEd8F1gfEi'),
(117, 'Paulo Boa', '141.625.820-50', 'paulo.mascarenhas@engnetconsultoria.com.br', '(61) 99114-1679', '0.00', 1, 'default_image.jpg', 1, '2018-11-23 14:17:02', '$2y$10$PB9hcILsfc68aQsorcoMMuQmjg1ZwsHonNyme4YHF3DqV.cS2VELa'),
(118, 'Paulo Thiago', '084.829.460-21', 'pedron@hotmail.com', '(61) 99114-1679', '0.00', 0, 'default_image.jpg', 1, '2018-11-23 14:28:25', '$2y$10$0JhBMBK.8b/a8XZIkKpqwOLjf12/J6HH20ndAqsfil8S13izxGWRq'),
(119, 'Paulo Thiago Loja', '625.122.370-79', 'pedron_1997@hotmail.com', '(61) 99114-1679', '0.00', 1, 'default_image.jpg', 1, '2018-11-23 14:33:22', '$2y$10$3U//GziWDeZFGPYgogp3U.wF0BpNoonjfm01.KNZ8HdfbwATMI/0K');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`usuarios_id`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`usuarios_id`);

--
-- Indexes for table `estabelecimentos`
--
ALTER TABLE `estabelecimentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loja`
--
ALTER TABLE `loja`
  ADD PRIMARY KEY (`usuarios_id`,`cnpj`),
  ADD KEY `fk_loja_estabelecimentos1_idx` (`estabelecimentos_id`),
  ADD KEY `fk_loja_usuarios1_idx` (`usuarios_id`);

--
-- Indexes for table `promocoes`
--
ALTER TABLE `promocoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_promocoes_usuarios1_idx` (`usuarios_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tokens_usuarios1_idx` (`usuarios_id`);

--
-- Indexes for table `transacoes`
--
ALTER TABLE `transacoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `estabelecimentos`
--
ALTER TABLE `estabelecimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `promocoes`
--
ALTER TABLE `promocoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `transacoes`
--
ALTER TABLE `transacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `banco`
--
ALTER TABLE `banco`
  ADD CONSTRAINT `fk_banco_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `fk_endereco_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `loja`
--
ALTER TABLE `loja`
  ADD CONSTRAINT `fk_loja_estabelecimentos1` FOREIGN KEY (`estabelecimentos_id`) REFERENCES `estabelecimentos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_loja_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `promocoes`
--
ALTER TABLE `promocoes`
  ADD CONSTRAINT `fk_promocoes_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `fk_tokens_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
