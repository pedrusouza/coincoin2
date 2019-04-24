-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 20/04/2019 às 22:51
-- Versão do servidor: 10.1.37-MariaDB
-- Versão do PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `engne598_coincoin`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
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
-- Fazendo dump de dados para tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `telefone`, `saldo`, `verificado`, `imagem`, `privilegio`, `create`, `hash`) VALUES
(1, 'Phelipe Resende', '103.463.536-02', 'phelipeuni@gmail.com', '(12) 22222-2222', '1000.00', 1, 'default_image.jpg', 2, '2018-02-21 03:11:45', '$2y$10$GT6S8.FEOfrJZIgR2SHE1OBOzQkdDVOtjaIWKJ48S3DmirCw8bM56'),
(2, 'Tales', '064.927.791-00', 'adr.tales@gmail.com', '(12) 22222-2222', '77.00', 1, 'img-1543874984.png', 2, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(3, 'Pt', '377.135.816-77', 'pt@gmail.com', '(12) 3422-3211', '0.00', 0, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(4, 'Paulo', '018.894.061-80', 'euzinho@gmail.com', '(12) 6666-3211', '2081.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(6, 'Bonecao Da UnB', '831.513.434-57', 'mlkloko@gmail.com', '(12) 6636-3211', '979.00', 1, 'img-1539866741.png', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(7, 'Edson Pai Minstsu', '241.211.249-52', 'pactocomodiabo@gmail.com', '(12) 6667-3211', '666.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(9, 'Concentro', '695.952.359-11', 'cnacasf@gmail.com', '(12) 6212-3211', '0.00', 0, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(10, 'Brasil Junior', '361.153.454-48', 'bjbj@gmail.com', '(12) 6212-1231', '1131.00', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(11, 'Engnet', '431.166.382-09', 'engnet@gmail.com', '(12) 7212-1231', '63763.00', 1, 'img-1543874694.png', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(12, 'Nao Tenho Ideia De Nome', '356.978.546-76', 'seila@gmail.com', '(12) 7234-1231', '501.00', 1, 'img-1542913914.png', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(13, 'Cafe', '576.143.622-17', 'cafe@gmail.com', '(12) 7211-1231', '127.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(14, 'Quero Cafe', '216.395.445-50', 'quecafe@gmail.com', '(12) 7211-1221', '18.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(17, 'Proerd', '844.884.156-52', 'aquiepulica@gmail.com', '(12) 3511-1229', '0.00', 0, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(18, 'Irineu', '963.733.382-74', 'irineuzera@gmail.com', '(12) 3516-1229', '450.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(19, 'Vc Nao Sabe', '430.602.863-10', 'vcnsb@gmail.com', '(12) 3516-1759', '0.00', 0, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(20, 'Nem Eu', '848.343.956-50', 'nemeu@gmail.com', '(12) 3516-1759', '98.17', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(21, 'Nao Tinha Medo', '092.435.365-16', 'ntmedo@gmail.com', '(61) 3517-1759', '100.72', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(22, 'O Tal Joao', '981.881.566-12', 'taljoao@gmail.com', '(61) 3007-1759', '70.93', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(23, 'De Santo Cristo', '543.548.285-29', 'dscristo@gmail.com', '(61) 3012-1759', '45.00', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(24, 'Era O Que', '073.271.082-03', 'eroque@gmail.com', '(61) 3012-1119', '45.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(25, 'Todos Diziam', '369.961.437-99', 'todosdiziam@gmail.com', '(61) 3332-1119', '4125.00', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(27, 'Se Perdeu', '990.573.442-20', 'seperdeu@gmail.com', '(61) 3532-1221', '12.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(30, 'Da Fazenda', '778.764.449-46', 'deladafazenda@gmail.com', '(61) 4556-1221', '1230.00', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(31, 'So Pra Sentir', '743.307.085-07', 'sentirmesmo@gmail.com', '(61) 3457-1759', '130.40', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(32, 'No Seu Sangue', '386.596.626-87', 'lanosangue@gmail.com', '(61) 3027-1759', '70.93', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(34, 'Jesus', '576.813.124-80', 'painho@gmail.com', '(61) 3892-1119', '89.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(38, 'Dezenove', '161.572.717-52', 'uhuuu@gmail.com', '(61) 4578-1221', '10.00', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(41, 'Resolvi Continuar', '657.156.627-37', 'boraporra@gmail.com', '(61) 3127-1759', '10.40', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(42, 'Do It', '715.535.493-76', 'ni@gmail.com', '(61) 9927-1759', '9999.93', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(43, 'Just Do It', '497.459.399-43', 'ke@gmail.com', '(61) 9927-1790', '999.93', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(45, 'James Bond', '747.794.062-18', 'bondinho@gmail.com', '(61) 9989-4690', '4.15', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(46, 'Falta Pouco', '239.531.782-96', 'quaseporraaa@gmail.com', '(61) 6789-4690', '1234.56', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(47, 'Muito Pouco', '756.703.865-07', 'tamoindo@gmail.com', '(61) 9679-4690', '234.56', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(50, 'João Vítor', '007.926.641-08', 'queirozbragajv@@gmail.com', '(61) 9319-6494', '77.77', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(51, 'Amanda Linda', '062.207.760-03', 'amanda@gmail.com', '(61) 7777-1919', '77.71', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(53, 'Gustavo Mano', '283.301.560-79', 'mitogus@gmail.com', '(61) 2222-2222', '47.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(57, 'Manuela Garrincha', '118.051.950-77', 'manugrr@gmail.com', '(61) 9687-4444', '33.73', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(58, 'Carlos Júnior', '973.280.660-59', 'carlosjr@gmail.com', '(61) 9687-5555', '17.87', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(62, 'Star Wars', '874.888.780-35', 'eusouseupai@gmail.com', '(61) 4545-5454', '54.45', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(63, 'Star Trek', '069.814.070-27', 'starwarsemelhor@gmail.com', '(61) 9682-7452', '7.73', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(64, 'Game Over', '998.499.720-09', 'deuruim@gmail.com', '(61) 9687-4791', '66.57', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(65, 'Mortal Kombat', '878.237.690-50', 'katana@gmail.com', '(61) 2020-2020', '77.20', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(66, 'Cristiano Ronaldo', '564.537.080-51', 'cr7mito@gmail.com', '(61) 2121-2222', '22.45', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(67, 'Lionel Messi', '401.507.670-21', 'messimito@gmail.com', '(61) 9687-4689', '555.55', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(68, 'Neymar Júnior', '188.924.880-07', 'neymito@gmail.com', '(61) 4545-4545', '48.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(70, 'Gino e Geno', '921.715.940-98', 'sertanejoraiz@gmail.com', '(61) 8684-4690', '22.46', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(72, 'Phelipe Coutinho', '518.478.100-55', '14barca@gmail.com', '(61) 1414-1414', '14.41', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(74, 'Game of Thrones', '945.728.570-08', 'vaijoaodasneves@gmail.com', '(61) 9696-6969', '69.96', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(75, 'Marcos', '407.580.600-68', 'socram@gmail.com', '(61) 9687-7865', '77.20', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
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
(89, 'Blastoise', '290.776.120-09', 'agua3@gmail.com', '(61) 4041-4690', '31.12', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(90, 'Squirtle', '287.578.150-20', 'agua1@gmail.com', '(61) 4243-4690', '74.53', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(92, 'Naruto Usumaki', '802.191.670-28', 'ninja@gmail.com', '(61) 4647-5090', '11.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(93, 'Sasuke Uchira', '868.603.260-50', 'ninja2@gmail.com', '(61) 7212-4690', '12.73', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(94, 'Sakura', '084.098.620-34', 'ninja3@gmail.com', '(61) 9687-0202', '13.73', 1, 'default_image.jpg', 1, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(95, 'Timão e Pumba', '307.830.660-74', 'hakunamatata@gmail.com', '(61) 9687-0303', '14.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(96, 'Jenoflexos', '439.750.480-69', 'dejoelhos@gmail.com', '(61) 9687-0404', '161.73', 1, 'default_image.jpg', 0, '2018-02-21 03:11:45', '$2y$10$So42FM6LdPfTe9aExfvCg.gr1z7l1F1a2JGXSf9BWHs75s0UBOdCe'),
(101, 'Carlton Banks', '613.916.720-54', 'tata-blu@hotmail.com', '(61) 99945-8004', '900.00', 1, 'default_image.jpg', 1, '2018-08-28 13:46:24', '$2y$10$ZOfzwGgZ0nTYGvBwyC1wBeXW4eNWgF75Zw1E5TDU0Rt0.2fmF7uqC'),
(102, 'Mateus', '057.989.091-07', 'mateuspedrosa38@gmail.com', '(61) 98347-9282', '0.00', 1, 'default_image.jpg', 0, '2018-08-29 19:44:04', '$2y$10$InnbJoFvdvIS1qrbpdH7m.D8ncTNM.vSv5TIduNdRMmcPvtYNRd/q'),
(103, 'Moises', '451.683.853-20', 'moises_silva98@hotmail.com', '(61) 99695-2783', '0.00', 0, 'default_image.jpg', 0, '2018-08-29 19:52:48', '$2y$10$qeR95XRnaoKHp6x/sdZNKe9A7egvGAYyIafj6Oq39TIevUsqBbsKa'),
(104, 'Ellis', '379.618.451-00', 'matias-mateus520@hotmail.com', '(61) 98347-9282', '0.00', 1, 'default_image.jpg', 0, '2018-08-29 20:08:25', '$2y$10$Rg//n4RtJCq9bwms8XX3aO03zldhEdrIvbjjmwxq8TmJQ2k7KgcWa'),
(105, 'Moises', '065.390.461-46', 'moisesssousa98@gmail.com', '(61) 99695-2783', '0.00', 1, 'default_image.jpg', 0, '2018-08-31 14:02:55', '$2y$10$MR9Uxi2OMENqe6YsXBt9eOukfSdXEKnUKjAPGkCqQiYLeJYgQcp4S'),
(106, 'Matheus Pedroaa', '177.305.741-36', 'mateus.pedrosa@engnetconsultoria.com.br', '(61) 98347-9282', '0.00', 1, 'default_image.jpg', 1, '2018-09-03 04:06:33', '$2y$10$qy.Ezyp7qgW0ErXwSxhhj.SEb1o9KDowjGFgzlfwgtmMo/0mbEii.'),
(107, 'Carlinhos Caraiba', '072.237.580-82', 'barrettotales@gmail.com', '(61) 99544-4444', '0.00', 0, 'default_image.jpg', 1, '2018-09-05 01:37:27', '$2y$10$vfoKTXd.8Yc7X5Uxv7SrLORBJtrR3lrlAwnIFg4xtzd8fjc/uIiLS'),
(110, 'Luís Fernando Shigueki Araki', '012.991.161-59', 'araki.luis@gmail.com', '(61) 3341-1372', '0.00', 0, 'default_image.jpg', 0, '2018-09-21 18:53:58', '$2y$10$WIfZoZXQ0wWtyUV8PDjcR.uziVbqqBMVjqOiqnq3dTrHlXRXC4PNi'),
(111, 'Heitor Magalhães Vieira', '052.045.031-02', 'heitor.vieira@engnetconsultoria.com.br', '(61) 99991-3175', '0.00', 1, 'img-1540414435.png', 0, '2018-10-19 16:07:59', '$2y$10$Xo02U2oU9BQYPxHfQRVqCuMCt1z86h1Zff1JgpomJWnf2w3WAWX/C'),
(112, 'Henrique Vasconcelos ', '042.708.491-18', 'henrique.oliveira@engnetconsultoria.com.br', '(61) 99810-1273', '0.00', 1, 'img-1541495411.png', 0, '2018-10-19 16:59:29', '$2y$10$fvZNhvbYVbWmYdXLpr9BVO57mMFp7c3JfKgJTOWpRmFQxonqFH286'),
(113, 'Jethro', '051.700.247-70', 'jetbezerra@gmail.com', '(61) 98301-8859', '1200.00', 1, 'default_image.jpg', 0, '2018-10-27 14:37:23', '$2y$10$gv0Um4mzeOnEugu8kohPzOdkH6iGB.ha3bKwK5WdeZOrTu6FRl2q.'),
(114, 'Cezar', '901.909.391-68', 'administrador@admcoincoin.com', '(62) 99844-1122', '0.00', 1, 'default_image.jpg', 1, '2018-10-27 14:56:02', '$2y$10$7AyaJ5aDpv271ot7nOXkYuww9lllGPSmz.VvL0WyVeS3yT8nvOeLi'),
(115, 'Diretor De Projetos', '149.487.430-03', 'projetos@engnetconsultoria.com.br', '(61) 99114-1679', '0.00', 1, 'default_image.jpg', 0, '2018-11-06 13:40:06', '$2y$10$93.Kzjxqg3MD.GLplslK5umvM/PU581/EVnjZqp/ybv5K7w2aivCO'),
(116, 'Paulo', '254.624.230-04', 'paulo.thiago.98@gmail.com', '(61) 99114-1679', '0.00', 0, 'default_image.jpg', 1, '2018-11-12 21:26:18', '$2y$10$fgGVEo3jXrvqCy4tv8vIQua8jGGiX8glk7CvbxOa8qlTEd8F1gfEi'),
(117, 'Paulo Boa', '141.625.820-50', 'paulo.mascarenhas@engnetconsultoria.com.br', '(61) 99114-1679', '0.00', 1, 'default_image.jpg', 1, '2018-11-23 14:17:02', '$2y$10$PB9hcILsfc68aQsorcoMMuQmjg1ZwsHonNyme4YHF3DqV.cS2VELa'),
(118, 'Paulo Thiago', '084.829.460-21', 'pedron@hotmail.com', '(61) 99114-1679', '0.00', 0, 'default_image.jpg', 1, '2018-11-23 14:28:25', '$2y$10$0JhBMBK.8b/a8XZIkKpqwOLjf12/J6HH20ndAqsfil8S13izxGWRq'),
(119, 'Paulo Thiago Loja', '625.122.370-79', 'pedron_1997@hotmail.com', '(61) 99114-1679', '0.00', 1, 'default_image.jpg', 1, '2018-11-23 14:33:22', '$2y$10$3U//GziWDeZFGPYgogp3U.wF0BpNoonjfm01.KNZ8HdfbwATMI/0K');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
